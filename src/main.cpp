#include <opencv2/opencv.hpp>
#include "head.h"

int main() {
    // 读取输入图像
    cv::Mat inputImage = cv::imread("/home/zqm/fenli/dataset_任务二/1.jpg");
    if (inputImage.empty()) {
        std::cerr << "无法读取输入图像!" << std::endl;
        return -1;
    }
    
    // 创建输出图像
    cv::Mat outputImage, fillblackImage;
    //colorFilter(inputImage,inputImage);
    maskRegionOfInterest(inputImage,inputImage,1);
    applyCLAHE(inputImage);
    
    // 保存调整后的第一张图像
    cv::imwrite("/home/zqm/fenli/dataset_任务二/output1.jpg", inputImage);
    
    std::cout << "第一张图像对比度调整完成,并保存为output1.jpg" << std::endl;
    
    // 处理其他图片
    for (int i = 2; i <= 5; ++i) {
        // 加载其他图片
        cv::Mat image = imread("/home/zqm/fenli/dataset_任务二/" + std::to_string(i) + ".jpg", cv::IMREAD_COLOR);
        
        // 检查图像是否成功加载
        if (image.empty()) {
            std::cout << "无法打开或找到第" << i << "张图像文件" << std::endl;
            continue;
        }
        // 将当前图片的对比度调整为第一张图像的对比度
        //colorFilter(image,image);
        maskRegionOfInterest(image,image,i);
        applyCLAHE(image);
        // 保存调整后的当前图片
        imwrite("/home/zqm/fenli/dataset_任务二/output" + std::to_string(i) + ".jpg", image);
        std::cout << "第" << i << "张图像对比度调整完成,并保存为output" << i << ".jpg" << std::endl;
    }

    for (int j = 1; j <= 5; ++j) {
        inputImage = imread("/home/zqm/fenli/dataset_任务二/output" + std::to_string(j) + ".jpg", cv::IMREAD_COLOR);
        // 进行车道线检测
        detectLanes(inputImage, fillblackImage,j);
        cv::imwrite("/home/zqm/fenli/dataset_任务二/fb" + std::to_string(j) + ".jpg", fillblackImage);
        std::cout << "第" << j << "张图像调整完成,并保存为fb" << j << ".jpg" << std::endl;
        dilated_erode(fillblackImage, outputImage);
        // 显示结果
        cv::imwrite("/home/zqm/fenli/dataset_任务二/dl" + std::to_string(j) + ".jpg", outputImage);
        std::cout << "第" << j << "张图像调整完成,并保存为dl" << j << ".jpg" << std::endl;
    }
    cv::waitKey(0);

    return 0;
}