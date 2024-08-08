// FAST Detector Kernel for Siracusa Runtime

#include "pmsis.h"
#include "stimuli.h"
#include <stdint.h>
#include <stdlib.h>

#define NUM_CORES 8
#define CHUNK  SIZE/NUM_CORES

// Global Variables
PI_L2 uint8_t image[SIZE][SIZE];
PI_L2 uint8_t feature[SIZE][SIZE];

// Global Parameters
uint8_t threshold = 20;
// Access through single index
static const int8_t circle_x[16] = {0, 1, 2, 3, 3, 3, 2, 1, 0, -1, -2, -3, -3, -3, -2, -1};
static const int8_t circle_y[16] = {3, 3, 2, 1, 0, -1, -2, -3, -3, -3, -2, -1, 0, 1, 2, 3};

// Function to Read Image from Memory
void init_image_feature()
{
    for (int i = 0; i < SIZE; i++)
    {
        for (int j = 0; j < SIZE; j++)
        {
            image[i][j] = Image_L2[i*SIZE + j];
            feature[i][j] = 0;
        }
    }
}

void perf_print_all_fixed() {
  printf("Perf CYCLES: %d\n\r",      pi_perf_read(PI_PERF_CYCLES)); // Number of cycles
  printf("Perf INSTR: %d\n\r",       pi_perf_read(1)); // Number of executed instructions (including compressed ones)
  printf("Perf CINSTR: %d\n\r",      pi_perf_read(10));// Number of compressed instructions
  printf("Perf LD_STALL: %d\n\r",    pi_perf_read(2)); // Number of load use data hazards. Not the same as bank conflict (see Contention metric)
  printf("Perf JR_STALL: %d\n\r",    pi_perf_read(3)); // Number of jump register hazards
  printf("Perf IMISS: %d\n\r",       pi_perf_read(4)); // Number of additional cycles waiting for instruction fetch (i.e. 2 could mean one i-miss where we had to wait for 2 cycles of 2 misses where we had to wait for 1 cycle each)
  printf("Perf LD: %d\n\r",          pi_perf_read(5)); // Number of load instructions (incl. L2 access)
  printf("Perf ST: %d\n\r",          pi_perf_read(6)); // Number of store instructions
  printf("Perf JUMP: %d\n\r",        pi_perf_read(7)); // Number of unconditional jumps
  printf("Perf BRANCH: %d\n\r",      pi_perf_read(8)); // Number of branche instructions
  printf("Perf BTAKEN: %d\n\r",      pi_perf_read(9)); // Number of branches taken
  if (!hal_is_fc()) {
    printf("Perf Cluster Sync. CYC: %d\n\r", pi_perf_read(11)); // Number cycles waiting on cluster sync primitive
    printf("Perf L2 LD EXT: %d\n\r",      pi_perf_read(12)); // Number of load instructions targeting L2 memory
    printf("Perf L2 ST EXT: %d\n\r",      pi_perf_read(13)); // Number of store instructions targeting L2 memory
    printf("Perf L2 LD EXT CYC: %d\n\r",  pi_perf_read(14)); // Number of cycles spent for loading from L2 memory
    printf("Perf L2 ST EXT CYC: %d\n\r",  pi_perf_read(15)); // Number of cycles spent for storing to L2 memory
    printf("Perf L1 CONT CYC: %d\n\r",  pi_perf_read(16)); // Number of cycles spent due L1 bank conflicts
    printf("Perf FPU Type conflict CYC: %d\n\r",  pi_perf_read(17)); // Number of type FPU conflict stalls (operations with smaller latency cannot be queued behind operations with larger latency).
    printf("Perf FPU CONT CYC : %d\n\r",  pi_perf_read(18)); // Number of cycles spent due to FPU contention
    printf("Perf FPU WB CONT CYC : %d\n\r",  pi_perf_read(18)); // Number of cycles spent due to FPU Write back contention
  }
}

#define PERF_START_ON_CLUSTER \
  if(pi_core_id() == 7) {     \
    pi_perf_conf(0x7FFFFFFF);\
    pi_perf_reset();\
    pi_perf_start();\
  }

#define PERF_STOP_ON_CLUSTER \
  if(pi_core_id() == 7) {            \
    pi_perf_stop(); \
  }

// Function Port from C Baseline
int is_feature_9_16_basic(uint8_t pixels[SIZE][SIZE], int x, int y, uint8_t threshold) {

    // Total Points in the Circle
    int points = 16;
    // Counter for continuous pixels
    int b_counter = 0;
    int d_counter = 0;
    int counter_threshold = 9;

    // Coordinates of the circle around the pixel
    int circle[16][2] = {{0, 3}, {1, 3}, {2, 2}, {3, 1}, {3, 0}, {3, -1}, {2, -2}, {1, -3}, {0, -3}, {-1, -3}, {-2, -2}, {-3, -1}, {-3, 0}, {-3, 1}, {-2, 2}, {-1, 3}};

    // Intensity of the central pixel
    int intensity = pixels[y][x];

    // Check each pixel in the circle
    for (int i = 0; i < points; i++) {
        int nx = x + circle[i][0];
        int ny = y + circle[i][1];

        // Skip if the pixel is outside the image
        if (nx < 0 || nx >= SIZE || ny < 0 || ny >= SIZE) {
            continue;
        }

        // Check if the pixel is brighter or darker than the central pixel by the threshold
        if (pixels[ny][nx] > intensity + threshold) {
            b_counter++;
            d_counter = 0;
            if (b_counter == counter_threshold) {
                return 1;
            }
        }
        else if (pixels[ny][nx] < intensity - threshold) {
            d_counter++;
            b_counter = 0;
            if (d_counter == counter_threshold) {
                return 1;
            }
        }
        else {
            d_counter = 0;
            b_counter = 0;
        }
    }

    return 0;
}

// Function to detect FAST features in the image
uint8_t is_feature_9_16_pattern(uint8_t y, uint8_t x) {    

    // Bit pattern for brighter and darker pixels
    uint16_t b_pattern = 0;

    // Intensity of the central pixel
    uint8_t intensity = image[y][x];

    // Check each pixel in the circle
    for (uint8_t i = 0; i < 16; i=i+4) {
      uint8_t nx_1 = x + circle_x[i];
      uint8_t ny_1 = y + circle_y[i];

      uint8_t nx_2 = x + circle_x[i+1];
      uint8_t ny_2 = y + circle_y[i+1];

      uint8_t nx_3 = x + circle_x[i+2];
      uint8_t ny_3 = y + circle_y[i+2];

      uint8_t nx_4 = x + circle_x[i+3];
      uint8_t ny_4 = y + circle_y[i+3];

      uint16_t abs_difference_1 = abs((int)image[ny_1][nx_1] - intensity);
      uint16_t abs_difference_2 = abs((int) image[ny_2][nx_2] - intensity);
      uint16_t abs_difference_3 = abs((int) image[ny_3][nx_3] - intensity);
      uint16_t abs_difference_4 = abs((int) image[ny_4][nx_4] - intensity);

      b_pattern = b_pattern << 1 | (abs_difference_1 > threshold);
      b_pattern = b_pattern << 1 | (abs_difference_2 > threshold);
      b_pattern = b_pattern << 1 | (abs_difference_3 > threshold);
      b_pattern = b_pattern << 1 | (abs_difference_4 > threshold);
    }
    // Create a mask for 9 continuous bits
    uint16_t mask = (1 << 9) - 1;

    // Check if any 9 consecutive bits in the patterns are all 1
    for (uint8_t i = 0; i < 8; i=i+4) {
        if (((b_pattern & (mask << i)) == (mask << i))) {
            return 1;
        }
        if (((b_pattern & (mask << i+1)) == (mask << i+1))) {
            return 1;
        }
        if (((b_pattern & (mask << i+2)) == (mask << i+2))) {
            return 1;
        }
        if (((b_pattern & (mask << i+3)) == (mask << i+3))) {
            return 1;
        }
    }

    return 0;
}

// Function to detect FAST features in the image
uint8_t is_feature_9_16_counter(uint8_t y, uint8_t x) {    

    // Bit pattern for brighter and darker pixels
    uint8_t counter = 0;

    // Intensity of the central pixel
    uint8_t intensity = image[y][x];

    // Check each pixel in the circle
    for (uint8_t i = 0; i < 16; i=i+4) {
      uint8_t nx_1 = x + circle_x[i];
      uint8_t ny_1 = y + circle_y[i];

      uint8_t nx_2 = x + circle_x[i+1];
      uint8_t ny_2 = y + circle_y[i+1];

      uint8_t nx_3 = x + circle_x[i+2];
      uint8_t ny_3 = y + circle_y[i+2];

      uint8_t nx_4 = x + circle_x[i+3];
      uint8_t ny_4 = y + circle_y[i+3];

      uint16_t abs_difference_1 = abs((int)image[ny_1][nx_1] - intensity);
      uint16_t abs_difference_2 = abs((int) image[ny_2][nx_2] - intensity);
      uint16_t abs_difference_3 = abs((int) image[ny_3][nx_3] - intensity);
      uint16_t abs_difference_4 = abs((int) image[ny_4][nx_4] - intensity);
      
      counter = (abs_difference_1 > threshold) ? counter+1 : 0;
      if (counter == 9) return 1;
      counter = (abs_difference_2 > threshold) ? counter+1 : 0;
      if (counter == 9) return 1;
      counter = (abs_difference_3 > threshold) ? counter+1 : 0;
      if (counter == 9) return 1;
      counter = (abs_difference_4 > threshold) ? counter+1 : 0;
      if (counter == 9) return 1;
    }

    return 0;
}

uint8_t is_feature_9_16_simd(uint8_t y, uint8_t x) {

    // Bit pattern for brighter and darker  
    uint16_t b_pattern = 0;

    // Intensity of the central pixel
    uint8_t intensity = image[y][x];
    v2s intensity_vec = __PACK2(intensity, intensity);

    v4s x_vec = __PACK4(x, x, x, x);
    v4s y_vec = __PACK4(y, y, y, y);

    v4s* circle_x_ptr = (v4s*)circle_x;
    v4s* circle_y_ptr = (v4s*)circle_y;

    v2s result;
    v2s result_vec;

    // Process 16 pixels in 4 iterations
    for (uint8_t i = 0; i < 16; i += 4) {
        
        // Load circle offsets
        v4s circle_x = *circle_x_ptr++;
        v4s circle_y = *circle_y_ptr++;

        // Calculate neighboring pixel coordinates
        v4s nx = __ADD4((x_vec), (circle_x));
        v4s ny = __ADD4((y_vec), (circle_y));

        // Calculate indices for 4 neighboring pixels

        // Load 4 neighboring pixels
        uint8_t * idx_1 = Image_L2 + ny[0]*SIZE + nx[0];
        uint8_t * idx_2 = Image_L2 + ny[1]*SIZE + nx[1];
        uint8_t * idx_3 = Image_L2 + ny[2]*SIZE + nx[2];
        uint8_t * idx_4 = Image_L2 + ny[3]*SIZE + nx[3];

        v2s pixels_a = __PACK2(*idx_1, *idx_2);
        v2s pixels_b = __PACK2(*idx_3, *idx_4);


        // Calculate Absolute Difference with the central pixel
        v2s abs_difference_a = __ABS2(__SUB2(pixels_a, intensity_vec));
        v2s abs_difference_b = __ABS2(__SUB2(pixels_b, intensity_vec));

        asm volatile ("pv.cmpgt.sc.h %0, %1, %2\n"
                      : "=r" (result)
                      : "r" (abs_difference_a), "r" (threshold));
        result_vec = __PACK2(result[0]&1, result[1]&1);

        b_pattern = (b_pattern << 1) | (result_vec[0]);
        b_pattern = (b_pattern << 1) | (result_vec[1]);

        asm volatile ("pv.cmpgt.sc.h %0, %1, %2\n"
                      : "=r" (result)
                      : "r" (abs_difference_b), "r" (threshold));
        result_vec = __PACK2(result[0]&1, result[1]&1);

        b_pattern = (b_pattern << 1) | (result_vec[0]);
        b_pattern = (b_pattern << 1) | (result_vec[1]);
        
    }

    // v4u b_pattern_vec;
    // b_pattern_vec[0] = (uint8_t)((b_pattern >> 12) & 0xF); // Get the first 4 bits
    // b_pattern_vec[1] = (uint8_t)((b_pattern >> 8) & 0xF); // Get the next 4 bits
    // b_pattern_vec[2] = (uint8_t)((b_pattern >> 4) & 0xF); // Get the next 4 bits
    // b_pattern_vec[3] = (uint8_t)(b_pattern & 0xF); // Get the last 4 bits

    // uint8_t mask_4 = 15;
    // v4u early_exit;

    // asm volatile ("pv.cmpeq.sc.b %0, %1, %2\n"
    //                   : "=r" (early_exit)
    //                   : "r" (b_pattern_vec), "r" (mask_4));

    // int total_set_bits = 0;
    // for(int i = 0; i < 4; i++) {
    //   total_set_bits += __builtin_popcount(early_exit[i]);
    // }
    // if (likely(total_set_bits < 8)) {
    //      return 0;
    // }
    
    // // Do mask comparison with sliding window 
    // for (uint8_t i = 0; i < 8; i++) {
    //     if (((b_pattern & (mask_9 << i)) == (mask_9 << i))) {
    //         return 1;
    //     }
    // }
    
    uint16_t mask_9 = (1 << 9) - 1; 
    // Check if any 9 consecutive bits in the patterns are all 1
    for (uint8_t i = 0; i < 8; i=i+4) {
        if (((b_pattern & (mask_9 << i)) == (mask_9 << i))) {
            return 1;
        }
        if (((b_pattern & (mask_9 << i+1)) == (mask_9 << i+1))) {
            return 1;
        }
        if (((b_pattern & (mask_9 << i+2)) == (mask_9 << i+2))) {
            return 1;
        }
        if (((b_pattern & (mask_9 << i+3)) == (mask_9 << i+3))) {
            return 1;
        }
    }

    return 0;
}

// Function to detect FAST features in the image
uint8_t is_feature_9_16_optimized(uint8_t y, uint8_t x) {    

    // Bit pattern for brighter and darker  
    uint16_t b_pattern = 0;

    // Intensity of the central pixel
    uint8_t intensity = image[y][x];
    v2s intensity_vec = __PACK2(intensity, intensity);

    v4s x_vec = __PACK4(x, x, x, x);
    v4s y_vec = __PACK4(y, y, y, y);

    v4s* circle_x_ptr = (v4s*)circle_x;
    v4s* circle_y_ptr = (v4s*)circle_y;

    // Check each pixel in the circle
    for (uint8_t i = 0; i < 16; i=i+4) {
      
      // Load circle offsets
        v4s circle_x = *circle_x_ptr++;
        v4s circle_y = *circle_y_ptr++;

        // Calculate neighboring pixel coordinates
        v4s nx = __ADD4((x_vec), (circle_x));
        v4s ny = __ADD4((y_vec), (circle_y));

        // Calculate indices for 4 neighboring pixels

        // Load 4 neighboring pixels
        uint8_t * idx_1 = Image_L2 + ny[0]*SIZE + nx[0];
        uint8_t * idx_2 = Image_L2 + ny[1]*SIZE + nx[1];
        uint8_t * idx_3 = Image_L2 + ny[2]*SIZE + nx[2];
        uint8_t * idx_4 = Image_L2 + ny[3]*SIZE + nx[3];

        v2s pixels_a = __PACK2(*idx_1, *idx_2);
        v2s pixels_b = __PACK2(*idx_3, *idx_4);


        // Calculate Absolute Difference with the central pixel
        v2s abs_difference_a = __ABS2(__SUB2(pixels_a, intensity_vec));
        v2s abs_difference_b = __ABS2(__SUB2(pixels_b, intensity_vec));

        b_pattern = b_pattern << 1 | (abs_difference_a[0] > threshold);
        b_pattern = b_pattern << 1 | (abs_difference_a[1] > threshold);
        b_pattern = b_pattern << 1 | (abs_difference_b[2] > threshold);
        b_pattern = b_pattern << 1 | (abs_difference_b[3] > threshold);
    }
    // Create a mask for 9 continuous bits
    uint16_t mask = (1 << 9) - 1;

    // Check if any 9 consecutive bits in the patterns are all 1
    for (uint8_t i = 0; i < 8; i=i+4) {
        if (((b_pattern & (mask << i)) == (mask << i))) {
            return 1;
        }
        if (((b_pattern & (mask << i+1)) == (mask << i+1))) {
            return 1;
        }
        if (((b_pattern & (mask << i+2)) == (mask << i+2))) {
            return 1;
        }
        if (((b_pattern & (mask << i+3)) == (mask << i+3))) {
            return 1;
        }
    }

    return 0;
}

void fast_benchmark_singlecore() {
  for (uint8_t y = 3; y < SIZE-3; y++) {
    for (uint8_t x = 3; x < SIZE-3; x++) {
        feature[y][x] = is_feature_9_16_optimized(y, x);
        // feature[y][x] = is_feature_9_16_basic(image, x, y, threshold);
        }
    }
}

void fast_benchmark_multicore() {

  int core_id = pi_core_id();
  
  uint8_t start = (core_id==0) ? 3 : core_id * CHUNK;
  uint8_t end = (core_id==NUM_CORES-1) ? SIZE-3 : core_id*CHUNK + CHUNK;
  
  uint8_t start_x = (core_id==0) ? 3 : 0;
  uint8_t end_x = (core_id==NUM_CORES-1) ? SIZE-3 : SIZE;

  // Seperate Chunks of Images for Feature Detector
  PERF_START_ON_CLUSTER
  for (uint8_t y = start; y < end; y++) {
    for (uint8_t x = start_x; x < end_x; x++) {
        feature[y][x] = is_feature_9_16_optimized(y, x);
      }
    }
  PERF_STOP_ON_CLUSTER
  if(core_id == 7){
    uint32_t instr_cnt = pi_perf_read(PI_PERF_INSTR);
    uint32_t cycles_cnt = pi_perf_read(PI_PERF_CYCLES);
    printf("Perf CYCLES: %d\n\r", cycles_cnt);
    printf("Perf INSTR: %d\n\r", instr_cnt);
    printf("CPI: %f\n", (float) cycles_cnt/instr_cnt);
  }
}

void run_benchmark_on_fc(char* name, void (*benchmark_func)()) {
  printf("Benchmarking function %s\n\r", name);
  // Start timer on fabric controller
  pi_perf_conf(0x7FFFFFFF);
  // Reset and start FC's performance counters
  pi_perf_reset();
  pi_perf_start();
  // Run the actual benchmark
  benchmark_func();
  // Stop timer and print wallclock time
  pi_perf_stop();
  uint32_t instr_cnt = pi_perf_read(PI_PERF_INSTR);
  uint32_t cycles_cnt = pi_perf_read(PI_PERF_CYCLES);
  perf_print_all_fixed();

  printf("CPI: %f\n", (float) cycles_cnt/instr_cnt);
}

void cluster_entry(void (*arg))
{
    pi_cl_team_fork((NUM_CORES), fast_benchmark_multicore, 0);
}

int run_benchmark_on_cluster(char* name, void (*benchmark_func)) {
  
  printf("Benchmarking function %s\n\r", name);

  struct pi_device cluster_dev;
  struct pi_cluster_conf cl_conf;
  struct pi_cluster_task cl_task;

  pi_cluster_conf_init(&cl_conf);
  pi_open_from_conf(&cluster_dev, &cl_conf);
  if (pi_cluster_open(&cluster_dev))
  {
    return -1;
  }
  
  pi_cluster_send_task_to_cl(&cluster_dev, pi_cluster_task(&cl_task, cluster_entry, NULL));

  pi_cluster_close(&cluster_dev);
}


int main() {
  if (pi_cluster_id() != 0){
    init_image_feature();
    printf("Starting Benchmarks...\n\r");
    // Benchmark single core variant
    // run_benchmark_on_fc("singlecore", fast_benchmark_singlecore);
    // Benchmark multicore variant 
    run_benchmark_on_cluster("multicore", fast_benchmark_multicore);
    return 0;
  }
}
