% Lifelong Guide for Blind Person
% Ensure you have the necessary Computer Vision and Audio Processing Toolbox installed.

% Create a video input object (assuming webcam)
%vid = videoinput('winvideo', 1, 'RGB');

% Create audio player object
player = audioplayer(zeros(1, 44100), 44100);

% Main loop for continuous image processing
while true
    % Capture image from the webcam
    %img = getsnapshot(vid);
    img = imread('img.jpg');

    % Process the image to detect obstacles (replace with your obstacle detection code)
    obstacleDetected = detectObstacles(img);

    % Display the processed image
    subplot(2,2,1);
    imshow(img);  % Replace with your processed image display code
    title('Original Image');
    % Play a sound if an obstacle is detected
    if obstacleDetected
        %play(player); 
        fprintf('\n There is a obstacle ahead!! \n');% Replace with your sound output code
    end

    subplot(2,2,2);
    imshow('out1.jpg');
    title('Grey Scale Image');
    
    subplot(2,2,3);
    imshow('out2.jpg');
    title('Binary Image');

    subplot(2,2,4);
    imshow('out3.jpg');
    title('Processed Image');
    % Add a delay to control the loop rate
    %pause(1);  % Adjust as needed
end
