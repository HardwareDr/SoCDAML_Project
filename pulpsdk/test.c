// FAST Detector Kernel for Siracusa Runtime

#include "pmsis.h"
#include "stimuli.h"
#include <stdint.h>

#define NUM_CORES 8
#define CHUNK  SIZE/NUM_CORES

// Global Variables
PI_L2 uint8_t image[SIZE][SIZE];
PI_L2 uint8_t feature[SIZE][SIZE];

// Global Parameters
uint8_t threshold = 20;
static const int circle[16][2] = {{0, 3}, {1, 3}, {2, 2}, {3, 1}, {3, 0}, {3, -1}, {2, -2}, {1, -3}, {0, -3}, {-1, -3}, {-2, -2}, {-3, -1}, {-3, 0}, {-3, 1}, {-2, 2}, {-1, 3}};

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

// Function to detect FAST features in the image
uint8_t is_feature_9_16(uint8_t y, uint8_t x) {    

    // Bit pattern for brighter and darker pixels
    uint16_t b_pattern = 0;
    uint16_t d_pattern = 0;

    // Intensity of the central pixel
    uint8_t intensity = image[y][x];

    int16_t high = intensity + threshold;
    int16_t low = intensity - threshold;

    // Check each pixel in the circle
    for (uint8_t i = 0; i < 16; i=i+4) {
      uint8_t nx_1 = x + circle[i][0];
      uint8_t ny_1 = y + circle[i][1];

      uint8_t nx_2 = x + circle[i+1][0];
      uint8_t ny_2 = y + circle[i+1][1];

      uint8_t nx_3 = x + circle[i+2][0];
      uint8_t ny_3 = y + circle[i+2][1];

      uint8_t nx_4 = x + circle[i+3][0];
      uint8_t ny_4 = y + circle[i+3][1];


      b_pattern = (b_pattern << 1) | (image[ny_1][nx_1] > high);
      d_pattern = (d_pattern << 1) | (image[ny_1][nx_1] < low);

      b_pattern = (b_pattern << 1) | (image[ny_2][nx_2] > high);
      d_pattern = (d_pattern << 1) | (image[ny_2][nx_2] < low);

      b_pattern = (b_pattern << 1) | (image[ny_3][nx_3] > high);
      d_pattern = (d_pattern << 1) | (image[ny_3][nx_3] < low);

      b_pattern = (b_pattern << 1) | (image[ny_4][nx_4] > high);
      d_pattern = (d_pattern << 1) | (image[ny_4][nx_4] < low);
    }
    // Create a mask for 9 continuous bits
    uint16_t mask = (1 << 9) - 1;

    // Check if any 9 consecutive bits in the patterns are all 1
    for (uint8_t i = 0; i < 8; i++) {
        if (((b_pattern & (mask << i)) == (mask << i)) || ((d_pattern & (mask << i)) == (mask << i))) {
            return 1;
        }
    }

    return 0;
}

uint8_t is_feature_9_16_simd(uint8_t y, uint8_t x) {

    // Bit pattern for brighter and darker pixels
    uint16_t b_pattern = 0;
    uint16_t d_pattern = 0;

    // Intensity of the central pixel
    uint8_t intensity = image[y][x];

    int16_t high = intensity + threshold;
    int16_t low = intensity - threshold;

    v4s x_vec = {x, x, x, x};
    v4s y_vec = {y, y, y, y};

    // Process 16 pixels in 4 iterations
    for (uint8_t i = 0; i < 16; i += 4) {
        // Load circle offsets
        v4s circle_x = {circle[i][0], circle[i+1][0], circle[i+2][0], circle[i+3][0]};
        v4s circle_y = {circle[i][1], circle[i+1][1], circle[i+2][1], circle[i+3][1]};

        // Calculate neighboring pixel coordinates
        v4s nx = __ADD4((x_vec), (circle_x));
        v4s ny = __ADD4((y_vec), (circle_y));

        // Load 4 neighboring pixels
        v2s pixels_a = {
            image[ny[0]][nx[0]],
            image[ny[1]][nx[1]]};
        
        v2s pixels_b = {
            image[ny[2]][nx[2]],
            image[ny[3]][nx[3]]};

        b_pattern = (b_pattern << 1) | (pixels_a[0] > high);
        d_pattern = (d_pattern << 1) | (pixels_a[0] < low);

        b_pattern = (b_pattern << 1) | (pixels_a[1] > high);
        d_pattern = (d_pattern << 1) | (pixels_a[1] < low);

        b_pattern = (b_pattern << 1) | (pixels_b[0] > high);
        d_pattern = (d_pattern << 1) | (pixels_b[0] < low);

        b_pattern = (b_pattern << 1) | (pixels_b[1] > high);
        d_pattern = (d_pattern << 1) | (pixels_b[1] < low);

    }

    // Create a mask for 9 continuous bits
    uint16_t mask = (1 << 9) - 1;

    // Check if any 9 consecutive bits in the patterns are all 1
    for (uint8_t i = 0; i < 8; i++) {
        if (((b_pattern & (mask << i)) == (mask << i)) || ((d_pattern & (mask << i)) == (mask << i))) {
            return 1;
        }
    }

    return 0;
}

void fast_benchmark_singlecore() {
  for (uint8_t y = 3; y < SIZE-3; y++) {
    for (uint8_t x = 3; x < SIZE-3; x++) {
        feature[y][x] = is_feature_9_16_simd(y, x);
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
        feature[y][x] = is_feature_9_16_simd(y, x);
      }
    }
  PERF_STOP_ON_CLUSTER
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
  pi_perf_conf(0x7FFFFFFF);
  pi_perf_reset();
  pi_perf_start();

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
  // cluster_wait keeps the FC waiting in a busy loop until cluster core 0
  // finished execution. The benchmark function should make sure that not only
  // core 0 finished but all 8 cores by using a synchronization barrier
  pi_perf_stop();
  uint32_t instr_cnt = pi_perf_read(PI_PERF_INSTR);
  uint32_t cycles_cnt = pi_perf_read(PI_PERF_CYCLES);
  perf_print_all_fixed();

  printf("CPI: %f\n", (float) cycles_cnt/instr_cnt);
}


int main() {
  // Check if we are the fabric controller (FC has cluster id != 0 which cluster
  // cores have cluster id 0) We have this check since we will fork main on all
  // cluster cores and don't need to rerun SoC initialization during parallel
  // execution.
  if (pi_cluster_id() != 0){
    init_image_feature();
    printf("Starting Benchmarks...\n\r");
    // Benchmark single core variant
    run_benchmark_on_fc("singlecore", fast_benchmark_singlecore);
    // Benchmark multicore variant 
    // run_benchmark_on_cluster("multicore", fast_benchmark_multicore);
    // Benchmark SIMD variant
    return 0;
  }
}
