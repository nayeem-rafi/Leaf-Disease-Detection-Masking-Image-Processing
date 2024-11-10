# Leaf Disease Detection Masking Image Processing
By [Naimur Rahman](https://github.com/nayeem-rafi)

This MATLAB script is designed for preprocessing and masking images of leaves with different health statuses to identify specific regions based on the HSV color space. It performs several key operations on three types of leaf images: healthy, unhealthy, and very unhealthy. The purpose of this script is to highlight disease areas for further analysis.

## Overview

1. Loads and resizes images of healthy, unhealthy, and very unhealthy leaves.
2. Converts the images from RGB to HSV color space for enhanced color-based segmentation.
3. Applies masks based on HSV threshold values to segment and highlight specific leaf areas.
4. Displays individual HSV channels and masked leaf regions.
5. Produces binary masks for each leaf category and dilates and fills gaps to improve segmentation.

## Prerequisites

- MATLAB 
- Image Processing Toolbox

## How It Works

### Steps

1. **Image Loading and Resizing**:
    - Load and resize the leaf images to a standard dimension of 255x255 pixels for consistent processing.

2. **Color Space Conversion**:
    - Convert the RGB images to HSV, which makes it easier to apply color-based segmentation. Function used: rgb2hsv.

3. **Channel Visualization**:
    - Display individual HSV channels (Hue, Saturation, and Value) to better understand the leaf's color properties.

4. **Mask Creation**:
    - Create masks based on specific HSV range thresholds that target leaf regions.
    - Use dilation and filling to remove small holes and gaps.

5. **Masked Image Creation**:
    - Apply the mask to each leaf image to visualize and isolate disease regions.

6. **Display the Final Output**:
    - Show the segmented leaf regions in separate figures.

## Results

The script produces six figures:
1. **HSV Channel Visualization**: Shows Hue, Saturation, and Value channels for the healthy leaf.
![3 hsv Channels for Healthy Leaf](https://github.com/user-attachments/assets/2078b7e6-a083-41e5-8d70-cd7c56ec840c)

2. **Masks**: Shows binary masks for healthy as example(can edit code for other leaves). First binary mask has some error black dotted on leaf, final mask fix errors.
![Mask With Error](https://github.com/user-attachments/assets/a2e047ba-59e2-4d92-a6ff-aac95e638bc0)
![Mask Without Error](https://github.com/user-attachments/assets/ec9a4ea2-d273-49f5-932c-21f26ca7c788)

3. **Masked Images**: Shows disease regions segmented from the original images.

![Healthy Leaf Segmentation](https://github.com/user-attachments/assets/242eeacc-fe76-48e2-9c7a-672c23afe5ea)
![Unhealthy Leaf Segmentation](https://github.com/user-attachments/assets/f03070c3-4493-4e92-b8ae-b5864b07b5d1)
![Very Unhealthy Leaf Segmentation](https://github.com/user-attachments/assets/4ce4ce78-1681-4d26-bac8-5c34b6afb05a)

## Usage

1. Place the images (`leaf healthy.jpg`, `leaf unhealthy.jpg`, and `leaf very unhealthy.jpg`) in the same directory as the script.
2. Run the script in MATLAB.

## Notes

- The HSV thresholds may need adjustment depending on the specific color distribution of the input images.
- The morphological operations can be customized for different leaf shapes and disease patterns.
---
Happy coding!

