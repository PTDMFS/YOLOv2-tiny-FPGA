#!/bin/bash
export DISPLAY=:0
cd /home/xilinx/jupyter_notebooks/yolo_ov5640_hdmi_test
python3 yolov2_tiny.py >> pynq_app.log 2>&1

