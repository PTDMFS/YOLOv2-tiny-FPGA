// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module pool_yolo26 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        Input_0_address0,
        Input_0_ce0,
        Input_0_q0,
        Input_1_address0,
        Input_1_ce0,
        Input_1_q0,
        Input_2_address0,
        Input_2_ce0,
        Input_2_q0,
        Input_3_address0,
        Input_3_ce0,
        Input_3_q0,
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
        Kernel_stride,
        TR_MIN,
        TC_MIN,
        enable
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_pp0_stage0 = 3'd2;
parameter    ap_ST_fsm_state7 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [11:0] Input_0_address0;
output   Input_0_ce0;
input  [15:0] Input_0_q0;
output  [11:0] Input_1_address0;
output   Input_1_ce0;
input  [15:0] Input_1_q0;
output  [11:0] Input_2_address0;
output   Input_2_ce0;
input  [15:0] Input_2_q0;
output  [11:0] Input_3_address0;
output   Input_3_ce0;
input  [15:0] Input_3_q0;
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
input  [31:0] Kernel_stride;
input  [31:0] TR_MIN;
input  [31:0] TC_MIN;
input   enable;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg Input_0_ce0;
reg Input_1_ce0;
reg Input_2_ce0;
reg Input_3_ce0;
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
reg   [11:0] indvar_flatten3_reg_230;
reg   [4:0] t_V_reg_241;
reg   [7:0] indvar_flatten4_reg_253;
reg   [3:0] indvar_flatten_reg_264;
reg   [4:0] t_V_2_reg_275;
reg   [1:0] t_V_3_reg_286;
reg   [1:0] t_V_4_reg_297;
wire   [0:0] enable_read_read_fu_102_p2;
wire   [6:0] rhs_V_fu_312_p1;
reg   [6:0] rhs_V_reg_916;
wire   [7:0] bound8_fu_328_p1;
reg   [7:0] bound8_reg_924;
wire   [11:0] bound_fu_344_p2;
reg   [11:0] bound_reg_929;
wire   [0:0] exitcond_flatten4_fu_350_p2;
reg   [0:0] exitcond_flatten4_reg_934;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
wire    ap_block_state4_pp0_stage0_iter2;
wire    ap_block_state5_pp0_stage0_iter3;
wire    ap_block_state6_pp0_stage0_iter4;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] exitcond_flatten4_reg_934_pp0_iter1_reg;
reg   [0:0] exitcond_flatten4_reg_934_pp0_iter2_reg;
reg   [0:0] exitcond_flatten4_reg_934_pp0_iter3_reg;
wire   [11:0] indvar_flatten_next4_fu_355_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [4:0] tr_V_fu_361_p2;
reg   [4:0] tr_V_reg_943;
wire   [0:0] exitcond_flatten_fu_367_p2;
reg   [0:0] exitcond_flatten_reg_948;
wire   [4:0] tmp_15_mid2_v_fu_372_p3;
reg   [4:0] tmp_15_mid2_v_reg_958;
reg   [4:0] tmp_15_mid2_v_reg_958_pp0_iter1_reg;
reg   [4:0] tmp_15_mid2_v_reg_958_pp0_iter2_reg;
reg   [4:0] tmp_15_mid2_v_reg_958_pp0_iter3_reg;
wire   [0:0] not_exitcond_flatten_fu_380_p2;
reg   [0:0] not_exitcond_flatten_reg_964;
wire   [0:0] exitcond_flatten2_fu_386_p2;
reg   [0:0] exitcond_flatten2_reg_971;
wire   [0:0] exitcond_flatten_mid_fu_392_p2;
reg   [0:0] exitcond_flatten_mid_reg_976;
wire   [0:0] tmp_17_fu_398_p2;
reg   [0:0] tmp_17_reg_984;
wire   [3:0] indvar_flatten_next_fu_410_p3;
wire   [7:0] indvar_flatten_next3_fu_424_p3;
wire   [4:0] tmp_16_mid2_fu_549_p3;
reg   [4:0] tmp_16_mid2_reg_999;
reg    ap_enable_reg_pp0_iter1;
reg   [4:0] tmp_16_mid2_reg_999_pp0_iter2_reg;
reg   [4:0] tmp_16_mid2_reg_999_pp0_iter3_reg;
wire   [6:0] tmp_44_fu_644_p3;
reg   [6:0] tmp_44_reg_1005;
wire   [1:0] t_V_3_mid2_fu_666_p3;
wire   [0:0] tmp_10_fu_678_p2;
reg   [0:0] tmp_10_reg_1015;
reg   [0:0] tmp_10_reg_1015_pp0_iter2_reg;
wire   [6:0] ret_V_5_fu_688_p2;
reg   [6:0] ret_V_5_reg_1023;
wire   [0:0] or_cond_fu_700_p2;
reg   [0:0] or_cond_reg_1028;
reg   [0:0] or_cond_reg_1028_pp0_iter2_reg;
reg   [0:0] or_cond_reg_1028_pp0_iter3_reg;
wire   [1:0] j_V_fu_706_p2;
wire  signed [15:0] tmp_0_tmp_0_3_fu_741_p3;
reg  signed [15:0] tmp_0_tmp_0_3_reg_1057;
wire  signed [15:0] tmp_1_1_fu_770_p3;
reg  signed [15:0] tmp_1_1_reg_1062;
wire  signed [15:0] tmp_2_1_fu_799_p3;
reg  signed [15:0] tmp_2_1_reg_1067;
wire  signed [15:0] tmp_3_1_fu_828_p3;
reg  signed [15:0] tmp_3_1_reg_1072;
wire    ap_block_pp0_stage0_subdone;
reg    ap_enable_reg_pp0_iter2;
reg    ap_condition_pp0_exit_iter1_state3;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg   [4:0] ap_phi_mux_t_V_phi_fu_245_p4;
wire    ap_block_pp0_stage0;
reg   [4:0] ap_phi_mux_t_V_2_phi_fu_279_p4;
wire  signed [63:0] tmp_32_cast_fu_718_p1;
wire   [63:0] tmp_29_cast_fu_847_p1;
reg   [15:0] tmp_0_3_fu_86;
reg   [15:0] tmp_1_2_fu_90;
reg   [15:0] tmp_2_2_fu_94;
reg   [15:0] tmp_3_2_fu_98;
wire   [1:0] Kernel_stride_2b_V_fu_308_p1;
wire   [4:0] tmp_37_fu_316_p1;
wire   [6:0] tmp_s_fu_320_p3;
wire   [4:0] tmp_38_fu_332_p1;
wire   [6:0] bound_fu_344_p0;
wire   [4:0] bound_fu_344_p1;
wire   [3:0] indvar_flatten_op_fu_404_p2;
wire   [7:0] indvar_flatten33_op_fu_418_p2;
wire   [1:0] ret_V_6_fu_436_p0;
wire   [4:0] ret_V_6_fu_436_p1;
wire   [1:0] ret_V_fu_445_p0;
wire   [4:0] ret_V_fu_445_p1;
wire   [6:0] rhs_V_6_cast_fu_450_p1;
wire   [6:0] ret_V_6_fu_436_p2;
wire   [1:0] ret_V_7_mid1_fu_470_p0;
wire   [4:0] ret_V_7_mid1_fu_470_p1;
wire   [6:0] ret_V_7_mid1_fu_470_p2;
wire   [6:0] ret_V_fu_445_p2;
wire   [0:0] tmp_39_fu_489_p1;
wire   [0:0] tmp_16_fu_498_p2;
wire   [0:0] exitcond_fu_509_p2;
wire   [4:0] t_V_2_mid_fu_460_p3;
wire   [4:0] tc_V_fu_520_p2;
wire   [1:0] ret_V_mid1_fu_537_p0;
wire   [4:0] ret_V_mid1_fu_537_p1;
wire   [6:0] ret_V_mid1_fu_537_p2;
wire   [6:0] ret_V_mid_fu_482_p3;
wire   [0:0] exitcond_flatten_not_fu_556_p2;
wire   [0:0] t_V_3_cast_mid_fu_493_p2;
wire   [0:0] not_exitcond_flatten_2_fu_561_p2;
wire   [0:0] tmp_18_mid_fu_504_p2;
wire   [0:0] exitcond4_mid_fu_515_p2;
wire   [1:0] t_V_3_mid_fu_526_p3;
wire   [0:0] exitcond4_mid1_fu_578_p2;
wire   [0:0] tmp_19_fu_590_p2;
wire   [0:0] tmp_40_fu_595_p2;
wire   [1:0] i_V_fu_584_p2;
wire   [0:0] tmp_41_fu_608_p1;
wire   [0:0] t_V_3_cast_mid3_fu_566_p2;
wire   [6:0] rhs_V_6_cast_mid1_fu_620_p1;
wire   [6:0] ret_V_7_mid2_fu_475_p3;
wire   [6:0] ret_V_7_fu_454_p2;
wire   [6:0] tmp_42_fu_630_p3;
wire   [6:0] ret_V_8_mid1_fu_624_p2;
wire   [6:0] tmp_43_fu_637_p3;
wire   [0:0] tmp_18_mid1_fu_652_p2;
wire   [0:0] tmp_18_mid3_fu_572_p2;
wire   [1:0] t_V_4_mid2_fu_600_p3;
wire   [0:0] tmp_45_fu_674_p1;
wire   [0:0] t_V_3_cast_mid2_fu_612_p3;
wire   [6:0] rhs_V_5_cast_fu_684_p1;
wire   [6:0] ret_V_mid2_fu_542_p3;
wire   [0:0] tmp_18_mid2_fu_658_p3;
wire   [0:0] tmp_12_fu_694_p2;
wire   [12:0] grp_fu_870_p3;
wire   [15:0] p_tmp_0_3_fu_728_p3;
wire   [0:0] tmp_13_fu_735_p2;
wire   [15:0] tmp_1_5_fu_757_p3;
wire   [0:0] tmp_52_1_fu_764_p2;
wire   [15:0] tmp_2_5_fu_786_p3;
wire   [0:0] tmp_52_2_fu_793_p2;
wire   [15:0] tmp_3_5_fu_815_p3;
wire   [0:0] tmp_52_3_fu_822_p2;
wire   [9:0] grp_fu_879_p3;
wire   [6:0] grp_fu_870_p0;
wire   [6:0] grp_fu_870_p1;
wire   [6:0] grp_fu_870_p2;
wire   [5:0] grp_fu_879_p0;
wire   [4:0] grp_fu_879_p1;
wire   [4:0] grp_fu_879_p2;
wire    ap_CS_fsm_state7;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire   [11:0] bound_fu_344_p00;
wire   [11:0] bound_fu_344_p10;
wire   [12:0] grp_fu_870_p10;
wire   [12:0] grp_fu_870_p20;
wire   [9:0] grp_fu_879_p10;
wire   [9:0] grp_fu_879_p20;
wire   [6:0] ret_V_6_fu_436_p10;
wire   [6:0] ret_V_7_mid1_fu_470_p10;
wire   [6:0] ret_V_fu_445_p10;
wire   [6:0] ret_V_mid1_fu_537_p10;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
end

YOLO2_FPGA_mac_muqcK #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 7 ),
    .din1_WIDTH( 7 ),
    .din2_WIDTH( 7 ),
    .dout_WIDTH( 13 ))
YOLO2_FPGA_mac_muqcK_U564(
    .din0(grp_fu_870_p0),
    .din1(grp_fu_870_p1),
    .din2(grp_fu_870_p2),
    .dout(grp_fu_870_p3)
);

YOLO2_FPGA_mac_murcU #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 6 ),
    .din1_WIDTH( 5 ),
    .din2_WIDTH( 5 ),
    .dout_WIDTH( 10 ))
YOLO2_FPGA_mac_murcU_U565(
    .din0(grp_fu_879_p0),
    .din1(grp_fu_879_p1),
    .din2(grp_fu_879_p2),
    .dout(grp_fu_879_p3)
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
        if (((exitcond_flatten4_fu_350_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((enable_read_read_fu_102_p2 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
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
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end else if (((enable_read_read_fu_102_p2 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter4 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten4_fu_350_p2 == 1'd0))) begin
        indvar_flatten3_reg_230 <= indvar_flatten_next4_fu_355_p2;
    end else if (((enable_read_read_fu_102_p2 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        indvar_flatten3_reg_230 <= 12'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten4_fu_350_p2 == 1'd0))) begin
        indvar_flatten4_reg_253 <= indvar_flatten_next3_fu_424_p3;
    end else if (((enable_read_read_fu_102_p2 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        indvar_flatten4_reg_253 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten4_fu_350_p2 == 1'd0))) begin
        indvar_flatten_reg_264 <= indvar_flatten_next_fu_410_p3;
    end else if (((enable_read_read_fu_102_p2 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        indvar_flatten_reg_264 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (exitcond_flatten4_reg_934_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        t_V_2_reg_275 <= tmp_16_mid2_reg_999;
    end else if (((enable_read_read_fu_102_p2 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        t_V_2_reg_275 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten4_reg_934 == 1'd0))) begin
        t_V_3_reg_286 <= t_V_3_mid2_fu_666_p3;
    end else if (((enable_read_read_fu_102_p2 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        t_V_3_reg_286 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten4_reg_934 == 1'd0))) begin
        t_V_4_reg_297 <= j_V_fu_706_p2;
    end else if (((enable_read_read_fu_102_p2 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        t_V_4_reg_297 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten4_reg_934 == 1'd0))) begin
        t_V_reg_241 <= tmp_15_mid2_v_reg_958;
    end else if (((enable_read_read_fu_102_p2 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        t_V_reg_241 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((enable_read_read_fu_102_p2 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        bound8_reg_924[6 : 2] <= bound8_fu_328_p1[6 : 2];
        bound_reg_929 <= bound_fu_344_p2;
        rhs_V_reg_916[1 : 0] <= rhs_V_fu_312_p1[1 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten4_fu_350_p2 == 1'd0))) begin
        exitcond_flatten2_reg_971 <= exitcond_flatten2_fu_386_p2;
        exitcond_flatten_mid_reg_976 <= exitcond_flatten_mid_fu_392_p2;
        exitcond_flatten_reg_948 <= exitcond_flatten_fu_367_p2;
        not_exitcond_flatten_reg_964 <= not_exitcond_flatten_fu_380_p2;
        tmp_17_reg_984 <= tmp_17_fu_398_p2;
        tr_V_reg_943 <= tr_V_fu_361_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        exitcond_flatten4_reg_934 <= exitcond_flatten4_fu_350_p2;
        exitcond_flatten4_reg_934_pp0_iter1_reg <= exitcond_flatten4_reg_934;
        tmp_15_mid2_v_reg_958_pp0_iter1_reg <= tmp_15_mid2_v_reg_958;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        exitcond_flatten4_reg_934_pp0_iter2_reg <= exitcond_flatten4_reg_934_pp0_iter1_reg;
        exitcond_flatten4_reg_934_pp0_iter3_reg <= exitcond_flatten4_reg_934_pp0_iter2_reg;
        or_cond_reg_1028_pp0_iter2_reg <= or_cond_reg_1028;
        or_cond_reg_1028_pp0_iter3_reg <= or_cond_reg_1028_pp0_iter2_reg;
        tmp_10_reg_1015_pp0_iter2_reg <= tmp_10_reg_1015;
        tmp_15_mid2_v_reg_958_pp0_iter2_reg <= tmp_15_mid2_v_reg_958_pp0_iter1_reg;
        tmp_15_mid2_v_reg_958_pp0_iter3_reg <= tmp_15_mid2_v_reg_958_pp0_iter2_reg;
        tmp_16_mid2_reg_999_pp0_iter2_reg <= tmp_16_mid2_reg_999;
        tmp_16_mid2_reg_999_pp0_iter3_reg <= tmp_16_mid2_reg_999_pp0_iter2_reg;
        tmp_1_1_reg_1062 <= tmp_1_1_fu_770_p3;
        tmp_2_1_reg_1067 <= tmp_2_1_fu_799_p3;
        tmp_3_1_reg_1072 <= tmp_3_1_fu_828_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten4_reg_934 == 1'd0))) begin
        or_cond_reg_1028 <= or_cond_fu_700_p2;
        ret_V_5_reg_1023 <= ret_V_5_fu_688_p2;
        tmp_10_reg_1015 <= tmp_10_fu_678_p2;
        tmp_44_reg_1005 <= tmp_44_fu_644_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (exitcond_flatten4_reg_934_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_0_3_fu_86 <= tmp_0_tmp_0_3_fu_741_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten4_reg_934_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_0_tmp_0_3_reg_1057 <= tmp_0_tmp_0_3_fu_741_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten4_fu_350_p2 == 1'd0))) begin
        tmp_15_mid2_v_reg_958 <= tmp_15_mid2_v_fu_372_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten4_reg_934 == 1'd0))) begin
        tmp_16_mid2_reg_999 <= tmp_16_mid2_fu_549_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_1_2_fu_90 <= tmp_1_1_fu_770_p3;
        tmp_2_2_fu_94 <= tmp_2_1_fu_799_p3;
        tmp_3_2_fu_98 <= tmp_3_1_fu_828_p3;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        Input_0_ce0 = 1'b1;
    end else begin
        Input_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        Input_1_ce0 = 1'b1;
    end else begin
        Input_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        Input_2_ce0 = 1'b1;
    end else begin
        Input_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        Input_3_ce0 = 1'b1;
    end else begin
        Input_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        Output_0_ce0 = 1'b1;
    end else begin
        Output_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((or_cond_reg_1028_pp0_iter3_reg == 1'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        Output_0_we0 = 1'b1;
    end else begin
        Output_0_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        Output_1_ce0 = 1'b1;
    end else begin
        Output_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((or_cond_reg_1028_pp0_iter3_reg == 1'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        Output_1_we0 = 1'b1;
    end else begin
        Output_1_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        Output_2_ce0 = 1'b1;
    end else begin
        Output_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((or_cond_reg_1028_pp0_iter3_reg == 1'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        Output_2_we0 = 1'b1;
    end else begin
        Output_2_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        Output_3_ce0 = 1'b1;
    end else begin
        Output_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((or_cond_reg_1028_pp0_iter3_reg == 1'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
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
    if (((1'b1 == ap_CS_fsm_state7) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (exitcond_flatten4_reg_934_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_t_V_2_phi_fu_279_p4 = tmp_16_mid2_reg_999;
    end else begin
        ap_phi_mux_t_V_2_phi_fu_279_p4 = t_V_2_reg_275;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (exitcond_flatten4_reg_934 == 1'd0))) begin
        ap_phi_mux_t_V_phi_fu_245_p4 = tmp_15_mid2_v_reg_958;
    end else begin
        ap_phi_mux_t_V_phi_fu_245_p4 = t_V_reg_241;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((enable_read_read_fu_102_p2 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((enable_read_read_fu_102_p2 == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_enable_reg_pp0_iter2 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b0)) & ~((ap_enable_reg_pp0_iter3 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((ap_enable_reg_pp0_iter3 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1)) | ((ap_enable_reg_pp0_iter2 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign Input_0_address0 = tmp_32_cast_fu_718_p1;

assign Input_1_address0 = tmp_32_cast_fu_718_p1;

assign Input_2_address0 = tmp_32_cast_fu_718_p1;

assign Input_3_address0 = tmp_32_cast_fu_718_p1;

assign Kernel_stride_2b_V_fu_308_p1 = Kernel_stride[1:0];

assign Output_0_address0 = tmp_29_cast_fu_847_p1;

assign Output_0_d0 = $signed(tmp_0_tmp_0_3_reg_1057);

assign Output_1_address0 = tmp_29_cast_fu_847_p1;

assign Output_1_d0 = $signed(tmp_1_1_reg_1062);

assign Output_2_address0 = tmp_29_cast_fu_847_p1;

assign Output_2_d0 = $signed(tmp_2_1_reg_1067);

assign Output_3_address0 = tmp_29_cast_fu_847_p1;

assign Output_3_d0 = $signed(tmp_3_1_reg_1072);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign bound8_fu_328_p1 = tmp_s_fu_320_p3;

assign bound_fu_344_p0 = bound_fu_344_p00;

assign bound_fu_344_p00 = tmp_s_fu_320_p3;

assign bound_fu_344_p1 = bound_fu_344_p10;

assign bound_fu_344_p10 = tmp_38_fu_332_p1;

assign bound_fu_344_p2 = (bound_fu_344_p0 * bound_fu_344_p1);

assign enable_read_read_fu_102_p2 = enable;

assign exitcond4_mid1_fu_578_p2 = (not_exitcond_flatten_2_fu_561_p2 & exitcond4_mid_fu_515_p2);

assign exitcond4_mid_fu_515_p2 = (not_exitcond_flatten_reg_964 & exitcond_fu_509_p2);

assign exitcond_flatten2_fu_386_p2 = ((indvar_flatten_reg_264 == 4'd4) ? 1'b1 : 1'b0);

assign exitcond_flatten4_fu_350_p2 = ((indvar_flatten3_reg_230 == bound_reg_929) ? 1'b1 : 1'b0);

assign exitcond_flatten_fu_367_p2 = ((indvar_flatten4_reg_253 == bound8_reg_924) ? 1'b1 : 1'b0);

assign exitcond_flatten_mid_fu_392_p2 = (not_exitcond_flatten_fu_380_p2 & exitcond_flatten2_fu_386_p2);

assign exitcond_flatten_not_fu_556_p2 = (exitcond_flatten2_reg_971 ^ 1'd1);

assign exitcond_fu_509_p2 = ((t_V_4_reg_297 == 2'd2) ? 1'b1 : 1'b0);

assign grp_fu_870_p0 = 13'd53;

assign grp_fu_870_p1 = grp_fu_870_p10;

assign grp_fu_870_p10 = tmp_44_reg_1005;

assign grp_fu_870_p2 = grp_fu_870_p20;

assign grp_fu_870_p20 = ret_V_5_reg_1023;

assign grp_fu_879_p0 = 10'd26;

assign grp_fu_879_p1 = grp_fu_879_p10;

assign grp_fu_879_p10 = tmp_15_mid2_v_reg_958_pp0_iter3_reg;

assign grp_fu_879_p2 = grp_fu_879_p20;

assign grp_fu_879_p20 = tmp_16_mid2_reg_999_pp0_iter3_reg;

assign i_V_fu_584_p2 = (2'd1 + t_V_3_mid_fu_526_p3);

assign indvar_flatten33_op_fu_418_p2 = (indvar_flatten4_reg_253 + 8'd1);

assign indvar_flatten_next3_fu_424_p3 = ((exitcond_flatten_fu_367_p2[0:0] === 1'b1) ? 8'd1 : indvar_flatten33_op_fu_418_p2);

assign indvar_flatten_next4_fu_355_p2 = (indvar_flatten3_reg_230 + 12'd1);

assign indvar_flatten_next_fu_410_p3 = ((tmp_17_fu_398_p2[0:0] === 1'b1) ? 4'd1 : indvar_flatten_op_fu_404_p2);

assign indvar_flatten_op_fu_404_p2 = (indvar_flatten_reg_264 + 4'd1);

assign j_V_fu_706_p2 = (t_V_4_mid2_fu_600_p3 + 2'd1);

assign not_exitcond_flatten_2_fu_561_p2 = (exitcond_flatten_reg_948 | exitcond_flatten_not_fu_556_p2);

assign not_exitcond_flatten_fu_380_p2 = (exitcond_flatten_fu_367_p2 ^ 1'd1);

assign or_cond_fu_700_p2 = (tmp_18_mid2_fu_658_p3 & tmp_12_fu_694_p2);

assign p_tmp_0_3_fu_728_p3 = ((tmp_10_reg_1015_pp0_iter2_reg[0:0] === 1'b1) ? tmp_0_3_fu_86 : 16'd32769);

assign ret_V_5_fu_688_p2 = (rhs_V_5_cast_fu_684_p1 + ret_V_mid2_fu_542_p3);

assign ret_V_6_fu_436_p0 = rhs_V_reg_916;

assign ret_V_6_fu_436_p1 = ret_V_6_fu_436_p10;

assign ret_V_6_fu_436_p10 = t_V_reg_241;

assign ret_V_6_fu_436_p2 = (ret_V_6_fu_436_p0 * ret_V_6_fu_436_p1);

assign ret_V_7_fu_454_p2 = (rhs_V_6_cast_fu_450_p1 + ret_V_6_fu_436_p2);

assign ret_V_7_mid1_fu_470_p0 = rhs_V_reg_916;

assign ret_V_7_mid1_fu_470_p1 = ret_V_7_mid1_fu_470_p10;

assign ret_V_7_mid1_fu_470_p10 = tr_V_reg_943;

assign ret_V_7_mid1_fu_470_p2 = (ret_V_7_mid1_fu_470_p0 * ret_V_7_mid1_fu_470_p1);

assign ret_V_7_mid2_fu_475_p3 = ((exitcond_flatten_reg_948[0:0] === 1'b1) ? ret_V_7_mid1_fu_470_p2 : ret_V_6_fu_436_p2);

assign ret_V_8_mid1_fu_624_p2 = (rhs_V_6_cast_mid1_fu_620_p1 + ret_V_7_mid2_fu_475_p3);

assign ret_V_fu_445_p0 = rhs_V_reg_916;

assign ret_V_fu_445_p1 = ret_V_fu_445_p10;

assign ret_V_fu_445_p10 = ap_phi_mux_t_V_2_phi_fu_279_p4;

assign ret_V_fu_445_p2 = (ret_V_fu_445_p0 * ret_V_fu_445_p1);

assign ret_V_mid1_fu_537_p0 = rhs_V_reg_916;

assign ret_V_mid1_fu_537_p1 = ret_V_mid1_fu_537_p10;

assign ret_V_mid1_fu_537_p10 = tc_V_fu_520_p2;

assign ret_V_mid1_fu_537_p2 = (ret_V_mid1_fu_537_p0 * ret_V_mid1_fu_537_p1);

assign ret_V_mid2_fu_542_p3 = ((exitcond_flatten_mid_reg_976[0:0] === 1'b1) ? ret_V_mid1_fu_537_p2 : ret_V_mid_fu_482_p3);

assign ret_V_mid_fu_482_p3 = ((exitcond_flatten_reg_948[0:0] === 1'b1) ? 7'd0 : ret_V_fu_445_p2);

assign rhs_V_5_cast_fu_684_p1 = t_V_4_mid2_fu_600_p3;

assign rhs_V_6_cast_fu_450_p1 = t_V_3_reg_286;

assign rhs_V_6_cast_mid1_fu_620_p1 = i_V_fu_584_p2;

assign rhs_V_fu_312_p1 = Kernel_stride_2b_V_fu_308_p1;

assign t_V_2_mid_fu_460_p3 = ((exitcond_flatten_reg_948[0:0] === 1'b1) ? 5'd0 : ap_phi_mux_t_V_2_phi_fu_279_p4);

assign t_V_3_cast_mid2_fu_612_p3 = ((exitcond4_mid1_fu_578_p2[0:0] === 1'b1) ? tmp_41_fu_608_p1 : t_V_3_cast_mid3_fu_566_p2);

assign t_V_3_cast_mid3_fu_566_p2 = (t_V_3_cast_mid_fu_493_p2 & not_exitcond_flatten_2_fu_561_p2);

assign t_V_3_cast_mid_fu_493_p2 = (tmp_39_fu_489_p1 & not_exitcond_flatten_reg_964);

assign t_V_3_mid2_fu_666_p3 = ((exitcond4_mid1_fu_578_p2[0:0] === 1'b1) ? i_V_fu_584_p2 : t_V_3_mid_fu_526_p3);

assign t_V_3_mid_fu_526_p3 = ((tmp_17_reg_984[0:0] === 1'b1) ? 2'd0 : t_V_3_reg_286);

assign t_V_4_mid2_fu_600_p3 = ((tmp_40_fu_595_p2[0:0] === 1'b1) ? 2'd0 : t_V_4_reg_297);

assign tc_V_fu_520_p2 = (5'd1 + t_V_2_mid_fu_460_p3);

assign tmp_0_tmp_0_3_fu_741_p3 = ((tmp_13_fu_735_p2[0:0] === 1'b1) ? Input_0_q0 : p_tmp_0_3_fu_728_p3);

assign tmp_10_fu_678_p2 = (tmp_45_fu_674_p1 | t_V_3_cast_mid2_fu_612_p3);

assign tmp_12_fu_694_p2 = ((t_V_4_mid2_fu_600_p3 == 2'd1) ? 1'b1 : 1'b0);

assign tmp_13_fu_735_p2 = (($signed(Input_0_q0) > $signed(p_tmp_0_3_fu_728_p3)) ? 1'b1 : 1'b0);

assign tmp_15_mid2_v_fu_372_p3 = ((exitcond_flatten_fu_367_p2[0:0] === 1'b1) ? tr_V_fu_361_p2 : ap_phi_mux_t_V_phi_fu_245_p4);

assign tmp_16_fu_498_p2 = ((t_V_3_reg_286 == 2'd1) ? 1'b1 : 1'b0);

assign tmp_16_mid2_fu_549_p3 = ((exitcond_flatten_mid_reg_976[0:0] === 1'b1) ? tc_V_fu_520_p2 : t_V_2_mid_fu_460_p3);

assign tmp_17_fu_398_p2 = (exitcond_flatten_mid_fu_392_p2 | exitcond_flatten_fu_367_p2);

assign tmp_18_mid1_fu_652_p2 = ((t_V_3_mid_fu_526_p3 == 2'd0) ? 1'b1 : 1'b0);

assign tmp_18_mid2_fu_658_p3 = ((exitcond4_mid1_fu_578_p2[0:0] === 1'b1) ? tmp_18_mid1_fu_652_p2 : tmp_18_mid3_fu_572_p2);

assign tmp_18_mid3_fu_572_p2 = (tmp_18_mid_fu_504_p2 & not_exitcond_flatten_2_fu_561_p2);

assign tmp_18_mid_fu_504_p2 = (tmp_16_fu_498_p2 & not_exitcond_flatten_reg_964);

assign tmp_19_fu_590_p2 = (exitcond_flatten_mid_reg_976 | exitcond4_mid1_fu_578_p2);

assign tmp_1_1_fu_770_p3 = ((tmp_52_1_fu_764_p2[0:0] === 1'b1) ? Input_1_q0 : tmp_1_5_fu_757_p3);

assign tmp_1_5_fu_757_p3 = ((tmp_10_reg_1015_pp0_iter2_reg[0:0] === 1'b1) ? tmp_1_2_fu_90 : 16'd32769);

assign tmp_29_cast_fu_847_p1 = grp_fu_879_p3;

assign tmp_2_1_fu_799_p3 = ((tmp_52_2_fu_793_p2[0:0] === 1'b1) ? Input_2_q0 : tmp_2_5_fu_786_p3);

assign tmp_2_5_fu_786_p3 = ((tmp_10_reg_1015_pp0_iter2_reg[0:0] === 1'b1) ? tmp_2_2_fu_94 : 16'd32769);

assign tmp_32_cast_fu_718_p1 = $signed(grp_fu_870_p3);

assign tmp_37_fu_316_p1 = TC_MIN[4:0];

assign tmp_38_fu_332_p1 = TR_MIN[4:0];

assign tmp_39_fu_489_p1 = t_V_3_reg_286[0:0];

assign tmp_3_1_fu_828_p3 = ((tmp_52_3_fu_822_p2[0:0] === 1'b1) ? Input_3_q0 : tmp_3_5_fu_815_p3);

assign tmp_3_5_fu_815_p3 = ((tmp_10_reg_1015_pp0_iter2_reg[0:0] === 1'b1) ? tmp_3_2_fu_98 : 16'd32769);

assign tmp_40_fu_595_p2 = (tmp_19_fu_590_p2 | exitcond_flatten_reg_948);

assign tmp_41_fu_608_p1 = i_V_fu_584_p2[0:0];

assign tmp_42_fu_630_p3 = ((exitcond_flatten_reg_948[0:0] === 1'b1) ? ret_V_7_mid1_fu_470_p2 : ret_V_7_fu_454_p2);

assign tmp_43_fu_637_p3 = ((exitcond_flatten_mid_reg_976[0:0] === 1'b1) ? ret_V_7_mid2_fu_475_p3 : tmp_42_fu_630_p3);

assign tmp_44_fu_644_p3 = ((exitcond4_mid1_fu_578_p2[0:0] === 1'b1) ? ret_V_8_mid1_fu_624_p2 : tmp_43_fu_637_p3);

assign tmp_45_fu_674_p1 = t_V_4_mid2_fu_600_p3[0:0];

assign tmp_52_1_fu_764_p2 = (($signed(Input_1_q0) > $signed(tmp_1_5_fu_757_p3)) ? 1'b1 : 1'b0);

assign tmp_52_2_fu_793_p2 = (($signed(Input_2_q0) > $signed(tmp_2_5_fu_786_p3)) ? 1'b1 : 1'b0);

assign tmp_52_3_fu_822_p2 = (($signed(Input_3_q0) > $signed(tmp_3_5_fu_815_p3)) ? 1'b1 : 1'b0);

assign tmp_s_fu_320_p3 = {{tmp_37_fu_316_p1}, {2'd0}};

assign tr_V_fu_361_p2 = (5'd1 + ap_phi_mux_t_V_phi_fu_245_p4);

always @ (posedge ap_clk) begin
    rhs_V_reg_916[6:2] <= 5'b00000;
    bound8_reg_924[1:0] <= 2'b00;
    bound8_reg_924[7] <= 1'b0;
end

endmodule //pool_yolo26
