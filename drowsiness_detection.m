% File: drowsiness_detection.m

clc;
clear;

% Load built-in Haar cascade for eye detection
eyeDetector = vision.CascadeObjectDetector('EyePairBig');
cam = webcam(); % Access webcam

frameCount = 0;
drowsyThreshold = 20; % Frames with closed eyes before triggering alarm
alertTriggered = false;

fprintf("🟢 System Initialized. Monitoring eyes...\n");

while true
    % Capture image from webcam
    img = snapshot(cam);
    gray = rgb2gray(img);
    
    % Detect eyes
    bbox = step(eyeDetector, gray);

    if ~isempty(bbox)
        % Eyes detected
        frameCount = 0;
        alertTriggered = false;
        img = insertObjectAnnotation(img, 'rectangle', bbox, 'Eyes Open', 'Color', 'green');
    else
        % Eyes not detected
        frameCount = frameCount + 1;
        img = insertText(img, [10 10], 'Eyes Possibly Closed', 'FontSize', 14, 'BoxColor', 'red');
        if frameCount > drowsyThreshold && ~alertTriggered
            fprintf("⚠️  Drowsiness Detected! Triggering alert!\n");
            sound(sin(1:3000)); % Simple beep alert
            alertTriggered = true;
        end
    end
    
    imshow(img);
    drawnow;

    % Press ESC to exit
    if ~isempty(get(gcf,'CurrentCharacter')) && double(get(gcf,'CurrentCharacter')) == 27
        break;
    end
end

clear cam;
fprintf("🛑 Monitoring stopped.\n");
