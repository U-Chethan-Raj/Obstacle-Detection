function obstacleDetected = detectObstacles(img)
   
    % Convert the image to grayscale
    grayImg = rgb2gray(img);
    imwrite(grayImg,'out1.jpg');

    % Apply edge detection (replace with your specific obstacle detection algorithm)
    edges = edge(grayImg, 'Sobel');

    % Perform morphological operations to enhance the edges
    se = strel('disk', 5);
    dilatedEdges = imdilate(edges, se);

    % Placeholder logic: Check if a significant portion of the image has edges
    edgePercentage = sum(dilatedEdges(:)) / numel(dilatedEdges);
    
    % Adjust the threshold as needed
    threshold = 100;
    binaryImage = grayImg > threshold;
    binaryImg = im2bw(img);
    imwrite(binaryImg,'out2.jpg');
    imwrite(binaryImage,'out3.jpg');
    % Determine if an obstacle is detected based on the edge percentage
    obstacleDetected = edgePercentage > threshold;


end
