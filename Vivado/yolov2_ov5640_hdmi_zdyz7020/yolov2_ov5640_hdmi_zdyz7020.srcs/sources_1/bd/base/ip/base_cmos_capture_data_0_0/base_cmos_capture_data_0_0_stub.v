// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed May 22 19:15:02 2024
// Host        : always20006 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               E:/fpgaproject/yolov2_ov5640_hdmi_zdyz7020/yolov2_ov5640_hdmi_zdyz7020.srcs/sources_1/bd/base/ip/base_cmos_capture_data_0_0/base_cmos_capture_data_0_0_stub.v
// Design      : base_cmos_capture_data_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "cmos_capture_data,Vivado 2018.3" *)
module base_cmos_capture_data_0_0(rst_n, cam_pclk, cam_vsync, cam_href, cam_data, 
  cam_rst_n, cam_pwdn, cmos_frame_clk, cmos_frame_ce, cmos_frame_vsync, cmos_frame_href, 
  cmos_active_video, cmos_frame_data)
/* synthesis syn_black_box black_box_pad_pin="rst_n,cam_pclk,cam_vsync,cam_href,cam_data[7:0],cam_rst_n,cam_pwdn,cmos_frame_clk,cmos_frame_ce,cmos_frame_vsync,cmos_frame_href,cmos_active_video,cmos_frame_data[23:0]" */;
  input rst_n;
  input cam_pclk;
  input cam_vsync;
  input cam_href;
  input [7:0]cam_data;
  output cam_rst_n;
  output cam_pwdn;
  output cmos_frame_clk;
  output cmos_frame_ce;
  output cmos_frame_vsync;
  output cmos_frame_href;
  output cmos_active_video;
  output [23:0]cmos_frame_data;
endmodule
