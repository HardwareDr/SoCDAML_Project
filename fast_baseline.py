import numpy as np
import cv2 as cv
from matplotlib import pyplot as plt

# Function to read textfile and plot features on the image
def fast_features(file):
    features = np.loadtxt(file, dtype = int)
    return features

# Load an image
img = cv.imread('barbara_gray.bmp', cv.IMREAD_GRAYSCALE)

# Initiate FAST object with default values
fast = cv.FastFeatureDetector_create()
# Modify default values of FAST object
fast.setThreshold(80)
fast.setType(cv.FAST_FEATURE_DETECTOR_TYPE_9_16)

# Key Points with nonmaxSuppression
kp = fast.detect(img, None)
img_nms = cv.drawKeypoints(img, kp, None, color=(255,0,0))

# Print all default params
print( "Threshold: {}".format(fast.getThreshold()) )
print( "nonmaxSuppression:{}".format(fast.getNonmaxSuppression()) )
print( "neighborhood: {}".format(fast.getType()) )
print( "Total Keypoints with nonmaxSuppression: {}".format(len(kp)) )

# Disable nonmaxSuppression
fast.setNonmaxSuppression(0)
kp = fast.detect(img, None)

print( "nonmaxSuppression:{}".format(fast.getNonmaxSuppression()) )
print( "Total Keypoints without nonmaxSuppression: {}".format(len(kp)) )
img_wnms = cv.drawKeypoints(img, kp, None, color=(255,0,0))

# Display the images
plt.figure(figsize=(10,10))
plt.imshow(img_wnms, cmap='gray')
plt.title('FAST Feature Detection without nonmaxSuppression')
#plt.show()

features = fast_features('features.txt')
# Create keypoints from the features
keypoints = []

for row in range(features.shape[0]):
    for column in range(features.shape[1]):
        if features[row, column] == 1:
            keypoints.append(cv.KeyPoint(x=column, y=features.shape[0]-row, size=1))



# Draw the keypoints on the image
img_keypoints = cv.drawKeypoints(img, keypoints, None, color=(255,0,0))

# Display the image
plt.figure(figsize=(10,10))
plt.imshow(img_keypoints, cmap='gray')
plt.title('FAST Feature Detection with keypoints from text file')
plt.show()

# Load pixel values from text file into a numpy array
# img = np.loadtxt('pixels.txt')

# # Display the image
# plt.figure(figsize=(10,10))
# plt.imshow(img, cmap='gray')
# plt.title('Image from pixel values')
# plt.show()
