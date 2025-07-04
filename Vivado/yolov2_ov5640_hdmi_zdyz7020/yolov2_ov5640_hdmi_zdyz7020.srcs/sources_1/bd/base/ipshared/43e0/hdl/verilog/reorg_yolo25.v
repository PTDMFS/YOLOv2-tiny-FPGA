// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module reorg_yolo25 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        Input_0_address0,
        Input_0_ce0,
        Input_0_q0,
        Output_0_address0,
        Output_0_ce0,
        Output_0_we0,
        Output_0_d0,
        Output_1_address0,
        Output_1_ce0,
        Output_1_we0,
        Output_1_d0,
        Output_2_address0,
        Output_2_ce0,
        Output_2_we0,
        Output_2_d0,
        Output_3_address0,
        Output_3_ce0,
        Output_3_we0,
        Output_3_d0,
        TR_MIN,
        TC_MIN,
        enable
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_pp0_stage0 = 3'd2;
parameter    ap_ST_fsm_state6 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [11:0] Input_0_address0;
output   Input_0_ce0;
input  [15:0] Input_0_q0;
output  [9:0] Output_0_address0;
output   Output_0_ce0;
output   Output_0_we0;
output  [31:0] Output_0_d0;
output  [9:0] Output_1_address0;
output   Output_1_ce0;
output   Output_1_we0;
output  [31:0] Output_1_d0;
output  [9:0] Output_2_address0;
output   Output_2_ce0;
output   Output_2_we0;
output  [31:0] Output_2_d0;
output  [9:0] Output_3_address0;
output   Output_3_ce0;
output   Output_3_we0;
output  [31:0] Output_3_d0;
input  [31:0] TR_MIN;
input  [31:0] TC_MIN;
input   enable;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg Input_0_ce0;
reg Output_0_ce0;
reg Output_0_we0;
reg Output_1_ce0;
reg Output_1_we0;
reg Output_2_ce0;
reg Output_2_we0;
reg Output_3_ce0;
reg Output_3_we0;

(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [65:0] indvar_flatten1_reg_161;
reg   [34:0] indvar_flatten2_reg_172;
reg   [3:0] indvar_flatten_reg_183;
reg   [30:0] y_reg_194;
reg   [30:0] x_reg_205;
reg   [1:0] ky_reg_216;
reg   [1:0] kx_reg_227;
wire   [0:0] enable_read_read_fu_78_p2;
wire   [34:0] bound8_fu_246_p1;
reg   [34:0] bound8_reg_661;
wire   [65:0] bound_fu_258_p2;
reg   [65:0] bound_reg_666;
wire   [0:0] exitcond_flatten2_fu_264_p2;
reg   [0:0] exitcond_flatten2_reg_671;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
wire    ap_block_state4_pp0_stage0_iter2;
wire    ap_block_state5_pp0_stage0_iter3;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] exitcond_flatten2_reg_671_pp0_iter1_reg;
wire   [65:0] indvar_flatten_next2_fu_269_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [0:0] exitcond_flatten_fu_275_p2;
reg   [0:0] exitcond_flatten_reg_680;
wire   [0:0] not_exitcond_flatten_fu_280_p2;
reg   [0:0] not_exitcond_flatten_reg_692;
wire   [0:0] exitcond_flatten1_fu_286_p2;
reg   [0:0] exitcond_flatten1_reg_697;
wire   [0:0] exitcond_flatten_mid_fu_292_p2;
reg   [0:0] exitcond_flatten_mid_reg_702;
wire   [0:0] tmp_1_fu_298_p2;
reg   [0:0] tmp_1_reg_711;
wire   [3:0] indvar_flatten_next_fu_310_p3;
wire   [34:0] indvar_flatten_next1_fu_324_p3;
wire   [30:0] tmp_7_mid2_v_fu_385_p3;
reg   [30:0] tmp_7_mid2_v_reg_727;
reg    ap_enable_reg_pp0_iter1;
wire  signed [10:0] tmp_24_fu_392_p1;
reg  signed [10:0] tmp_24_reg_732;
wire   [10:0] tmp_29_fu_461_p3;
reg   [10:0] tmp_29_reg_737;
wire   [30:0] x_mid2_fu_510_p3;
wire   [7:0] tmp_34_fu_565_p3;
reg   [7:0] tmp_34_reg_747;
wire   [1:0] ky_mid2_fu_587_p3;
wire   [7:0] Xoffset_fu_599_p2;
reg   [7:0] Xoffset_reg_757;
wire   [1:0] in_index_t_fu_605_p2;
reg   [1:0] in_index_t_reg_762;
reg   [1:0] in_index_t_reg_762_pp0_iter2_reg;
wire   [1:0] kx_1_fu_611_p2;
wire  signed [10:0] grp_fu_642_p3;
reg  signed [10:0] tmp_8_reg_771;
reg    ap_enable_reg_pp0_iter2;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter1_state3;
reg    ap_enable_reg_pp0_iter3;
reg   [30:0] ap_phi_mux_y_phi_fu_198_p4;
wire    ap_block_pp0_stage0;
wire  signed [63:0] tmp_23_cast_fu_623_p1;
wire  signed [63:0] tmp_17_cast_fu_627_p1;
wire  signed [31:0] tmp_7_fu_634_p1;
wire   [33:0] tmp_fu_238_p3;
wire   [31:0] bound_fu_258_p0;
wire   [33:0] bound_fu_258_p1;
wire   [3:0] indvar_flatten_op_fu_304_p2;
wire   [34:0] indvar_flatten23_op_fu_318_p2;
wire   [6:0] tmp_18_fu_332_p1;
wire   [6:0] tmp_19_fu_344_p1;
wire   [7:0] tmp_3_fu_356_p1;
wire   [7:0] tmp_2_fu_336_p3;
wire   [30:0] y_1_fu_372_p2;
wire   [6:0] tmp_25_fu_396_p1;
wire   [7:0] tmp_2_mid1_fu_400_p3;
wire   [7:0] tmp_5_fu_348_p3;
wire   [0:0] exitcond_fu_422_p2;
wire   [30:0] x_mid_fu_378_p3;
wire   [30:0] x_1_fu_433_p2;
wire   [10:0] tmp_27_fu_450_p1;
wire   [10:0] tmp_26_fu_446_p1;
wire   [10:0] tmp_28_fu_454_p3;
wire   [6:0] tmp_30_fu_468_p1;
wire   [7:0] tmp_5_mid1_fu_472_p3;
wire   [7:0] tmp_5_mid_fu_415_p3;
wire   [1:0] tmp_22_fu_366_p2;
wire   [0:0] exitcond_flatten_not_fu_494_p2;
wire   [0:0] exitcond_mid_fu_428_p2;
wire   [0:0] not_exitcond_flatten_1_fu_499_p2;
wire   [1:0] ky_mid_fu_439_p3;
wire   [0:0] exitcond_mid1_fu_504_p2;
wire   [0:0] tmp_9_fu_523_p2;
wire   [0:0] tmp_31_fu_528_p2;
wire   [1:0] ky_1_fu_517_p2;
wire   [7:0] tmp_3_mid1_fu_541_p1;
wire   [7:0] tmp_2_mid2_fu_408_p3;
wire   [7:0] Yoffset_fu_360_p2;
wire   [7:0] tmp_32_fu_551_p3;
wire   [7:0] Yoffset_mid1_fu_545_p2;
wire   [7:0] tmp_33_fu_558_p3;
wire   [1:0] tmp_35_fu_573_p2;
wire   [1:0] tmp_8_mid_fu_487_p3;
wire   [1:0] kx_mid2_fu_533_p3;
wire   [7:0] tmp_6_fu_595_p1;
wire   [7:0] tmp_5_mid2_fu_480_p3;
wire   [1:0] tmp_8_mid2_fu_579_p3;
wire   [12:0] grp_fu_648_p3;
wire   [5:0] grp_fu_642_p0;
wire   [6:0] grp_fu_648_p0;
wire   [7:0] grp_fu_648_p1;
wire   [7:0] grp_fu_648_p2;
wire    ap_CS_fsm_state6;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire   [65:0] bound_fu_258_p00;
wire   [65:0] bound_fu_258_p10;
wire   [12:0] grp_fu_648_p10;
wire   [12:0] grp_fu_648_p20;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
end

YOLO2_FPGA_mac_muocq #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 6 ),
    .din1_WIDTH( 11 ),
    .din2_WIDTH( 11 ),
    .dout_WIDTH( 11 ))
YOLO2_FPGA_mac_muocq_U552(
    .din0(grp_fu_642_p0),
    .din1(tmp_24_reg_732),
    .din2(tmp_29_reg_737),
    .dout(grp_fu_642_p3)
);

YOLO2_FPGA_mac_mupcA #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 7 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .dout_WIDTH( 13 ))
YOLO2_FPGA_mac_mupcA_U553(
    .din0(grp_fu_648_p0),
    .din1(grp_fu_648_p1),
    .din2(grp_fu_648_p2),
    .dout(grp_fu_648_p3)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((exitcond_flatten2_fu_264_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((ap_start == 1'b1) & (enable_read_read_fu_78_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter1_state3)) begin
                ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter0;
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end else if (((ap_start == 1'b1) & (enable_read_read_fu_78_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten2_fu_264_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        indvar_flatten1_reg_161 <= indvar_flatten_next2_fu_269_p2;
    end else if (((ap_start == 1'b1) & (enable_read_read_fu_78_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        indvar_flatten1_reg_161 <= 66'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten2_fu_264_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        indvar_flatten2_reg_172 <= indvar_flatten_next1_fu_324_p3;
    end else if (((ap_start == 1'b1) & (enable_read_read_fu_78_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        indvar_flatten2_reg_172 <= 35'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten2_fu_264_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        indvar_flatten_reg_183 <= indvar_flatten_next_fu_310_p3;
    end else if (((ap_start == 1'b1) & (enable_read_read_fu_78_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        indvar_flatten_reg_183 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten2_reg_671 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        kx_reg_227 <= kx_1_fu_611_p2;
    end else if (((ap_start == 1'b1) & (enable_read_read_fu_78_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        kx_reg_227 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten2_reg_671 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        ky_reg_216 <= ky_mid2_fu_587_p3;
    end else if (((ap_start == 1'b1) & (enable_read_read_fu_78_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        ky_reg_216 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten2_reg_671 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        x_reg_205 <= x_mid2_fu_510_p3;
    end else if (((ap_start == 1'b1) & (enable_read_read_fu_78_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        x_reg_205 <= 31'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (exitcond_flatten2_reg_671_pp0_iter1_reg == 1'd0))) begin
        y_reg_194 <= tmp_7_mid2_v_reg_727;
    end else if (((ap_start == 1'b1) & (enable_read_read_fu_78_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        y_reg_194 <= 31'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten2_reg_671 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        Xoffset_reg_757 <= Xoffset_fu_599_p2;
        in_index_t_reg_762 <= in_index_t_fu_605_p2;
        tmp_24_reg_732 <= tmp_24_fu_392_p1;
        tmp_29_reg_737 <= tmp_29_fu_461_p3;
        tmp_34_reg_747 <= tmp_34_fu_565_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (enable_read_read_fu_78_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        bound8_reg_661[33 : 2] <= bound8_fu_246_p1[33 : 2];
        bound_reg_666[65 : 2] <= bound_fu_258_p2[65 : 2];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten2_fu_264_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        exitcond_flatten1_reg_697 <= exitcond_flatten1_fu_286_p2;
        exitcond_flatten_mid_reg_702 <= exitcond_flatten_mid_fu_292_p2;
        exitcond_flatten_reg_680 <= exitcond_flatten_fu_275_p2;
        not_exitcond_flatten_reg_692 <= not_exitcond_flatten_fu_280_p2;
        tmp_1_reg_711 <= tmp_1_fu_298_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        exitcond_flatten2_reg_671 <= exitcond_flatten2_fu_264_p2;
        exitcond_flatten2_reg_671_pp0_iter1_reg <= exitcond_flatten2_reg_671;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        in_index_t_reg_762_pp0_iter2_reg <= in_index_t_reg_762;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten2_reg_671 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        tmp_7_mid2_v_reg_727 <= tmp_7_mid2_v_fu_385_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (exitcond_flatten2_reg_671_pp0_iter1_reg == 1'd0))) begin
        tmp_8_reg_771 <= grp_fu_642_p3;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        Input_0_ce0 = 1'b1;
    end else begin
        Input_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        Output_0_ce0 = 1'b1;
    end else begin
        Output_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (in_index_t_reg_762_pp0_iter2_reg == 2'd0))) begin
        Output_0_we0 = 1'b1;
    end else begin
        Output_0_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        Output_1_ce0 = 1'b1;
    end else begin
        Output_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (in_index_t_reg_762_pp0_iter2_reg == 2'd1))) begin
        Output_1_we0 = 1'b1;
    end else begin
        Output_1_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        Output_2_ce0 = 1'b1;
    end else begin
        Output_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (in_index_t_reg_762_pp0_iter2_reg == 2'd2))) begin
        Output_2_we0 = 1'b1;
    end else begin
        Output_2_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        Output_3_ce0 = 1'b1;
    end else begin
        Output_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (in_index_t_reg_762_pp0_iter2_reg == 2'd3))) begin
        Output_3_we0 = 1'b1;
    end else begin
        Output_3_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_condition_pp0_exit_iter1_state3 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter1_state3 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (exitcond_flatten2_reg_671_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_y_phi_fu_198_p4 = tmp_7_mid2_v_reg_727;
    end else begin
        ap_phi_mux_y_phi_fu_198_p4 = y_reg_194;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (enable_read_read_fu_78_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((ap_start == 1'b1) & (enable_read_read_fu_78_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0)) & ~((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign Input_0_address0 = tmp_23_cast_fu_623_p1;

assign Output_0_address0 = tmp_17_cast_fu_627_p1;

assign Output_0_d0 = tmp_7_fu_634_p1;

assign Output_1_address0 = tmp_17_cast_fu_627_p1;

assign Output_1_d0 = tmp_7_fu_634_p1;

assign Output_2_address0 = tmp_17_cast_fu_627_p1;

assign Output_2_d0 = tmp_7_fu_634_p1;

assign Output_3_address0 = tmp_17_cast_fu_627_p1;

assign Output_3_d0 = tmp_7_fu_634_p1;

assign Xoffset_fu_599_p2 = (tmp_6_fu_595_p1 + tmp_5_mid2_fu_480_p3);

assign Yoffset_fu_360_p2 = (tmp_3_fu_356_p1 + tmp_2_fu_336_p3);

assign Yoffset_mid1_fu_545_p2 = (tmp_3_mid1_fu_541_p1 + tmp_2_mid2_fu_408_p3);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign bound8_fu_246_p1 = tmp_fu_238_p3;

assign bound_fu_258_p0 = bound_fu_258_p00;

assign bound_fu_258_p00 = TR_MIN;

assign bound_fu_258_p1 = bound_fu_258_p10;

assign bound_fu_258_p10 = tmp_fu_238_p3;

assign bound_fu_258_p2 = (bound_fu_258_p0 * bound_fu_258_p1);

assign enable_read_read_fu_78_p2 = enable;

assign exitcond_flatten1_fu_286_p2 = ((indvar_flatten_reg_183 == 4'd4) ? 1'b1 : 1'b0);

assign exitcond_flatten2_fu_264_p2 = ((indvar_flatten1_reg_161 == bound_reg_666) ? 1'b1 : 1'b0);

assign exitcond_flatten_fu_275_p2 = ((indvar_flatten2_reg_172 == bound8_reg_661) ? 1'b1 : 1'b0);

assign exitcond_flatten_mid_fu_292_p2 = (not_exitcond_flatten_fu_280_p2 & exitcond_flatten1_fu_286_p2);

assign exitcond_flatten_not_fu_494_p2 = (exitcond_flatten1_reg_697 ^ 1'd1);

assign exitcond_fu_422_p2 = ((kx_reg_227 == 2'd2) ? 1'b1 : 1'b0);

assign exitcond_mid1_fu_504_p2 = (not_exitcond_flatten_1_fu_499_p2 & exitcond_mid_fu_428_p2);

assign exitcond_mid_fu_428_p2 = (not_exitcond_flatten_reg_692 & exitcond_fu_422_p2);

assign grp_fu_642_p0 = 11'd26;

assign grp_fu_648_p0 = 13'd53;

assign grp_fu_648_p1 = grp_fu_648_p10;

assign grp_fu_648_p10 = tmp_34_reg_747;

assign grp_fu_648_p2 = grp_fu_648_p20;

assign grp_fu_648_p20 = Xoffset_reg_757;

assign in_index_t_fu_605_p2 = (kx_mid2_fu_533_p3 + tmp_8_mid2_fu_579_p3);

assign indvar_flatten23_op_fu_318_p2 = (indvar_flatten2_reg_172 + 35'd1);

assign indvar_flatten_next1_fu_324_p3 = ((exitcond_flatten_fu_275_p2[0:0] === 1'b1) ? 35'd1 : indvar_flatten23_op_fu_318_p2);

assign indvar_flatten_next2_fu_269_p2 = (66'd1 + indvar_flatten1_reg_161);

assign indvar_flatten_next_fu_310_p3 = ((tmp_1_fu_298_p2[0:0] === 1'b1) ? 4'd1 : indvar_flatten_op_fu_304_p2);

assign indvar_flatten_op_fu_304_p2 = (indvar_flatten_reg_183 + 4'd1);

assign kx_1_fu_611_p2 = (kx_mid2_fu_533_p3 + 2'd1);

assign kx_mid2_fu_533_p3 = ((tmp_31_fu_528_p2[0:0] === 1'b1) ? 2'd0 : kx_reg_227);

assign ky_1_fu_517_p2 = (2'd1 + ky_mid_fu_439_p3);

assign ky_mid2_fu_587_p3 = ((exitcond_mid1_fu_504_p2[0:0] === 1'b1) ? ky_1_fu_517_p2 : ky_mid_fu_439_p3);

assign ky_mid_fu_439_p3 = ((tmp_1_reg_711[0:0] === 1'b1) ? 2'd0 : ky_reg_216);

assign not_exitcond_flatten_1_fu_499_p2 = (exitcond_flatten_reg_680 | exitcond_flatten_not_fu_494_p2);

assign not_exitcond_flatten_fu_280_p2 = (exitcond_flatten_fu_275_p2 ^ 1'd1);

assign tmp_17_cast_fu_627_p1 = tmp_8_reg_771;

assign tmp_18_fu_332_p1 = ap_phi_mux_y_phi_fu_198_p4[6:0];

assign tmp_19_fu_344_p1 = x_reg_205[6:0];

assign tmp_1_fu_298_p2 = (exitcond_flatten_mid_fu_292_p2 | exitcond_flatten_fu_275_p2);

assign tmp_22_fu_366_p2 = ky_reg_216 << 2'd1;

assign tmp_23_cast_fu_623_p1 = $signed(grp_fu_648_p3);

assign tmp_24_fu_392_p1 = tmp_7_mid2_v_fu_385_p3[10:0];

assign tmp_25_fu_396_p1 = y_1_fu_372_p2[6:0];

assign tmp_26_fu_446_p1 = x_1_fu_433_p2[10:0];

assign tmp_27_fu_450_p1 = x_reg_205[10:0];

assign tmp_28_fu_454_p3 = ((exitcond_flatten_reg_680[0:0] === 1'b1) ? 11'd0 : tmp_27_fu_450_p1);

assign tmp_29_fu_461_p3 = ((exitcond_flatten_mid_reg_702[0:0] === 1'b1) ? tmp_26_fu_446_p1 : tmp_28_fu_454_p3);

assign tmp_2_fu_336_p3 = {{tmp_18_fu_332_p1}, {1'd0}};

assign tmp_2_mid1_fu_400_p3 = {{tmp_25_fu_396_p1}, {1'd0}};

assign tmp_2_mid2_fu_408_p3 = ((exitcond_flatten_reg_680[0:0] === 1'b1) ? tmp_2_mid1_fu_400_p3 : tmp_2_fu_336_p3);

assign tmp_30_fu_468_p1 = x_1_fu_433_p2[6:0];

assign tmp_31_fu_528_p2 = (tmp_9_fu_523_p2 | exitcond_flatten_reg_680);

assign tmp_32_fu_551_p3 = ((exitcond_flatten_reg_680[0:0] === 1'b1) ? tmp_2_mid1_fu_400_p3 : Yoffset_fu_360_p2);

assign tmp_33_fu_558_p3 = ((exitcond_flatten_mid_reg_702[0:0] === 1'b1) ? tmp_2_mid2_fu_408_p3 : tmp_32_fu_551_p3);

assign tmp_34_fu_565_p3 = ((exitcond_mid1_fu_504_p2[0:0] === 1'b1) ? Yoffset_mid1_fu_545_p2 : tmp_33_fu_558_p3);

assign tmp_35_fu_573_p2 = ky_1_fu_517_p2 << 2'd1;

assign tmp_3_fu_356_p1 = ky_reg_216;

assign tmp_3_mid1_fu_541_p1 = ky_1_fu_517_p2;

assign tmp_5_fu_348_p3 = {{tmp_19_fu_344_p1}, {1'd0}};

assign tmp_5_mid1_fu_472_p3 = {{tmp_30_fu_468_p1}, {1'd0}};

assign tmp_5_mid2_fu_480_p3 = ((exitcond_flatten_mid_reg_702[0:0] === 1'b1) ? tmp_5_mid1_fu_472_p3 : tmp_5_mid_fu_415_p3);

assign tmp_5_mid_fu_415_p3 = ((exitcond_flatten_reg_680[0:0] === 1'b1) ? 8'd0 : tmp_5_fu_348_p3);

assign tmp_6_fu_595_p1 = kx_mid2_fu_533_p3;

assign tmp_7_fu_634_p1 = $signed(Input_0_q0);

assign tmp_7_mid2_v_fu_385_p3 = ((exitcond_flatten_reg_680[0:0] === 1'b1) ? y_1_fu_372_p2 : ap_phi_mux_y_phi_fu_198_p4);

assign tmp_8_mid2_fu_579_p3 = ((exitcond_mid1_fu_504_p2[0:0] === 1'b1) ? tmp_35_fu_573_p2 : tmp_8_mid_fu_487_p3);

assign tmp_8_mid_fu_487_p3 = ((tmp_1_reg_711[0:0] === 1'b1) ? 2'd0 : tmp_22_fu_366_p2);

assign tmp_9_fu_523_p2 = (exitcond_mid1_fu_504_p2 | exitcond_flatten_mid_reg_702);

assign tmp_fu_238_p3 = {{TC_MIN}, {2'd0}};

assign x_1_fu_433_p2 = (31'd1 + x_mid_fu_378_p3);

assign x_mid2_fu_510_p3 = ((exitcond_flatten_mid_reg_702[0:0] === 1'b1) ? x_1_fu_433_p2 : x_mid_fu_378_p3);

assign x_mid_fu_378_p3 = ((exitcond_flatten_reg_680[0:0] === 1'b1) ? 31'd0 : x_reg_205);

assign y_1_fu_372_p2 = (31'd1 + ap_phi_mux_y_phi_fu_198_p4);

always @ (posedge ap_clk) begin
    bound8_reg_661[1:0] <= 2'b00;
    bound8_reg_661[34] <= 1'b0;
    bound_reg_666[1:0] <= 2'b00;
end

endmodule //reorg_yolo25
