#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <time.h>

#pragma pack(push,1)

typedef struct {
    unsigned short type;
    unsigned int size;
    unsigned short reserved1;
    unsigned short reserved2;
    unsigned int offset;
} BMPHeader;

typedef struct {
    unsigned int size;
    int width, height;
    unsigned short planes;
    unsigned short bits;
    unsigned int compression;
    unsigned int imagesize;
    int xresolution, yresolution;
    unsigned int ncolours;
    unsigned int importantcolours;
} BMPInfoHeader;

#pragma pack(pop)

// Functions to check if a pixel is a feature based on the FAST algorithm
// Types : 9_16, 7_12, 5_8

bool is_feature_9_16(unsigned char** pixels, int x, int y, int width, int height, int threshold) {
    
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
                return true;
            }
        }
        else if (pixels[ny][nx] < intensity - threshold) {
            d_counter++;
            b_counter = 0;
            if (d_counter == counter_threshold) {
                return true;
            }
        }
        else {
            d_counter = 0;
            b_counter = 0;
        }
    }

    return false;
}

bool is_feature_7_12(unsigned char** pixels, int x, int y, int width, int height, int threshold) {
    
    // Total Points in the Circle
    int points = 12;
    // Counter for continuous pixels
    int b_counter = 0;
    int d_counter = 0;
    int counter_threshold = 7;

    // Coordinates of the circle around the pixel
    // int circle[12][2] = {{0, 3}, {1, 2}, {2, 1}, {3, 0}, {2, -1}, {1, -2}, {0, -3}, {-1, -2}, {-2, -1}, {-3, 0}, {-2, 1}, {-1, 2}};
    int circle[12][2] = {{0, 2}, {1, 2}, {2, 1}, {2, 0}, {2, -1}, {1, -2}, {0, -2}, {-1, -2}, {-2, -1}, {-2, 0}, {-2, 1}, {-1, 2}};

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
                return true;
            }
        }
        else if (pixels[ny][nx] < intensity - threshold) {
            d_counter++;
            b_counter = 0;
            if (d_counter == counter_threshold) {
                return true;
            }
        }
        else {
            d_counter = 0;
            b_counter = 0;
        }
    }

    return false;
}

bool is_feature_5_8(unsigned char** pixels, int x, int y, int width, int height, int threshold) {
    
    // Total Points in the Circle
    int points = 8;
    // Counter for continuous pixels
    int b_counter = 0;
    int d_counter = 0;
    int counter_threshold = 8;

    // Coordinates of the circle around the pixel
    // int circle[8][2] = {{0, 3}, {2, 2}, {3, 0}, {2, -2}, {0, -3}, {-2, -2}, {-3, 0}, {-2, 2}};
    int circle[8][2] = {{0, 1}, {1, 1}, {1, 0}, {1, -1}, {0, -1}, {-1, -1}, {-1, 0}, {-1, 1}};

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
                return true;
            }
        }
        else if (pixels[ny][nx] < intensity - threshold) {
            d_counter++;
            b_counter = 0;
            if (d_counter == counter_threshold) {
                return true;
            }
        }
        else {
            d_counter = 0;
            b_counter = 0;
        }
    }

    return false;
}


int main() {
    FILE *file = fopen("face_image.bmp", "r");
    if (!file) {
        printf("Error: Could not open file\n");
        return 1;
    }
    FILE *outfile = fopen("output.bmp", "wb");
    if (!outfile) {
        printf("Error: Could not open output file\n");
        return 1;
    }

    BMPHeader header;
    BMPInfoHeader infoheader;

    fread(&header, sizeof(BMPHeader), 1, file);
    fread(&infoheader, sizeof(BMPInfoHeader), 1, file);

    // Write the header and info header to the output file
    fwrite(&header, sizeof(BMPHeader), 1, outfile);
    fwrite(&infoheader, sizeof(BMPInfoHeader), 1, outfile);

    printf("width: %d\n", infoheader.width);
    printf("height: %d\n", infoheader.height);
    printf("bit depth: %d\n", infoheader.bits);
    printf("Data Offset: %d\n", header.offset);

    unsigned char** pixels = malloc(infoheader.height * sizeof(unsigned char*));
    for (int i = 0; i < infoheader.height; i++) {
        pixels[i] = malloc(infoheader.width * sizeof(unsigned char));
    }

    // Read the pixel data into the 2D array
    // Set the file pointer to the offset specified in the header
    fseek(file, header.offset, SEEK_SET);
    for (int i = 0; i < infoheader.height; i++) {
        fread(pixels[i], sizeof(unsigned char), infoheader.width, file);
    }


    FILE *file_pixel = fopen("pixels.txt", "w");

    for (int i = 0; i < infoheader.height; i++) {
        for (int j = 0; j < infoheader.width; j++) {
            fprintf(file_pixel, "%d ", pixels[i][j]);
        }
        fprintf(file_pixel, "\n");
    }

    fclose(file_pixel);


    // Threshold for feature detection
    int threshold = 10;

    // Total features detected
    int total_features = 0;

    // Array to store the features
    bool** features = malloc(infoheader.height * sizeof(bool*));
    for (int i = 0; i < infoheader.height; i++) {
        features[i] = calloc(infoheader.width, sizeof(bool));
    }

    // Time the feature detection
    clock_t start = clock();
    
    // Detect features
    for (int y = 0; y < infoheader.height; y++) {
        for (int x = 0; x < infoheader.width; x++) {
            features[y][x] = is_feature_9_16(pixels, x, y, infoheader.width, infoheader.height, threshold);
            total_features += features[y][x];
        }
    }

    clock_t end = clock();
    double time_taken = ((double) (end - start)) / CLOCKS_PER_SEC;
    printf("Time taken: %f\n", time_taken);
    printf("Total features: %d\n", total_features);

    // Write the pixel data to the output file
    for (int i = 0; i < infoheader.height; i++) {
        fwrite(pixels[i], sizeof(unsigned char), infoheader.width, outfile);
    }

    // Close the output file
    fclose(outfile);

    // Open the features file
    FILE *features_file = fopen("features.txt", "w");
    if (!features_file) {
        printf("Error: Could not open features file\n");
        return 1;
    }

    // Write the features to the file
    for (int y = 0; y < infoheader.height; y++) {
        for (int x = 0; x < infoheader.width; x++) {
            fprintf(features_file, "%d ", features[y][x]);
        }
        fprintf(features_file, "\n");
    }

    // Close the features file
    fclose(features_file);


    // Free the memory allocated
    for (int i = 0; i < infoheader.height; i++) {
        free(pixels[i]);
        free(features[i]);
    }
    free(pixels);
    free(features);

    fclose(file);


    return 0;
}