/* Implementation of the FAST Feature Detector for PULP*/

#include "pmsis.h"
#include "stimuli.h"

// Global Variables
uint8_t image[SIZE][SIZE];
uint8_t feature[SIZE][SIZE];

uint8_t threshold = 10;
int total_features = 0;

// Function to initialize the image
void init_image_feature()
{
    for (int i = 0; i < SIZE; i++)
    {
        for (int j = 0; j < SIZE; j++)
        {
            //image[i][j] = IMG_init[i][j];
            image[i][j] = Image_L1[i*SIZE + j];
            feature[i][j] = 0;
        }
    }
}

// Function to print the image
void print_matrix(uint8_t image[SIZE][SIZE])
{
    for (int i = 0; i < SIZE; i++)
    {
        for (int j = 0; j < SIZE; j++)
        {
            printf("%u ", image[i][j]);
        }
        printf("\n");
    }
}

// Function to detect FAST features in the image
int is_feature_9_16(uint8_t pixels[SIZE][SIZE], int x, int y, int width, int height, uint8_t threshold) {
    
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
        if (nx < 0 || nx >= width || ny < 0 || ny >= height) {
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

#if defined(CLUSTER)
void pe_entry(void *arg)
{
    printf("Hello from cluster_id: %d, core_id: %d\n", pi_cluster_id(), pi_core_id());
    int a = 8*pi_core_id() + 1;
    int b = 10;
    printf("a + b = %d\n", a + b);
}

void cluster_entry(void *arg)
{
    pi_cl_team_fork((NUM_CORES), pe_entry, 0);
}
#endif

static int test_entry()
{

#if defined(CLUSTER)
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
#endif

#if !defined(CLUSTER)
    init_image_feature();
    //initialize performance counters
    pi_perf_conf(
        1 << PI_PERF_CYCLES | 
        1 << PI_PERF_INSTR 
    );

    // measure statistics on matrix operations
    pi_perf_reset();
    pi_perf_start();

    // Detect features
    for (int y = 0; y < SIZE; y++) {
        for (int x = 0; x < SIZE; x++) {
            feature[y][x] = is_feature_9_16(image, x, y, SIZE, SIZE, threshold);
            total_features += feature[y][x];
        }
    }

    pi_perf_stop();
    uint32_t instr_cnt = pi_perf_read(PI_PERF_INSTR);
    uint32_t cycles_cnt = pi_perf_read(PI_PERF_CYCLES);

    printf("Number of Instructions: %d\nClock Cycles: %d\nCPI: %f%f\n", 
        instr_cnt, cycles_cnt, (float) cycles_cnt/instr_cnt);
    printf("Total Features: %d\n", total_features);
#endif

    return 0;
}

static void test_kickoff(void *arg)
{
    int ret = test_entry();
    pmsis_exit(ret);
}

int main()
{
    return pmsis_kickoff((void *)test_kickoff);
}