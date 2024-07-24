#ifndef HEAD_H
#define HEAD_H

#include <opencv2/opencv.hpp>
#include <vector>

void detectLanes(const cv::Mat& inputImage, cv::Mat& outputImage,int a);
void dilated_erode(cv::Mat& inputImage,cv::Mat& outputImage);
void equalizeContrast(cv::Mat& image);
void applyCLAHE(cv::Mat& image);
void colorFilter(const cv::Mat& inputImage,cv::Mat& outputImage);
void maskRegionOfInterest(cv::Mat& image,cv::Mat &outputImage,int x);

#endif // HEAD_H