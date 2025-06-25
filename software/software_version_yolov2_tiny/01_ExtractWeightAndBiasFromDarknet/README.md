# Extract weight and bias from Darknet and combined with Batch Normalization
This folder is about how to extract YOLOv2_tiny's weight and bias from darknet. 

First, you should download the darknet source from [https://github.com/pjreddie/darknet](https://github.com/pjreddie/darknet) and yolov2.weights from [https://pjreddie.com/media/files/yolov2_tiny.weights](https://pjreddie.com/media/files/yolov2_tiny.weights). 

Second, make the whole project and run the command: ./darknet detect cfg/yolov2_tiny.cfg yolov2_tiny.weights data/dog.jpg. 

Then, you will find two bin files (__weights.bin__ and __bias.bin__) that used for next step.(modify the yolov2_tiny.cfg width and height __608-> 416__ in next step.)

__Note__: Each time the __weights.bin__ and __bias.bin__ files are generated, the data will be appended to the existing files. Therefore, it’s best to delete the original files before regenerating them.
