#include "head.h"

void detectLanes(const cv::Mat& inputImage, cv::Mat& outputImage,int a) {
    // 转换为灰度图像
    cv::Mat gray;
    cv::cvtColor(inputImage, gray, cv::COLOR_BGR2GRAY);
    
    // 高斯模糊
    cv::Mat blurred;
    cv::GaussianBlur(gray, blurred, cv::Size(5, 5), 0);

    cv::Mat edges;
    //cv::Canny(blurred, edges, 150, 180,3);
    if(a==3){
    cv::threshold(blurred,edges,220, 255, cv::THRESH_BINARY);}
    else if(a==1){cv::threshold(blurred,edges,150, 255, cv::THRESH_BINARY);}
    else if(a==5){cv::threshold(blurred,edges,160, 255, cv::THRESH_BINARY);}
    else if(a==4){cv::threshold(blurred,edges,180, 210, cv::THRESH_BINARY);}
    else{cv::threshold(blurred,edges,160, 255, cv::THRESH_BINARY);}
    
    // 使用车掩码进行位运算
    cv::Mat car_edges = cv::imread("/home/zqm/fenli/dataset_任务二/car_mask.png", cv::IMREAD_GRAYSCALE);
    cv::bitwise_not(car_edges, car_edges);
    cv::bitwise_and(car_edges, edges, edges);

   std::vector<cv::Vec4i> lines;        //定义一个矢量结构lines用于存放得到的线段矢量集合  
    HoughLinesP(edges, lines, 1, CV_PI / 180,80,110,10);
    //距离精度(像素) 角度精度(弧度) 累加平面阈值 最低线段长度 同一行点与点连接的最大距离
 
    //依次绘制每条线段
    for (size_t i = 0; i < lines.size(); i++)
    {
        cv::Vec4i l = lines[i];
        cv::line(edges, cv::Point(l[0], l[1]), cv::Point(l[2], l[3]), cv::Scalar(255, 0, 0), 5);
    }
    outputImage =edges;
}

void dilated_erode(cv::Mat& inputImage, cv::Mat& outputImage) {
    cv::Mat kernel = cv::getStructuringElement(cv::MORPH_RECT, cv::Size(5, 5));
    erode(inputImage, outputImage, kernel);
    dilate(outputImage, outputImage, kernel);
    kernel = cv::getStructuringElement(cv::MORPH_RECT, cv::Size(7, 7));
    erode(outputImage, outputImage, kernel);
    dilate(outputImage, outputImage, kernel);
    kernel = cv::getStructuringElement(cv::MORPH_RECT, cv::Size(3, 3));
    erode(outputImage, outputImage, kernel);
    dilate(outputImage, outputImage, kernel);
    

}

void applyCLAHE(cv::Mat& image) {
    if (image.channels() >= 3) {
        // 将彩色图像转换为灰度图像
        cv::Mat gray;
        cv::cvtColor(image, gray, cv::COLOR_BGR2GRAY);
        // 自适应直方图均衡化处理
        cv::Ptr<cv::CLAHE> clahe = cv::createCLAHE();
        clahe->setClipLimit(4);
        clahe->apply(gray, gray);
        // 转换回彩色图像
        cv::cvtColor(gray, image, cv::COLOR_GRAY2BGR);
    } 
}
void maskRegionOfInterest(cv::Mat& image, cv::Mat& outputImage, int x) {
    cv::Mat mask = cv::Mat::zeros(image.size(), image.type());
    cv::Point points[4];

    if (x <= 2) {
        points[0] = cv::Point(0, image.rows);
        points[1] = cv::Point(image.cols, image.rows);
        points[2] = cv::Point(image.cols, image.rows * 0.43);
        points[3] = cv::Point(0, image.rows * 0.43);
    } else if(x>=2 && x<=4) {
        points[0] = cv::Point(0, image.rows);
        points[1] = cv::Point(image.cols*0.73, image.rows);
        points[2] = cv::Point(image.cols*0.73, image.rows * 0.4);
        points[3] = cv::Point(0, image.rows * 0.4);
    }
    else{points[0] = cv::Point(0, image.rows);
        points[1] = cv::Point(image.cols*0.75, image.rows);
        points[2] = cv::Point(image.cols*0.75, image.rows * 0.48);
        points[3] = cv::Point(0, image.rows * 0.48);}

    cv::fillConvexPoly(mask, points, 4, cv::Scalar(255, 255, 255));
    cv::bitwise_and(image, mask, outputImage);
}
