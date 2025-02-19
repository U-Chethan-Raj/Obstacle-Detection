# Obstacle-Detection-Using-MATLAB
## Overview  
This project is designed to assist visually impaired individuals by detecting obstacles in their path using **computer vision** techniques. The system processes real-time images from a camera (or a stored image) and alerts the user when an obstacle is detected. It uses **image processing and edge detection** to identify potential obstacles and provides feedback via sound alerts or textual messages.  

## Dependencies  
Ensure that the following toolboxes and libraries are installed:  
- **MATLAB Image Processing Toolbox**  
- **MATLAB Computer Vision Toolbox**  
- **MATLAB Audio Toolbox**  

## Features  
- **Real-Time Image Capture**: Captures images from a webcam (or uses a predefined image).  
- **Obstacle Detection**: Uses edge detection and morphological operations to identify obstacles.  
- **Image Processing Steps**:  
  - Convert images to grayscale  
  - Apply edge detection using the **Sobel** operator  
  - Use morphological operations to enhance detected edges  
  - Convert the image to binary for better obstacle identification  
- **Audio Feedback**: Generates an alert when an obstacle is detected.  
- **Visualization**: Displays original, grayscale, binary, and processed images for debugging.  

## How It Works  
1. The system captures an image from the camera or reads a predefined image (`img.jpg`).  
2. The `detectObstacles()` function processes the image:  
   - Converts it to grayscale.  
   - Applies **Sobel edge detection** to highlight potential obstacles.  
   - Uses **image dilation** to enhance detected edges.  
   - Computes the percentage of edge pixels in the image.  
3. If the detected edge percentage exceeds a set threshold, an obstacle warning is triggered.  
4. The processed images are displayed alongside the original image.  

## Output Visualization  
- **Original Image** (Captured from the camera)  
- **Grayscale Image**  
- **Binary Image** (Threshold-based segmentation)  
- **Processed Image** (Final output with obstacle detection applied)  

## Applications  
- **Navigation Assistance for the Visually Impaired**  
- **Autonomous Robotics for Obstacle Avoidance**  
- **Smart Walking Aid Development**  

## Future Improvements  
- Integrating **AI-based object detection models** for better obstacle classification.  
- Enhancing **real-time processing speed** for live navigation.  
- Adding voice feedback instead of textual alerts.  

