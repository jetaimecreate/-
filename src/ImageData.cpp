#include "image_processor.h"
#include <iostream>
#include <fstream>
#include <sstream>
#include <string>
#include <vector>



void Image_Data() {
     // 存储图片数据的容器

    std::ifstream file("/home/zqm/fd/dataset_任务一/experiment1.csv");
    if (!file.is_open()) {
        std::cerr << "Failed to open file!" << std::endl;
    }

    std::string line;

    // 跳过 CSV 文件的第一行（标题行）
    std::getline(file, line);

    // 逐行读取 CSV 文件
    while (std::getline(file, line)) {
        std::stringstream ss(line);
        std::string img_name, img_scaleStr, interpolation, img_HorizontalStr, img_VerticalStr, Rotation_center, Rotation_angleStr;

        // 使用逗号分隔符分割每行数据
        if (std::getline(ss, img_name, ',') &&
            std::getline(ss, img_scaleStr, ',') &&
            std::getline(ss, interpolation, ',') &&
            std::getline(ss, img_HorizontalStr, ',') &&
            std::getline(ss, img_VerticalStr, ',') &&
            std::getline(ss, Rotation_center, ',') &&
            std::getline(ss, Rotation_angleStr, ',')) {
            
            ImageData A;
            // 转换字符串到合适的数据类型
            A.img_scale = img_scaleStr;
            A.img_Horizontal = std::stoi(img_HorizontalStr);
            A.img_Vertical = std::stoi(img_VerticalStr);
            A.Rotation_angle = std::stoi(Rotation_angleStr);
            A.interpolation =interpolation;
            A.Rotation_center= Rotation_center;
            A.img_name= img_name;

            // 创建ImageData对象并添加到vector中
            imageDatas.push_back(A);
        }
    }

    file.close(); // 关闭文件
}
