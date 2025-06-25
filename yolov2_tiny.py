#==================================================
#                import package
#=================================================
import math
from pynq import Overlay
from PIL import Image as PIL_Image
from PIL import ImageDraw as PIL_ImageDraw
from PIL import ImageFont
import matplotlib.pyplot as plt
import numpy as np
import math
from pynq import MMIO
from pynq import Xlnk
import time
import ctypes
import cv2
from pynq.lib.iic import *
from pynq.lib.video2lcd import *
from pynq.lib.ov5640 import OV5640
import IPython
from pynq import GPIO
from time import sleep
import logging
import gc
#==================================================

# 设置日志
logging.basicConfig(
    filename='/home/xilinx/jupyter_notebooks/yolo_ov5640_hdmi_test/pynq_app.log',
    level=logging.INFO
)
logging.info(f"Application started at {time.strftime('%Y-%m-%d %H:%M:%S')}")

#==================================================
#                Load overlay  and IP
#=================================================
try:
    overlay = Overlay("/home/xilinx/jupyter_notebooks/yolo_ov5640_hdmi_test/yolo_ov5640_hdmi_key.bit")
except Exception as e:
    logging.error(f"Failed to load bitstream: {e}")
    exit(1)

xlnk = Xlnk()   
xlnk.xlnk_reset()

#==================================================
#            allocated the memory  inbuff
#=================================================

weight_base_buffer = xlnk.cma_array(shape=(5613272,), dtype=np.uint32)
# print("100M",weight_base_buffer.physical_address)
WEIGHT_BASE = weight_base_buffer.physical_address

bate_base_buffer = xlnk.cma_array(shape=(1485,), dtype=np.uint32)
# print("32k",bate_base_buffer.physical_address)
BETA_BASE=bate_base_buffer.physical_address


img_base_buffer = xlnk.cma_array(shape=(4194304,), dtype=np.int32)
# print("16M",img_base_buffer.physical_address)
IMG_MEM = img_base_buffer.physical_address

#===============================================
#   yolov2 weight and bais copyto memory
#==============================================
params_wight = np.fromfile("weight_reorg_ap16.bin", dtype=np.uint32)
np.copyto(weight_base_buffer, params_wight)
# print("yolov2_weight copy ok\n")
del params_wight

params_bais = np.fromfile("bias_ap16.bin", dtype=np.uint32)
np.copyto(bate_base_buffer, params_bais)
# print("yolov2_bais copy ok\n")
del params_bais

gc.collect()

#===============================================
#           yolov2_tiny net_work data
#==============================================

weight_offset = [432, 4608, 18432, 73728, 294912, 1179648, 4718592, 4718592, 217600,0,0,0,0,0,0,0]
beta_offset = [16, 32, 64, 128, 256, 512, 1024, 512, 425, 0, 0, 0, 0, 0, 0, 0]

global inputQ, weightQ, betaQ


# coco_yolov2_tiny quantization parameters
inputQ_coco_yolov2_tiny  = [14,9,10,10,10,11,11,10,11,10]
weightQ_coco_yolov2_tiny = [10,15,14,15,15,15,14,15,15]
betaQ_coco_yolov2_tiny = [11,12,11,11,12,13,12,14,13]
#=================================================

# 弃用部分，第一版权重量化参数
# #skin_yolov2_tiny quantization parameters
# inputQ_skin_yolov2_tiny  = [14,11,11,11,11,12,12,12,12,10]
# weightQ_skin_yolov2_tiny = [11,15,15,15,15,15,15,15,15]
# betaQ_skin_yolov2_tiny = [11,14,14,14,14,13,13,13,15]
# #=================================================

#skin_yolov2_tiny quantization parameters
inputQ_skin_yolov2_tiny  = [14,11,11,11,12,12,12,12,12,10]
weightQ_skin_yolov2_tiny = [12,15,15,15,15,15,15,15,15]
betaQ_skin_yolov2_tiny = [11,14,14,14,13,13,13,13,15]
#=================================================


inputQ  = inputQ_coco_yolov2_tiny
weightQ = weightQ_coco_yolov2_tiny
betaQ   = betaQ_coco_yolov2_tiny


net_layers_outputs = [2768896,692224,1384448,346112,692224,173056,346112,86528,173056,43264,86528,86528,173056,86528,71825,71825]

layertype =             [0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 4]
layersize =             [3, 2, 3, 2, 3, 2, 3, 2, 3, 2, 3, 2, 3, 3, 1, 0]
layerbatch_normalize =  [1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 0]
layeractivation =       [1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 0]

layerstride =[1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 1, 1, 1, 1, 0]
layerpad =   [1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 0]

layern =     [16, 0, 32, 0, 64, 0, 128, 0, 256, 0, 512, 0, 1024, 512, 425, 5]
layerw =     [416, 416, 208, 208, 104, 104, 52, 52, 26, 26, 13, 13, 13, 13, 13, 13]
layerh =     [416, 416, 208, 208, 104, 104, 52, 52, 26, 26, 13, 13, 13, 13, 13, 13]
layerc =     [3, 16, 16, 32, 32, 64, 64, 128, 128, 256, 256, 512, 512, 1024, 512, 425]
layerout_w = [416, 208, 208, 104, 104, 52, 52, 26, 26, 13, 13, 13, 13, 13, 13]
layerout_h = [416, 208, 208, 104, 104, 52, 52, 26, 26, 13, 13, 13, 13, 13, 13]
layerout_c = [16, 16, 32, 32, 64, 64, 128, 128, 256, 256, 512, 512, 1024, 512, 512, 425, 425]

layerbias = [0.57273, 0.677385, 1.87446, 2.06253, 3.33843, 5.47434, 7.88282, 3.52778, 9.77052, 9.16828]

classes = 80
batch = 1
coords=4
background = 0
softmax =1

S=2
K=3 
Tn=4
Tm=32
Tr=26
Tc=26

OnChipIB_Width=((Tc-1)*S+K)
OnChipIB_Height=((Tr-1)*S+K)
ALPHA_BETA_MAX_NUM=1024

MEM_BASE = IMG_MEM
MEM_LEN = 416*416*32*2+208*208*32*2
Memory_top = MEM_BASE
Memory_bottom = MEM_BASE + MEM_LEN

LastLayerOutputPara = pow(2.0,-inputQ[9])

in_ptr  = np.zeros(17)
out_ptr = np.zeros(17)

for x in range(0,16):
        if x%2 == 0:
            in_ptr[x] = Memory_top
            out_ptr[x] =  Memory_bottom - net_layers_outputs[x]*4//2
        else:
            in_ptr[x] = out_ptr[x-1]
            out_ptr[x] = Memory_top

in_ptr[16] = out_ptr[15]



#===================================================
#			read label  
#===================================================
orig_name_path = ("coco.names")
label_read = open(orig_name_path) 
all_lines = label_read.readlines()	
label_name = []   
for line in all_lines:
	label_name.append(line.strip())	
     
#===================================================
# 定义更换权重与偏移函数，不更换网络结构
def change_yolo_weight_and_bias(inputQ_t, weightQ_t, betaQ_t):
    #更新量化参数
    global inputQ, weightQ, betaQ
    inputQ = inputQ_t
    weightQ = weightQ_t
    betaQ = betaQ_t

    # 支持原本权重和新权重之间互换，注意内存回收
    global weight_base_buffer, bate_base_buffer, WEIGHT_BASE, BETA_BASE

    # 释放原有权重和偏置缓冲区
    try:
        del weight_base_buffer
        del bate_base_buffer
        gc.collect()
    except Exception as e:
        logging.warning(f"Buffer deletion warning: {e}")

    # 根据输入参数决定加载哪组权重
    if inputQ_t == inputQ_coco_yolov2_tiny and weightQ_t == weightQ_coco_yolov2_tiny and betaQ_t == betaQ_coco_yolov2_tiny:
        # 加载COCO权重
        weight_base_buffer = xlnk.cma_array(shape=(5613272,), dtype=np.uint32)
        bate_base_buffer = xlnk.cma_array(shape=(1485,), dtype=np.uint32)
        params_wight = np.fromfile("weight_reorg_ap16.bin", dtype=np.uint32)
        np.copyto(weight_base_buffer, params_wight)
        del params_wight
        params_bais = np.fromfile("bias_ap16.bin", dtype=np.uint32)
        np.copyto(bate_base_buffer, params_bais)
        del params_bais
        #更换names
        global label_name
        orig_name_path = ("coco.names")

    else:
        # 加载skin权重
        weight_base_buffer = xlnk.cma_array(shape=(5613272,), dtype=np.uint32)
        bate_base_buffer = xlnk.cma_array(shape=(1485,), dtype=np.uint32)
        params_wight = np.fromfile("weight_reorg_ap16_skin_v1.2.bin", dtype=np.uint32)
        np.copyto(weight_base_buffer, params_wight)
        del params_wight
        params_bais = np.fromfile("bias_ap16_skin_v1.2.bin", dtype=np.uint32)
        np.copyto(bate_base_buffer, params_bais)
        del params_bais
        #更换names
        global label_name
        orig_name_path = ("skin.names")
    label_read = open(orig_name_path)
    all_lines = label_read.readlines()
    label_name = []
    for line in all_lines:
        label_name.append(line.strip())

    gc.collect()
    WEIGHT_BASE = weight_base_buffer.physical_address
    BETA_BASE = bate_base_buffer.physical_address
    logging.info(f"Changed YOLO weights and biases with new quantization parameters: {inputQ}, {weightQ}, {betaQ}")
#==================================================





#===============================================
#                  yolov2 hw Ex
#==============================================

#IP_base_address
IP_BASE_ADDRESS    =  0x43C20000
ADDRESS_RANGE      = 0x180

XYOLO2_FPGA_CTRL_BUS_ADDR_AP_CTRL            =0x000
XYOLO2_FPGA_CTRL_BUS_ADDR_GIE                =0x004
XYOLO2_FPGA_CTRL_BUS_ADDR_IER                =0x008
XYOLO2_FPGA_CTRL_BUS_ADDR_ISR                =0x00c
XYOLO2_FPGA_CTRL_BUS_ADDR_INPUT_R_DATA       =0x010
XYOLO2_FPGA_CTRL_BUS_ADDR_INPUT1_DATA        =0x018
XYOLO2_FPGA_CTRL_BUS_ADDR_INPUT2_DATA        =0x020
XYOLO2_FPGA_CTRL_BUS_ADDR_INPUT3_DATA        =0x028
XYOLO2_FPGA_CTRL_BUS_ADDR_OUTPUT_R_DATA      =0x030
XYOLO2_FPGA_CTRL_BUS_ADDR_OUTPUT1_DATA       =0x038
XYOLO2_FPGA_CTRL_BUS_ADDR_WEIGHT_DATA        =0x040
XYOLO2_FPGA_CTRL_BUS_ADDR_BETA_DATA          =0x048
XYOLO2_FPGA_CTRL_BUS_ADDR_INFM_NUM_DATA      =0x050
XYOLO2_FPGA_CTRL_BUS_ADDR_OUTFM_NUM_DATA     =0x058
XYOLO2_FPGA_CTRL_BUS_ADDR_KERNEL_SIZE_DATA   =0x060
XYOLO2_FPGA_CTRL_BUS_ADDR_KERNEL_STRIDE_DATA =0x068
XYOLO2_FPGA_CTRL_BUS_ADDR_INPUT_W_DATA       =0x070
XYOLO2_FPGA_CTRL_BUS_ADDR_INPUT_H_DATA       =0x078
XYOLO2_FPGA_CTRL_BUS_ADDR_OUTPUT_W_DATA      =0x080
XYOLO2_FPGA_CTRL_BUS_ADDR_OUTPUT_H_DATA      =0x088
XYOLO2_FPGA_CTRL_BUS_ADDR_PADDING_DATA       =0x090
XYOLO2_FPGA_CTRL_BUS_ADDR_ISNL_DATA          =0x098
XYOLO2_FPGA_CTRL_BUS_ADDR_ISBN_DATA          =0x0a0
XYOLO2_FPGA_CTRL_BUS_ADDR_TM_DATA            =0x0a8
XYOLO2_FPGA_CTRL_BUS_ADDR_TN_DATA            =0x0b0
XYOLO2_FPGA_CTRL_BUS_ADDR_TR_DATA            =0x0b8
XYOLO2_FPGA_CTRL_BUS_ADDR_TC_DATA            =0x0c0
XYOLO2_FPGA_CTRL_BUS_ADDR_MLOOPS_DATA        =0x0c8
XYOLO2_FPGA_CTRL_BUS_ADDR_NLOOPS_DATA        =0x0d0
XYOLO2_FPGA_CTRL_BUS_ADDR_RLOOPS_DATA        =0x0d8
XYOLO2_FPGA_CTRL_BUS_ADDR_CLOOPS_DATA        =0x0e0
XYOLO2_FPGA_CTRL_BUS_ADDR_LAYERTYPE_DATA     =0x0e8
XYOLO2_FPGA_CTRL_BUS_ADDR_INPUTQ_DATA        =0x0f0
XYOLO2_FPGA_CTRL_BUS_ADDR_OUTPUTQ_DATA       =0x0f8
XYOLO2_FPGA_CTRL_BUS_ADDR_WEIGHTQ_DATA       =0x100
XYOLO2_FPGA_CTRL_BUS_ADDR_BETAQ_DATA         =0x108
XYOLO2_FPGA_CTRL_BUS_ADDR_TROW_LOOPS_DATA    =0x110

#XYOLO2_FPGA_CTRL_BUS_ADDR Write data

def YOLO__Init_EX(In_Address,Out_Address,Weight_offset,Beta_offset,InFM_num,OutFM_num,
                 Kernel_size,Kernel_stride,
                 Input_w,Input_h,Output_w,Output_h,Padding,IsNL,IsBN,
                 TM,TN,TR,TC,
                 mLoops,nLoops,rLoops,cLoops,LayerType,
                 InputQ,OutputQ,WeightQ,BetaQ,WEIGHT_BASE,BETA_BASE):
   
    # mapping memory
    mmio = MMIO(IP_BASE_ADDRESS,ADDRESS_RANGE)
    
    if (Input_w==26):
        T2Rate = 2.0
    elif (Input_w==13):
        T2Rate = 4.0
    else:
        T2Rate = 1.0
    TRow_t = (TR-1)*Kernel_stride+Kernel_size
    trow_loops = int(math.ceil(TRow_t/T2Rate))    
    
    while True:
        ap_idle =  (mmio.read(XYOLO2_FPGA_CTRL_BUS_ADDR_AP_CTRL)>>2)&0x01
        if(ap_idle):
            break
               
    mmio.write(XYOLO2_FPGA_CTRL_BUS_ADDR_INPUT_R_DATA,  In_Address)
    mmio.write(XYOLO2_FPGA_CTRL_BUS_ADDR_INPUT1_DATA,  In_Address)
    mmio.write(XYOLO2_FPGA_CTRL_BUS_ADDR_INPUT2_DATA,  In_Address)
    mmio.write(XYOLO2_FPGA_CTRL_BUS_ADDR_INPUT3_DATA,  In_Address)
    
    mmio.write(XYOLO2_FPGA_CTRL_BUS_ADDR_OUTPUT_R_DATA, Out_Address)
    mmio.write(XYOLO2_FPGA_CTRL_BUS_ADDR_OUTPUT1_DATA, Out_Address)
    mmio.write(XYOLO2_FPGA_CTRL_BUS_ADDR_WEIGHT_DATA,   WEIGHT_BASE+Weight_offset*4)
    mmio.write(XYOLO2_FPGA_CTRL_BUS_ADDR_BETA_DATA,     BETA_BASE+Beta_offset*4)

    mmio.write(XYOLO2_FPGA_CTRL_BUS_ADDR_INFM_NUM_DATA, InFM_num)
    mmio.write(XYOLO2_FPGA_CTRL_BUS_ADDR_OUTFM_NUM_DATA, OutFM_num)
    mmio.write(XYOLO2_FPGA_CTRL_BUS_ADDR_KERNEL_SIZE_DATA, Kernel_size)
    mmio.write(XYOLO2_FPGA_CTRL_BUS_ADDR_KERNEL_STRIDE_DATA, Kernel_stride)
    mmio.write(XYOLO2_FPGA_CTRL_BUS_ADDR_INPUT_W_DATA, Input_w)
    mmio.write(XYOLO2_FPGA_CTRL_BUS_ADDR_INPUT_H_DATA, Input_h)
    mmio.write(XYOLO2_FPGA_CTRL_BUS_ADDR_OUTPUT_W_DATA, Output_w)
    mmio.write(XYOLO2_FPGA_CTRL_BUS_ADDR_OUTPUT_H_DATA, Output_h)
    mmio.write(XYOLO2_FPGA_CTRL_BUS_ADDR_PADDING_DATA, Padding)
    mmio.write(XYOLO2_FPGA_CTRL_BUS_ADDR_ISNL_DATA, IsNL)
    mmio.write(XYOLO2_FPGA_CTRL_BUS_ADDR_ISBN_DATA, IsBN)
    mmio.write(XYOLO2_FPGA_CTRL_BUS_ADDR_TM_DATA, TM)
    mmio.write(XYOLO2_FPGA_CTRL_BUS_ADDR_TN_DATA, TN)
    mmio.write(XYOLO2_FPGA_CTRL_BUS_ADDR_TR_DATA, TR)
    mmio.write(XYOLO2_FPGA_CTRL_BUS_ADDR_TC_DATA, TC)
    mmio.write(XYOLO2_FPGA_CTRL_BUS_ADDR_MLOOPS_DATA, mLoops)
    mmio.write(XYOLO2_FPGA_CTRL_BUS_ADDR_NLOOPS_DATA, nLoops)
    mmio.write(XYOLO2_FPGA_CTRL_BUS_ADDR_RLOOPS_DATA, rLoops)
    mmio.write(XYOLO2_FPGA_CTRL_BUS_ADDR_CLOOPS_DATA, cLoops)
    mmio.write(XYOLO2_FPGA_CTRL_BUS_ADDR_LAYERTYPE_DATA, LayerType)

    mmio.write(XYOLO2_FPGA_CTRL_BUS_ADDR_INPUTQ_DATA, InputQ)
    mmio.write(XYOLO2_FPGA_CTRL_BUS_ADDR_OUTPUTQ_DATA, OutputQ)
    mmio.write(XYOLO2_FPGA_CTRL_BUS_ADDR_WEIGHTQ_DATA, WeightQ)
    mmio.write(XYOLO2_FPGA_CTRL_BUS_ADDR_BETAQ_DATA, BetaQ)
    mmio.write(XYOLO2_FPGA_CTRL_BUS_ADDR_TROW_LOOPS_DATA, trow_loops)

    mmio.write(XYOLO2_FPGA_CTRL_BUS_ADDR_GIE,0)
    mmio.write(XYOLO2_FPGA_CTRL_BUS_ADDR_AP_CTRL,1)
    while True:
        ap_done =  (mmio.read(XYOLO2_FPGA_CTRL_BUS_ADDR_AP_CTRL)>>1)&0x01
        if(ap_done):
            break

#============================================
#			read image and resize 
#============================================
def load_image():
        orig_img_path = (ORIG_IMG_PATH)

        try:
            img = PIL_Image.open(orig_img_path)
#             print("Open pictrue success!")
        except IOError:
            print("fail to load image!")
#         print("pictrue size:",img.size)
#         print("pictrue mode:",img.mode)  
        return img
    
def letterbox_image(img,w,h):
        if((float)(w/img_w))<((float)(h/img_h)):
            new_w = w
            new_h = (img_h*w)//img_w
        else:
            new_w = (img_w*h)//img_h
            new_h = h
        img_resized = img.resize((new_w,new_h),PIL_Image.BILINEAR)

        boxed = PIL_Image.new('RGB',(w,h),(127,127,127))
        box1 = (0,0,new_w,new_h)
        boxed.paste(img_resized.crop(box1),((w-new_w)//2,(h-new_h)//2))
        
        return boxed
def image_to_array_1dim(img,w,h):
    
        img_r,img_g,img_b = img.split()


        image_array_r = np.array(img_r,dtype='float32')/255
        image_array_g = np.array(img_g,dtype='float32')/255
        image_array_b = np.array(img_b,dtype= 'float32')/255

        image_array_r = image_array_r.reshape(w*h,)
        image_array_g = image_array_g.reshape(w*h,)
        image_array_b = image_array_b.reshape(w*h,)

        img_array_3 = [image_array_r,image_array_g,image_array_b]
        img_array_3 = np.array(img_array_3)
        img_array_3 = img_array_3.reshape(3*w*h,)
        return img_array_3

def float32_int(img_array_3_416_416):
        current_in = np.array(img_array_3_416_416[::2]*(math.pow(2.0,14)),dtype='uint16')
        next_in = np.array(img_array_3_416_416[1::2]*(math.pow(2.0,14)),dtype= 'uint16') 
        input_tmp_img = next_in*65536 + current_in
        input_tmp_img.dtype
        return input_tmp_img   

#==============================================
#                yolov2  Ex  FPGA
#==============================================


def yolo_fpga(img_base_buffer,region_buff):
         
    TR=0
    TC=0
    TM=0
    TN=0
    offset_index=0
    woffset = 0
    boffset = 0

    woffset = 0
    boffset = 0
    
    
    
    OUTPUT = np.zeros((36504,), dtype=np.int32)
    current_p = np.zeros((36504,), dtype=np.int16)
    next_p = np.zeros((36504,), dtype=np.int16)
    output_p = np.zeros((73008,), dtype=np.int16)
    region_buff_temp = np.zeros((73008,), dtype=np.float32)
    LastLayerOutputPara = math.pow(2.0,-inputQ[9])

    for i in range(0,16):
       
        if layertype[i] == 0:
#             print(i,"conv")
            output_w = (layerw[i] - layersize[i] + 2*layerpad[i])//layerstride[i] + 1
            output_h = (layerh[i] - layersize[i] + 2*layerpad[i])//layerstride[i] + 1

            TR = min(((OnChipIB_Height-layersize[i])//layerstride[i]+1),Tr)                #keep Kernel_stride>=1
            TR = min(output_h,TR)
            TC = min(((OnChipIB_Width-layersize[i])//layerstride[i]+1),Tc)
            TC = min(output_w,TC)
            TM = min(layern[i],Tm)
            TN = min(layerc[i],Tn)

            rLoops =int(math.ceil(float(output_h)/TR))
            cLoops =int(math.ceil(float(output_w)/TC))
            mLoops =int(math.ceil(float(layern[i])/TM))
            nLoops =int(math.ceil(float(layerc[i])/TN))#分块后各个维度的循环次数，行、列、输出通道，输入通道

            INPUTQ_t = inputQ[offset_index]
            if(i==26):
                INPUTQ_t = inputQ[12]
    
            YOLO__Init_EX(int(in_ptr[i]),int(out_ptr[i]),woffset//2,boffset//2,
                layerc[i],layern[i],layersize[i],
                layerstride[i],layerw[i],layerh[i],output_w,output_h,
                layerpad[i],layeractivation[i],layerbatch_normalize[i],
                TM,TN,TR,TC,
                mLoops,nLoops,rLoops,cLoops,0,
                INPUTQ_t,inputQ[offset_index+1],weightQ[offset_index],betaQ[offset_index],
                WEIGHT_BASE,BETA_BASE)


    
            woffset += weight_offset[offset_index]
            boffset += beta_offset[offset_index]  
            offset_index = offset_index+1

        elif layertype[i] == 1:
#             print(i,"maxpool")
            if(i==11):
                output_w = layerw[i]
                output_h = layerh[i]
            else:
                output_w = (layerw[i] - layersize[i])//layerstride[i] + 1 
                output_h = (layerh[i] - layersize[i])//layerstride[i] + 1 

            TR = min(((OnChipIB_Height-layersize[i])//layerstride[i]+1),Tr)  #//keep Kernel_stride>=1
            TR = min(output_h,TR)
            TC = min(((OnChipIB_Width-layersize[i])//layerstride[i]+1),Tc)
            TC = min(output_w,TC)
            TM = min(Tm,Tn)
            TM = min(layerc[i],TM)
            TN = TM

            rLoops = int(math.ceil(float(output_h)/TR))
            cLoops = int(math.ceil(float(output_w)/TC))
            mLoops = int(math.ceil(float(layerc[i])/TM))



            YOLO__Init_EX(int(in_ptr[i]),int(out_ptr[i]),0,0,layerc[i],layerc[i],
                        layersize[i],layerstride[i],layerw[i],layerh[i],output_w,output_h,
                          0,0,0,TM,0,TR,TC,mLoops,1,rLoops,cLoops,1,
                        inputQ[offset_index],inputQ[offset_index],20,20,
                        WEIGHT_BASE,BETA_BASE)

        elif layertype[i] == 2:
#             print(i,"reorg")
            TR = min(((OnChipIB_Height-layerstride[i])//layerstride[i]+1),Tr)      #//keep Kernel_stride>=1
            TC = min(((OnChipIB_Width-layerstride[i])//layerstride[i]+1),Tc)

            TM = 4
            TN = TM
            output_w = 26;
            output_h = 26*16;
            TR = min(output_h,TR)
            TC = min(output_w,TC)
            rLoops = int(math.ceil(float(output_h)/TR))
            cLoops = int(math.ceil(float(output_w)/TC))
            mLoops = 1


            YOLO__Init_EX(int(in_ptr[i]),int(out_ptr[i]),0,0,1,4,
            layerstride[i],layerstride[i],52,52*16,output_w,output_h,
                          0,0,0,TM,TN,TR,TC,mLoops,1,rLoops,cLoops,2,
            inputQ[offset_index],inputQ[offset_index],20,20,
            WEIGHT_BASE,BETA_BASE)
#         elif layertype[i] == 3:
#             print(i,"route")
        elif layertype[i] == 4:
#             print(i,"region")
            address_start = int((in_ptr[i] - MEM_BASE)//4)
            address_end   = int(address_start +13*13*432//2) 
            OUTPUT = img_base_buffer[address_start:address_end].copy()           
            current_p = OUTPUT%65536
            next_p    = OUTPUT//65536
            output_p[::2]  = current_p
            output_p[1::2] =  next_p 
            region_buff_temp = output_p*LastLayerOutputPara 
            np.copyto(region_buff,region_buff_temp)
#     print("FPGA_Accelerate_Completed!!")

#============================================
#			Struct detection
#============================================
class box:
    def __init__(self):
            self.x = float()
            self.y = float()
            self.w = float()
            self.h = float()

class detection:
    def __init__(self):
            self.bbox = box() 
            self.classes = int()
            self.prob = []
            self.mask = []
            self.objectness = float()
            self.sort_class = int()

def entry_index(outputs,w,h,batch,location,entry):
            n  =   location //(w*h)    
            loc = location % (w*h)
            return batch*outputs + n*w*h*(4+classes+1) + entry*w*h + loc


def get_region_box(x,biases,n,index,i,j,w,h,stride):

            b=box()
            b.x = (i + x[index + 0*stride]) / w
            b.y = (j + x[index + 1*stride]) / h
            b.w = math.exp(x[index + 2*stride]) * biases[2*n]   / w
            b.h = math.exp(x[index + 3*stride]) * biases[2*n+1] / h
            return b


def correct_region_boxes(n,w,h,netw,neth,dets):

            new_w=0
            new_h=0
    
            if ((float(netw)/w) < (float(neth)/h)):
                new_w = netw;
                new_h = (h * netw)//w
            else:
                new_h = neth
                new_w = (w * neth)//h

            for i in range(0,n):
                b = dets[i].bbox
                b.x =  (b.x - (netw - new_w)/2/netw) /  (float(new_w)/netw)
                b.y =  (b.y - (neth - new_h)/2/neth) /  (float(new_h)/neth)

                b.w = b.w *float(netw)/new_w
                b.h =  b.h *float(neth)/new_h
                
                relative  = 1 
                nrelative = 0
                if(nrelative):
                    b.x *= w
                    b.w *= w
                    b.y *= h
                    b.h *= h

                dets[i].bbox = b

#============================================
#			 forward_region_layer
#============================================   
def activate_array(x,index,n): 
#ACTIVATION  LOGISTIC     
        for i in range(0,n):
            x[index+i] = 1/(1+ math.exp(-x[index+i])) 
            

def forward_region_layer(net_input,layer_output,layerw,layerh,layern,outputs):
       
        for b in range(0,batch):          
            for n in range(0,layern):
              
                index = entry_index(outputs, layerw,layerh,b, n*layerw*layerh,0)
                activate_array(layer_output,index, 2*layerw*layerh)
                index = entry_index(outputs, layerw,layerh,b, n*layerw*layerh, coords)
                
                if True: 
                    activate_array(layer_output,index,layerw*layerh)
                    index = entry_index(outputs, layerw,layerh,b, n*layerw*layerh, coords + 1)
        lib = ctypes.cdll.LoadLibrary("./softmax.so") 
        if (softmax):
            
            index = entry_index(outputs,layerw,layerh,0,0,coords+1)          
            net_input_temp = (ctypes.c_float*len(net_input[index:]))(*net_input[index:])
            layer_output_temp =(ctypes.c_float*len(layer_output[index:]))(*layer_output[index:])
            
            
            lib.softmax_cpu(net_input_temp,classes + background,  batch*layern, outputs//layern, layerw*layerh,  1, layerw*layerh, ctypes.c_float(1), layer_output_temp)
            layer_output[index:] = np.array(layer_output_temp)

#============================================
#			get_network_boxes
#============================================

nms=0.5
thresh = 0.5
hier_thresh = .5

#====================
#make_network_boxes   dets
nboxes =  845

#=====================   
def get_region_detections(net_input,w,h,layerw,layerh,layern,netw,neth,outputs,thresh,dets):
            # get_region_detections
            predictions = net_input
     
            for i in range(0,layerw*layerh):
                row = i//layerw
                col = i % layerw
                for n in range(0,layern): 
                    index = n*layerw*layerh+i 
                   

                    obj_index  = entry_index(outputs, layerw,layerh,0,n*layerw*layerh + i, coords)
                    box_index  = entry_index(outputs,layerw,layerh,0, n*layerw*layerh + i, 0)
                    mask_index = entry_index(outputs, layerw,layerh,0, n*layerw*layerh + i, 4)
                    scale = float(predictions[obj_index])
                    dets[index].bbox = get_region_box(predictions,layerbias, n, box_index, col, row, layerw, layerh, layerw*layerh)
                    if(scale > thresh):dets[index].objectness=scale 
                    else:dets[index].objectness=0
                
                    #===================   
                    if(dets[index].mask):
                        for j in range(0,coords-4):
                            dets[index].mask.append(net_output[mask_index + j*layerw*layerh])
                           
                    class_index = entry_index(outputs, layerw,layerh,0, n*layerw*layerh + i, coords+1)
                    #=================== 
                    if(dets[index].objectness):
                        for j in range(0,classes):
                            class_index = entry_index(outputs,layerw,layerh, 0, n*layerw*layerh + i,coords + 1 + j)
                            prob_num = scale*predictions[class_index]   
                            if(prob_num > thresh):dets[index].prob[j]=prob_num
                       
            correct_region_boxes(layerw*layerh*layern, w, h,netw,neth,dets)
           
            
            

def fill_network_boxes(net_input,w,h,layerw,layerh,layern,netw,neth,outputs,thresh,dets):   
        get_region_detections(net_input,w,h,layerw,layerh,layern,netw,neth,outputs,thresh,dets)


#============================================
#			 do_nms_sort
#============================================
from operator import itemgetter, attrgetter

def box_iou(a, b):
    return box_intersection(a, b)/box_union(a, b)
def overlap(x1, w1, x2, w2):

    l1 = x1 - w1/2
    l2 = x2 - w2/2
    if(l1 > l2):left = l2 
    else:left = l1
    r1 = x1 + w1/2
    r2 = x2 + w2/2
    if(r1 < r2):right = r1 
    else:right = r2
    return right - left

def box_intersection(a, b):

    w = overlap(a.x, a.w, b.x, b.w)
    h = overlap(a.y, a.h, b.y, b.h)
    if(w < 0 or h < 0): return 0
    area = w*h
    return area

def box_union(a, b):

    i = box_intersection(a, b)
    u = a.w*a.h + b.w*b.h - i
    return u


def do_nms_sort(total,classes,thresh,dets):
    
    k = total-1
    swap = detection()
    temp = 0
    while(temp<k+1):

        if(dets[temp].objectness == 0):
                swap = dets[temp]
                dets[temp] = dets[k]
                dets[k] = swap
                k =k-1 
                temp = temp-1
        temp= temp+1
            
    total = k+1


    for c in range(0,classes):
        
        for i in range(0,total):
            dets[i].sort_class = c
        dets[0:5:1] = sorted(dets[0:5:1],key =lambda x:(x.prob[x.sort_class]), reverse=True) 

        for i in range(0,total): 
            if(dets[i].prob[c] == 0): 
                continue
          
            a = dets[i].bbox
            for j in range (i+1,total):
                
                b = dets[j].bbox
                if (box_iou(a, b) > thresh):
                    dets[j].prob[c] = 0


     

#============================================
#			 Draw detection
#============================================

def draw_detections(img_out,img_w,img_h,num,thresh, names,classes,dets):
    rgb_cnt = 0
    for i in range(0,num):
        labelstr = []
        class_t = -1
        for j in range(0,classes):
                if (dets[i].prob[j] > thresh):
                    
                    if (class_t < 0):
                        labelstr.append(names[j])
                        class_t = j;
                    else: 
                        labelstr.append(names[j])
#                     print("name:", names[j], dets[i].prob[j]*100)             
          
        if(class_t >= 0):

            width = int(img_h * .006)
            offset = class_t*123457 % classes
            b = dets[i].bbox
 

            left  = int((b.x-b.w/2.)*img_w)
            right = int((b.x+b.w/2.)*img_w)
            top   = int((b.y-b.h/2.)*img_h)
            bot   = int((b.y+b.h/2.)*img_h)

            if(left < 0): left = 0
            if(right > img_w-1): right = img_w-1
            if(top < 0): top = 0
            if(bot > img_h-1): bot = img_h-1
                
            if(rgb_cnt ==0):
                RGB =  (255,0,0)    #rgb
            if(rgb_cnt ==1):
                RGB = (0,255,0)    #yellow
            if(rgb_cnt ==2):
                RGB = (255,255,0)   #green
            rgb_cnt = rgb_cnt+1     
            if(rgb_cnt ==3):
                RGB = (153,248,88)   
            if(rgb_cnt ==4):
                RGB = (255,83,26)
            if(rgb_cnt ==5):
                RGB = (255,71,209)
            if(rgb_cnt == 5):
                rgb_cnt =0
            else:
                rgb_cnt = rgb_cnt+1 
            
            if(len(labelstr[0]) >5):
                label_len = len(labelstr[0])*10
            else:
                label_len = len(labelstr[0])*13
            
            
            draw = PIL_ImageDraw.Draw(img_out)
            draw.line([(left,bot),(left,top),(right,top),(right,bot),(left,bot)], fill = RGB, width = width)
            draw.rectangle([(left-width/2,top-24),(left+label_len,top-width/2)], fill = RGB)
            
            ttfont = ImageFont.truetype('Arial.ttf',20)
            draw.text((left+2,top-24),labelstr[0], fill = (0,0,0),font=ttfont)
           

#==============================================
#                yolov2  main function
#==============================================
def yolo_meminout(frame_in,img_w,img_h,frame_out):
    
    start_time = time.time()


    img_boxed = letterbox_image(frame_in,416,416)
    img_boxed.save("pictrue_boxed.jpg")
    img_array_3_416_416 = image_to_array_1dim(img_boxed,416,416)
    
    input_tmp_img = float32_int(img_array_3_416_416)
    end_time = time.time()
    image_preprocess = end_time - start_time 
    
    
    
    #load image to memory start
    start_time = time.time()
    np.copyto(img_base_buffer[0:259584],input_tmp_img)
    # print("yolov2_image copy ok\n")
    end_time = time.time()
    load_image_to_memory = end_time - start_time 
    #load image to memory end
    
    #start yolo_fpga
    #fpga_process_time start
    start_time = time.time()
    region_buff = np.zeros((73008,), dtype=np.float32)
  
    yolo_fpga(img_base_buffer,region_buff)
    end_time = time.time()
    fpga_process_time = end_time - start_time 
    #fpga_process_time end
    
    
    #region_layer_process_time start
    start_time = time.time()
    layer_output =np.zeros(71825)
    net_input=np.zeros(71825)
    np.copyto(net_input,region_buff[0:71825])
    np.copyto(layer_output,net_input)
    forward_region_layer(net_input,layer_output,layerw[15],layerh[15],layern[15],net_layers_outputs[15])
    np.copyto(net_input,layer_output)
    end_time = time.time()
    region_layer_process_time = end_time - start_time
    #region_layer_process_time end
    
    
    #post_process_time start 
    dets = []
    start_time = time.time()
    for i in range(0,845):
        dets.append(detection())
    for i in range(0,845):
            dets[i].prob = np.zeros(classes,dtype = "float")
    fill_network_boxes(net_input,img_w,img_h,layerw[15],layerh[15],layern[15],layerw[0],layerh[0],net_layers_outputs[15],thresh,dets)
    
    do_nms_sort(nboxes,classes,nms,dets)
    
    draw_detections(frame_out,img_w,img_h,nboxes,thresh,label_name,classes,dets)
    end_time = time.time()
    
    
    post_process_time  = end_time - start_time
    
#     print("image_preprocess         :",image_preprocess)
#     print("load image to memory time:",load_image_to_memory)
#     print("fpga_process_time        :",fpga_process_time)
#     print("region_layer_process_time:",region_layer_process_time)
#     print("post_process_time        :",post_process_time)



iic = AxiIIC(overlay.ip_dict['cam_iic'])
#ov5670器件地址
address = 0x3c  
ov5640 = OV5640(address, iic)
ov5640.init()

# 设置摄像头输出分辨率
ov5640.set_outsize(1280, 720, 2570, 980)

video_in = overlay.video.video_in
video_out = overlay.video.video_out

mode = VideoMode(1280, 720, 24)
video_out.configure(0, mode)
video_in.configure(video_out.mode)

video_out.start()
video_in.start()

video_in.tie(video_out)
logging.info("video_in.tie(video_out)")

# 初始化 GPIO（对应 GPIO_tri_0_0_io[0]）
button0 = GPIO(GPIO.get_gpio_pin(0), "in")
button1 = GPIO(GPIO.get_gpio_pin(1), "in")

# 主循环
state = "streaming"
last_button0_state = True
last_button1_state = True
num = 0

#进入主循环，如果按下按钮0，切换拍照或视频状态，如果按下按钮1，切换所用权重
while True:
    # 读取按键状态并去抖
    current_button0_state = button0.read()
    current_button1_state = button1.read()
    # 按键0：切换拍照/视频状态
    if current_button0_state and not last_button0_state:
        if state == "streaming":
            # 拍照并推理
            while True:
                frame = video_in.readframe()
                video_out.writeframe(frame)
                if frame.max() != 0:
                    break
            image = PIL_Image.fromarray(frame)
            r, g, b = image.split()
            image = PIL_Image.merge('RGB', [r, g, b])
            IPython.display.clear_output(1)
            image.save("frame.jpg")
            ORIG_IMG_PATH = 'frame.jpg'
            frame_in = load_image()  # 确认load_image读取frame.jpg
            img_w = frame_in.size[0]
            img_h = frame_in.size[1]
            img_out = frame_in
            yolo_meminout(frame_in, img_w, img_h, img_out)
            img_n = np.array(img_out)
            img_result_grey = cv2.cvtColor(img_n, cv2.COLOR_RGB2BGR)
            outframe = video_out.newframe()
            img_result_grey = cv2.resize(img_result_grey, (1280, 720), interpolation=cv2.INTER_LINEAR)
            np.copyto(outframe, img_result_grey)
            video_out.writeframe(outframe)
            state = "paused"
        elif state == "paused":
            # 恢复视频流
            try:
                video_in.tie(video_out)
            except Exception as e:
                logging.info("video_in.tie error: %s", e)
            state = "streaming"
        sleep(0.2)  # 去抖延迟

    # 按键1：切换权重（COCO <-> skin），按一下切换，再按一下切换回来
    if current_button1_state and not last_button1_state:
        # 判断当前量化参数，切换到另一组
        if inputQ == inputQ_coco_yolov2_tiny:
            change_yolo_weight_and_bias(inputQ_skin_yolov2_tiny, weightQ_skin_yolov2_tiny, betaQ_skin_yolov2_tiny)
            logging.info("Switched to skin weights.")
            # 屏幕提示
            outframe = video_out.newframe()
            outframe[:] = 0
            img = PIL_Image.new('RGB', (1280, 720), (0, 0, 0))
            draw = PIL_ImageDraw.Draw(img)
            ttfont = ImageFont.truetype('Arial.ttf', 40)
            draw.text((400, 340), "turn to skin QPs", fill=(255, 255, 255), font=ttfont)
            np.copyto(outframe, np.array(img))
            video_out.writeframe(outframe)
            state = "paused"
        else:
            change_yolo_weight_and_bias(inputQ_coco_yolov2_tiny, weightQ_coco_yolov2_tiny, betaQ_coco_yolov2_tiny)
            logging.info("Switched to coco weights.")
            # 屏幕提示
            outframe = video_out.newframe()
            outframe[:] = 0
            img = PIL_Image.new('RGB', (1280, 720), (0, 0, 0))
            draw = PIL_ImageDraw.Draw(img)
            ttfont = ImageFont.truetype('Arial.ttf', 40)
            draw.text((400, 340), "turn to coco QPs", fill=(255, 255, 255), font=ttfont)
            np.copyto(outframe, np.array(img))
            video_out.writeframe(outframe)
            state = "paused"
        sleep(0.2)  # 去抖延迟
    last_button0_state = current_button0_state  # 每次循环都要更新
    last_button1_state = current_button1_state
    sleep(0.01)  # 控制循环频率
#     num = num + 1
#     print(num)