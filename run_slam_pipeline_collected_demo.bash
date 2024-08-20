#!/bin/bash

# 删除 ~/Desktop/UMI/ 文件夹中的所有内容
rm -rf ~/Desktop/universal_manipulation_interface/example_demo_session/*

# 将 ~/Desktop/collected_videos/example_demo_session 文件夹复制到 ~/Desktop/UMI
cp -r ~/Desktop/collected_videos_demo/example_demo_session ~/Desktop/universal_manipulation_interface

# 执行 python 脚本
python run_slam_pipeline_mac.py ~/Desktop/universal_manipulation_interface/example_demo_session

# 生成训练数据集
python scripts_slam_pipeline/07_generate_replay_buffer.py -o example_demo_session/dataset.zarr.zip example_demo_session