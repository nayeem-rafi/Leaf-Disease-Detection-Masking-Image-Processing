clc; close all; clear all;

rgb_healthy = imresize(imread('leaf healthy.jpg'), [255,255]);
unhealthy = imresize(imread('leaf unhealthy.jpg'), [255,255]);
very_unhealthy = imresize(imread('leaf very unhealthy.jpg'), [255,255]);


leaf_healthy =  rgb2hsv(rgb_healthy);

leaf_unhealthy =  rgb2hsv(unhealthy);

leaf_very_unhealthy =  rgb2hsv(very_unhealthy);

subplot(221), imshow(leaf_healthy(:, :, 1)); title('Hue');
subplot(222), imshow(leaf_healthy(:, :, 2)); title('Saturation');
subplot(223), imshow(leaf_healthy(:, :, 3)); title('Value');
subplot(224), imshow(hsv2rgb(leaf_healthy)); title('Healthy leaf');

mask1 = (leaf_healthy(:,:,1)> 0.2) & (leaf_healthy(:,:,1)< 0.4) & (leaf_healthy(:, :, 2) > 0.2) & (leaf_healthy(:, :, 3) < 0.8);
figure (2), mask_shape = imshow(mask1);

filled_mask1 = imdilate(mask1, strel('square',5));
filled_mask1 = bwareaopen(filled_mask1,5);

figure(3), imshow(filled_mask1);

mask2 = (leaf_unhealthy(:,:,1)> 0.2) & (leaf_unhealthy(:,:,1)< 0.4) & (leaf_unhealthy(:, :, 2) > 0.2) & (leaf_unhealthy(:, :, 3) < 0.8);
filled_mask2 = imdilate(mask2, strel('square',5));
filled_mask2 = bwareaopen(filled_mask2,5);

mask3 = (leaf_very_unhealthy(:,:,1)> 0.2) & (leaf_very_unhealthy(:,:,1)< 0.4) & (leaf_very_unhealthy(:, :, 2) > 0.2) & (leaf_very_unhealthy(:, :, 3) < 0.8);
filled_mask3 = imdilate(mask3, strel('square',5));
filled_mask3 = bwareaopen(filled_mask3,5);

leaf_cutout1(:,:,1)= uint8(filled_mask1).*rgb_healthy(:,:,1);
leaf_cutout1(:,:,2)= uint8(filled_mask1).*rgb_healthy(:,:,2);
leaf_cutout1(:,:,3)= uint8(filled_mask1).*rgb_healthy(:,:,3);

figure (4), imshow(leaf_cutout1);

leaf_cutout2(:,:,1)= uint8(filled_mask2).*unhealthy(:,:,1);
leaf_cutout2(:,:,2)= uint8(filled_mask2).*unhealthy(:,:,2);
leaf_cutout2(:,:,3)= uint8(filled_mask2).*unhealthy(:,:,3);

figure (5), imshow(leaf_cutout2);

leaf_cutout3(:,:,1)= uint8(filled_mask3).*very_unhealthy(:,:,1);
leaf_cutout3(:,:,2)= uint8(filled_mask3).*very_unhealthy(:,:,2);
leaf_cutout3(:,:,3)= uint8(filled_mask3).*very_unhealthy(:,:,3);

figure (6), imshow(leaf_cutout3);