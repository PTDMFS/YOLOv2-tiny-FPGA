// ==============================================================
// File generated on Tue May 21 16:49:20 +0800 2024
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1ns/1ps

module YOLO2_FPGA_DATA_BUS5_m_axi
#(parameter
    CONSERVATIVE            = 0,
    NUM_READ_OUTSTANDING    = 2,
    NUM_WRITE_OUTSTANDING   = 2,
    MAX_READ_BURST_LENGTH   = 16,
    MAX_WRITE_BURST_LENGTH  = 16,
    C_M_AXI_ID_WIDTH        = 1,
    C_M_AXI_ADDR_WIDTH      = 32,
    C_TARGET_ADDR           = 32'h00000000,
    C_M_AXI_DATA_WIDTH      = 32,
    C_M_AXI_AWUSER_WIDTH    = 1,
    C_M_AXI_ARUSER_WIDTH    = 1,
    C_M_AXI_WUSER_WIDTH     = 1,
    C_M_AXI_RUSER_WIDTH     = 1,
    C_M_AXI_BUSER_WIDTH     = 1,
    C_USER_VALUE            = 1'b0,
    C_PROT_VALUE            = 3'b000,
    C_CACHE_VALUE           = 4'b0011,
    USER_DW                 = 16,
    USER_AW                 = 32,
    USER_MAXREQS            = 16
)(
    // system signal
    input  wire                         ACLK,
    input  wire                         ARESET,
    input  wire                         ACLK_EN,
    // write address channel
    output wire [C_M_AXI_ID_WIDTH-1:0]        AWID,
    output wire [C_M_AXI_ADDR_WIDTH-1:0]      AWADDR,
    output wire [7:0]                   AWLEN,
    output wire [2:0]                   AWSIZE,
    output wire [1:0]                   AWBURST,
    output wire [1:0]                   AWLOCK,
    output wire [3:0]                   AWCACHE,
    output wire [2:0]                   AWPROT,
    output wire [3:0]                   AWQOS,
    output wire [3:0]                   AWREGION,
    output wire [C_M_AXI_AWUSER_WIDTH-1:0]    AWUSER,
    output wire                         AWVALID,
    input  wire                         AWREADY,
    // write data channel
    output wire [C_M_AXI_ID_WIDTH-1:0]        WID,
    output wire [C_M_AXI_DATA_WIDTH-1:0]      WDATA,
    output wire [C_M_AXI_DATA_WIDTH/8-1:0]    WSTRB,
    output wire                         WLAST,
    output wire [C_M_AXI_WUSER_WIDTH-1:0]     WUSER,
    output wire                         WVALID,
    input  wire                         WREADY,
    // write response channel
    input  wire [C_M_AXI_ID_WIDTH-1:0]        BID,
    input  wire [1:0]                   BRESP,
    input  wire [C_M_AXI_BUSER_WIDTH-1:0]     BUSER,
    input  wire                         BVALID,
    output wire                         BREADY,
    // read address channel
    output wire [C_M_AXI_ID_WIDTH-1:0]        ARID,
    output wire [C_M_AXI_ADDR_WIDTH-1:0]      ARADDR,
    output wire [7:0]                   ARLEN,
    output wire [2:0]                   ARSIZE,
    output wire [1:0]                   ARBURST,
    output wire [1:0]                   ARLOCK,
    output wire [3:0]                   ARCACHE,
    output wire [2:0]                   ARPROT,
    output wire [3:0]                   ARQOS,
    output wire [3:0]                   ARREGION,
    output wire [C_M_AXI_ARUSER_WIDTH-1:0]    ARUSER,
    output wire                         ARVALID,
    input  wire                         ARREADY,
    // read data channel
    input  wire [C_M_AXI_ID_WIDTH-1:0]        RID,
    input  wire [C_M_AXI_DATA_WIDTH-1:0]      RDATA,
    input  wire [1:0]                   RRESP,
    input  wire                         RLAST,
    input  wire [C_M_AXI_RUSER_WIDTH-1:0]     RUSER,
    input  wire                         RVALID,
    output wire                         RREADY,

    // internal bus ports
    // write address
    input  wire [C_M_AXI_ID_WIDTH-1:0]        I_AWID,
    input  wire [USER_AW-1:0]           I_AWADDR,
    input  wire [31:0]                  I_AWLEN,
    input  wire [2:0]                   I_AWSIZE,
    input  wire [1:0]                   I_AWBURST,
    input  wire [1:0]                   I_AWLOCK,
    input  wire [3:0]                   I_AWCACHE,
    input  wire [2:0]                   I_AWPROT,
    input  wire [3:0]                   I_AWQOS,
    input  wire [3:0]                   I_AWREGION,
    input  wire [C_M_AXI_AWUSER_WIDTH-1:0]    I_AWUSER,
    input  wire                         I_AWVALID,
    output wire                         I_AWREADY,
    // write data
    input  wire [C_M_AXI_ID_WIDTH-1:0]        I_WID,
    input  wire [USER_DW-1:0]           I_WDATA,
    input  wire                         I_WLAST,
    input  wire [USER_DW/8-1:0]         I_WSTRB,
    input  wire [C_M_AXI_WUSER_WIDTH-1:0]     I_WUSER,
    input  wire                         I_WVALID,
    output wire                         I_WREADY,
    // write response
    output wire [C_M_AXI_ID_WIDTH-1:0]        I_BID,
    output wire [1:0]                   I_BRESP,
    output wire [C_M_AXI_BUSER_WIDTH-1:0]     I_BUSER,
    output wire                         I_BVALID,
    input  wire                         I_BREADY,
    // read address
    input  wire [C_M_AXI_ID_WIDTH-1:0]        I_ARID,
    input  wire [USER_AW-1:0]           I_ARADDR,
    input  wire [31:0]                  I_ARLEN,
    input  wire [2:0]                   I_ARSIZE,
    input  wire [1:0]                   I_ARBURST,
    input  wire [1:0]                   I_ARLOCK,
    input  wire [3:0]                   I_ARCACHE,
    input  wire [2:0]                   I_ARPROT,
    input  wire [3:0]                   I_ARQOS,
    input  wire [3:0]                   I_ARREGION,
    input  wire [C_M_AXI_ARUSER_WIDTH-1:0]    I_ARUSER,
    input  wire                         I_ARVALID,
    output wire                         I_ARREADY,
    // read data
    output wire [C_M_AXI_ID_WIDTH-1:0]        I_RID,
    output wire [USER_DW-1:0]           I_RDATA,
    output wire [1:0]                   I_RRESP,
    output wire                         I_RLAST,
    output wire [C_M_AXI_RUSER_WIDTH-1:0]     I_RUSER,
    output wire                         I_RVALID,
    input  wire                         I_RREADY
);
//------------------------Parameter----------------------

//------------------------Local signal-------------------
wire  [C_M_AXI_ADDR_WIDTH-1:0]      AWADDR_Dummy;
wire  [7:0]                         AWLEN_Dummy;
wire                                AWVALID_Dummy;
wire                                AWREADY_Dummy;
wire  [C_M_AXI_DATA_WIDTH-1:0]      WDATA_Dummy;
wire  [C_M_AXI_DATA_WIDTH/8-1:0]    WSTRB_Dummy;
wire                                WLAST_Dummy;
wire                                WVALID_Dummy;
wire                                WREADY_Dummy;

// Write Address channel throttling unit
YOLO2_FPGA_DATA_BUS5_m_axi_throttl #(
    .USED_FIX(0),
    .ADDR_WIDTH(C_M_AXI_ADDR_WIDTH),
    .DATA_WIDTH(C_M_AXI_DATA_WIDTH),
    .DEPTH(MAX_WRITE_BURST_LENGTH),
    .USER_MAXREQS(NUM_WRITE_OUTSTANDING),
    .CONSERVATIVE(CONSERVATIVE),
    .AVERAGE_MODE(0)
) wreq_throttl (
    .clk(ACLK),
    .reset(ARESET),
    .ce(ACLK_EN),
    .in_addr(AWADDR_Dummy),
    .in_len(AWLEN_Dummy),
    .in_req_valid(AWVALID_Dummy),
    .out_req_ready(AWREADY_Dummy),
    .out_addr(AWADDR),
    .out_len(AWLEN),
    .out_req_valid(AWVALID),
    .in_req_ready(AWREADY),
    .in_data(WDATA_Dummy),
    .in_strb(WSTRB_Dummy),
    .in_last(WLAST_Dummy),
    .in_data_valid(WVALID_Dummy),
    .out_data_ready(WREADY_Dummy),
    .out_data(WDATA),
    .out_strb(WSTRB),
    .out_last(WLAST),
    .out_data_valid(WVALID),
    .in_data_ready(WREADY)
);
// END of write Address channel throttling unit

assign I_BID = 1'b0;
assign I_BUSER = C_USER_VALUE;
assign I_RID = 1'b0;
assign I_RLAST = 1'b0;
assign I_RUSER = C_USER_VALUE;
//------------------------Instantiation------------------

// YOLO2_FPGA_DATA_BUS5_m_axi_write
YOLO2_FPGA_DATA_BUS5_m_axi_write #(
    .NUM_WRITE_OUTSTANDING   ( NUM_WRITE_OUTSTANDING ),
    .MAX_WRITE_BURST_LENGTH  ( MAX_WRITE_BURST_LENGTH ),
    .C_M_AXI_ID_WIDTH        ( C_M_AXI_ID_WIDTH ),
    .C_M_AXI_ADDR_WIDTH      ( C_M_AXI_ADDR_WIDTH ),
    .C_TARGET_ADDR           ( C_TARGET_ADDR ),
    .C_M_AXI_DATA_WIDTH      ( C_M_AXI_DATA_WIDTH ),
    .C_M_AXI_AWUSER_WIDTH    ( C_M_AXI_AWUSER_WIDTH ),
    .C_M_AXI_WUSER_WIDTH     ( C_M_AXI_WUSER_WIDTH ),
    .C_M_AXI_BUSER_WIDTH     ( C_M_AXI_BUSER_WIDTH ),
    .C_USER_VALUE            ( C_USER_VALUE ),
    .C_PROT_VALUE            ( C_PROT_VALUE ),
    .C_CACHE_VALUE           ( C_CACHE_VALUE ),
    .USER_DW                 ( USER_DW ),
    .USER_AW                 ( USER_AW ),
    .USER_MAXREQS            ( USER_MAXREQS )
) bus_write (
    .ACLK              ( ACLK ),
    .ARESET            ( ARESET ),
    .ACLK_EN           ( ACLK_EN ),
    .AWID              ( AWID ),
    .AWADDR            ( AWADDR_Dummy ),
    .AWLEN             ( AWLEN_Dummy ),
    .AWSIZE            ( AWSIZE ),
    .AWBURST           ( AWBURST ),
    .AWLOCK            ( AWLOCK ),
    .AWCACHE           ( AWCACHE ),
    .AWPROT            ( AWPROT ),
    .AWQOS             ( AWQOS ),
    .AWREGION          ( AWREGION ),
    .AWUSER            ( AWUSER ),
    .AWVALID           ( AWVALID_Dummy ),
    .AWREADY           ( AWREADY_Dummy ),
    .WID               ( WID),
    .WDATA             ( WDATA_Dummy ),
    .WSTRB             ( WSTRB_Dummy ),
    .WLAST             ( WLAST_Dummy ),
    .WUSER             ( WUSER),
    .WVALID            ( WVALID_Dummy ),
    .WREADY            ( WREADY_Dummy ),
    .BID               ( BID ),
    .BRESP             ( BRESP ),
    .BUSER             ( BUSER ),
    .BVALID            ( BVALID ),
    .BREADY            ( BREADY ),
    .wreq_valid        ( I_AWVALID ),
    .wreq_ack    ( I_AWREADY ),
    .wreq_addr         ( I_AWADDR ),
    .wreq_length       ( I_AWLEN ),
    .wreq_cache        ( I_AWCACHE ),
    .wreq_prot         ( I_AWPROT ),
    .wreq_qos          ( I_AWQOS ),
    .wreq_region       ( I_AWREGION ),
    .wreq_user         ( I_AWUSER ),
    .wdata_valid     ( I_WVALID ),
    .wdata_ack         ( I_WREADY ),
    .wdata_strb        ( I_WSTRB ),
    .wdata_user        ( I_WUSER ),
    .wdata_data        ( I_WDATA ),
    .wrsp_valid        ( I_BVALID ),
    .wrsp_ack          ( I_BREADY ),
    .wrsp              ( I_BRESP )
);

// YOLO2_FPGA_DATA_BUS5_m_axi_read
YOLO2_FPGA_DATA_BUS5_m_axi_read #(
    .NUM_READ_OUTSTANDING     ( NUM_READ_OUTSTANDING ),
    .MAX_READ_BURST_LENGTH    ( MAX_READ_BURST_LENGTH ),
    .C_M_AXI_ID_WIDTH         ( C_M_AXI_ID_WIDTH ),
    .C_M_AXI_ADDR_WIDTH       ( C_M_AXI_ADDR_WIDTH ),
    .C_TARGET_ADDR            ( C_TARGET_ADDR ),
    .C_M_AXI_DATA_WIDTH       ( C_M_AXI_DATA_WIDTH ),
    .C_M_AXI_ARUSER_WIDTH     ( C_M_AXI_ARUSER_WIDTH ),
    .C_M_AXI_RUSER_WIDTH      ( C_M_AXI_RUSER_WIDTH ),
    .C_USER_VALUE             ( C_USER_VALUE ),
    .C_PROT_VALUE             ( C_PROT_VALUE ),
    .C_CACHE_VALUE            ( C_CACHE_VALUE ),
    .USER_DW                  ( USER_DW ),
    .USER_AW                  ( USER_AW ),
    .USER_MAXREQS             ( USER_MAXREQS )
) bus_read (
    .ACLK              ( ACLK ),
    .ARESET            ( ARESET ),
    .ACLK_EN           ( ACLK_EN ),
    .ARID              ( ARID ),
    .ARADDR            ( ARADDR ),
    .ARLEN             ( ARLEN ),
    .ARSIZE            ( ARSIZE ),
    .ARBURST           ( ARBURST ),
    .ARLOCK            ( ARLOCK ),
    .ARCACHE           ( ARCACHE ),
    .ARPROT            ( ARPROT ),
    .ARQOS             ( ARQOS ),
    .ARREGION          ( ARREGION ),
    .ARUSER            ( ARUSER ),
    .ARVALID           ( ARVALID ),
    .ARREADY           ( ARREADY ),
    .RID               ( RID ),
    .RDATA             ( RDATA ),
    .RRESP             ( RRESP ),
    .RLAST             ( RLAST ),
    .RUSER             ( RUSER ),
    .RVALID            ( RVALID ),
    .RREADY            ( RREADY ),
    .rreq_valid        ( I_ARVALID ),
    .rreq_ack     ( I_ARREADY ),
    .rreq_addr         ( I_ARADDR ),
    .rreq_length       ( I_ARLEN ),
    .rreq_cache        ( I_ARCACHE ),
    .rreq_prot         ( I_ARPROT ),
    .rreq_qos          ( I_ARQOS ),
    .rreq_region       ( I_ARREGION ),
    .rreq_user         ( I_ARUSER ),
    .rdata_valid       ( I_RVALID ),
    .rdata_ack         ( I_RREADY ),
    .rdata_data        ( I_RDATA ),
    .rrsp              ( I_RRESP )
);
endmodule

module YOLO2_FPGA_DATA_BUS5_m_axi_reg_slice
#(parameter
    N = 8   // data width
) (
    // system signals
    input  wire         sclk,
    input  wire         reset,
    // slave side
    input  wire [N-1:0] s_data,
    input  wire         s_valid,
    output wire         s_ready,
    // master side
    output wire [N-1:0] m_data,
    output wire         m_valid,
    input  wire         m_ready
);
//------------------------Parameter----------------------
// state
localparam [1:0]
    ZERO = 2'b10,
    ONE  = 2'b11,
    TWO  = 2'b01;
//------------------------Local signal-------------------
reg  [N-1:0] data_p1;
reg  [N-1:0] data_p2;
wire         load_p1;
wire         load_p2;
wire         load_p1_from_p2;
reg          s_ready_t;
reg  [1:0]   state;
reg  [1:0]   next;
//------------------------Body---------------------------
assign s_ready = s_ready_t;
assign m_data  = data_p1;
assign m_valid = state[0];

assign load_p1 = (state == ZERO && s_valid) ||
                 (state == ONE && s_valid && m_ready) ||
                 (state == TWO && m_ready);
assign load_p2 = s_valid & s_ready;
assign load_p1_from_p2 = (state == TWO);

// data_p1
always @(posedge sclk) begin
    if (load_p1) begin
        if (load_p1_from_p2)
            data_p1 <= data_p2;
        else
            data_p1 <= s_data;
    end
end

// data_p2
always @(posedge sclk) begin
    if (load_p2) data_p2 <= s_data;
end

// s_ready_t
always @(posedge sclk) begin
    if (reset)
        s_ready_t <= 1'b0;
    else if (state == ZERO)
        s_ready_t <= 1'b1;
    else if (state == ONE && next == TWO)
        s_ready_t <= 1'b0;
    else if (state == TWO && next == ONE)
        s_ready_t <= 1'b1;
end

// state
always @(posedge sclk) begin
    if (reset)
        state <= ZERO;
    else
        state <= next;
end

// next
always @(*) begin
    case (state)
        ZERO:
            if (s_valid & s_ready)
                next = ONE;
            else
                next = ZERO;
        ONE:
            if (~s_valid & m_ready)
                next = ZERO;
            else if (s_valid & ~m_ready)
                next = TWO;
            else
                next = ONE;
        TWO:
            if (m_ready)
                next = ONE;
            else
                next = TWO;
        default:
            next = ZERO;
    endcase
end

endmodule

module YOLO2_FPGA_DATA_BUS5_m_axi_fifo
#(parameter
    DATA_BITS  = 8,
    DEPTH      = 16,
    DEPTH_BITS = 4
)(
    input  wire                 sclk,
    input  wire                 reset,
    input  wire                 sclk_en,
    output reg                  empty_n,
    output reg                  full_n,
    input  wire                 rdreq,
    input  wire                 wrreq,
    output reg  [DATA_BITS-1:0] q,
    input  wire [DATA_BITS-1:0] data
);
//------------------------Parameter----------------------

//------------------------Local signal-------------------
wire                  push;
wire                  pop;
wire                  full_cond;
reg                   data_vld;
reg  [DEPTH_BITS-1:0] pout;
reg  [DATA_BITS-1:0]  mem[0:DEPTH-1];
//------------------------Body---------------------------
assign push = full_n & wrreq;
assign pop  = data_vld & (~(empty_n & ~rdreq));
if (DEPTH >= 2) begin
assign full_cond = push && ~pop && pout == DEPTH - 2 && data_vld;
end else begin
assign full_cond = push && ~pop;
end

// q
always @(posedge sclk)
begin
    if (reset)
        q <= 0;
    else if (sclk_en) begin
        if (~(empty_n & ~rdreq))
            q <= mem[pout];
    end
end

// empty_n
always @(posedge sclk)
begin
    if (reset)
        empty_n <= 1'b0;
    else if (sclk_en) begin
        if (~(empty_n & ~rdreq))
            empty_n <= data_vld;
    end
end

// data_vld
always @(posedge sclk)
begin
    if (reset)
        data_vld <= 1'b0;
    else if (sclk_en) begin
        if (push)
            data_vld <= 1'b1;
        else if (~push && pop && pout == 1'b0)
            data_vld <= 1'b0;
    end
end

// full_n
always @(posedge sclk)
begin
    if (reset)
        full_n <= 1'b1;
    else if (sclk_en) begin
        if (pop)
            full_n <= 1'b1;
        else if (full_cond)
            full_n <= 1'b0;
    end
end

// pout
always @(posedge sclk)
begin
    if (reset)
        pout <= 1'b0;
    else if (sclk_en) begin
        if (push & ~pop & data_vld)
            pout <= pout + 1'b1;
        else if (~push && pop && pout != 1'b0)
            pout <= pout - 1'b1;
    end
end

integer i;
always @(posedge sclk)
begin
    if (sclk_en) begin
        if (push) begin
            for (i = 0; i < DEPTH - 1; i = i + 1) begin
                mem[i+1] <= mem[i];
            end
            mem[0] <= data;
        end
    end
end
endmodule

module YOLO2_FPGA_DATA_BUS5_m_axi_buffer
#(parameter
    MEM_STYLE  = "block",
    DATA_WIDTH = 32,
    ADDR_WIDTH = 5,
    DEPTH      = 32
) (
    // system signal
    input  wire                  clk,
    input  wire                  reset,
    input  wire                  sclk_en,

    // write
    output wire                  if_full_n,
    input  wire                  if_write_ce,
    input  wire                  if_write,
    input  wire [DATA_WIDTH-1:0] if_din,

    // read
    output wire                  if_empty_n,
    input  wire                  if_read_ce,
    input  wire                  if_read,
    output wire [DATA_WIDTH-1:0] if_dout
);
//------------------------Parameter----------------------

//------------------------Local signal-------------------
(* ram_style = MEM_STYLE *)
reg  [DATA_WIDTH-1:0] mem[0:DEPTH-1];
reg  [DATA_WIDTH-1:0] q_buf = 1'b0;
reg  [ADDR_WIDTH-1:0] waddr = 1'b0;
reg  [ADDR_WIDTH-1:0] raddr = 1'b0;
wire [ADDR_WIDTH-1:0] wnext;
wire [ADDR_WIDTH-1:0] rnext;
wire                  push;
wire                  pop;
reg  [ADDR_WIDTH-1:0] usedw = 1'b0;
reg                   full_n = 1'b1;
reg                   empty_n = 1'b0;
reg  [DATA_WIDTH-1:0] q_tmp = 1'b0;
reg                   show_ahead = 1'b0;
reg  [DATA_WIDTH-1:0] dout_buf = 1'b0;
reg                   dout_valid = 1'b0;


//------------------------Instantiation------------------

//------------------------Task and function--------------

//------------------------Body---------------------------
assign if_full_n  = full_n;
assign if_empty_n = dout_valid;
assign if_dout    = dout_buf;
assign push       = full_n & if_write_ce & if_write;
assign pop        = empty_n & if_read_ce & (~dout_valid | if_read);
assign wnext      = !push                ? waddr :
                    (waddr == DEPTH - 1) ? 1'b0  :
                    waddr + 1'b1;
assign rnext      = !pop                 ? raddr :
                    (raddr == DEPTH - 1) ? 1'b0  :
                    raddr + 1'b1;

// waddr
always @(posedge clk) begin
    if (reset == 1'b1)
        waddr <= 1'b0;
    else if (sclk_en)
        waddr <= wnext;
end

// raddr
always @(posedge clk) begin
    if (reset == 1'b1)
        raddr <= 1'b0;
    else if (sclk_en)
        raddr <= rnext;
end

// usedw
always @(posedge clk) begin
    if (reset == 1'b1)
        usedw <= 1'b0;
    else if (sclk_en)
        if (push & ~pop)
            usedw <= usedw + 1'b1;
        else if (~push & pop)
            usedw <= usedw - 1'b1;
end

// full_n
always @(posedge clk) begin
    if (reset == 1'b1)
        full_n <= 1'b1;
    else if (sclk_en)
        if (push & ~pop)
            full_n <= (usedw != DEPTH - 1);
        else if (~push & pop)
            full_n <= 1'b1;
end

// empty_n
always @(posedge clk) begin
    if (reset == 1'b1)
        empty_n <= 1'b0;
    else if (sclk_en)
        if (push & ~pop)
            empty_n <= 1'b1;
        else if (~push & pop)
            empty_n <= (usedw != 1'b1);
end

// mem
always @(posedge clk) begin
    if (push)
        mem[waddr] <= if_din;
end

// q_buf
always @(posedge clk) begin
    q_buf <= mem[rnext];
end

// q_tmp
always @(posedge clk) begin
    if (reset == 1'b1)
        q_tmp <= 1'b0;
    else if (sclk_en)
        if (push)
            q_tmp <= if_din;
end

// show_ahead
always @(posedge clk) begin
    if (reset == 1'b1)
        show_ahead <= 1'b0;
    else if (sclk_en)
        if (push && usedw == pop)
            show_ahead <= 1'b1;
        else
            show_ahead <= 1'b0;
end

// dout_buf
always @(posedge clk) begin
    if (reset == 1'b1)
        dout_buf <= 1'b0;
    else if (sclk_en)
        if (pop)
            dout_buf <= show_ahead? q_tmp : q_buf;
end

// dout_valid
always @(posedge clk) begin
    if (reset == 1'b1)
        dout_valid <= 1'b0;
    else if (sclk_en)
        if (pop)
            dout_valid <= 1'b1;
        else if (if_read_ce & if_read)
            dout_valid <= 1'b0;
end

endmodule
`timescale 1ns/1ps

module YOLO2_FPGA_DATA_BUS5_m_axi_decoder
#(parameter
    DIN_WIDTH       = 3
)(
    input  wire [DIN_WIDTH-1:0]         din,
    output reg  [2**DIN_WIDTH-1:0]      dout
);
    integer i;
    always @(din) begin
        dout = {2**DIN_WIDTH{1'b0}};
        for (i=0; i < din; i = i + 1)
            dout[i] = 1'b1;
    end
endmodule


module YOLO2_FPGA_DATA_BUS5_m_axi_throttl
#(parameter
    USED_FIX       = 0,
    FIX_VALUE      = 4,
    ADDR_WIDTH     = 32,
    DATA_WIDTH     = 32,
    DEPTH          = 16,
    USER_MAXREQS   = 16,
    CONSERVATIVE   = 0, 
    AVERAGE_MODE   = 0 
)(
    input                       clk,
    input                       reset,
    input                       ce,
    input  [ADDR_WIDTH-1:0]     in_addr,
    input  [7:0]                in_len,
    input                       in_req_valid,
    output                      out_req_ready,
    output [ADDR_WIDTH-1:0]     out_addr,
    output [7:0]                out_len,
    output                      out_req_valid,
    input                       in_req_ready,
    input  [DATA_WIDTH-1:0]     in_data,
    input  [DATA_WIDTH/8-1:0]   in_strb,
    input                       in_last,
    input                       in_data_valid,
    output                      out_data_ready,
    output [DATA_WIDTH-1:0]     out_data,
    output [DATA_WIDTH/8-1:0]   out_strb,
    output                      out_last,
    output                      out_data_valid,
    input                       in_data_ready
);

function integer log2;
    input integer x;
    integer n, m;
begin
    n = 0;
    m = 1;
    while (m < x) begin
        n = n + 1;
        m = m * 2;
    end
    log2 = n;
end
endfunction

generate
if (CONSERVATIVE == 0) begin
localparam threshold = (USED_FIX)? FIX_VALUE-1 : 0;

wire                req_en;
wire                handshake;
wire  [7:0]         load_init;
reg   [7:0]         throttl_cnt;

// AW Channel
assign out_addr       = in_addr;
assign out_len        = in_len;

// W Channel
assign out_data       = in_data;
assign out_strb       = in_strb;
assign out_last       = in_last;
assign out_data_valid = in_data_valid;
assign out_data_ready = in_data_ready;

if (USED_FIX) begin
    assign load_init = FIX_VALUE-1;
    assign handshake = 1'b1;
end else if (AVERAGE_MODE) begin
    assign load_init = in_len;
    assign handshake = 1'b1;
end else begin
    assign load_init = in_len;
    assign handshake = out_data_valid & in_data_ready;
end

assign out_req_valid = in_req_valid & req_en;
assign out_req_ready = in_req_ready & req_en;
assign req_en = (throttl_cnt == 0);

always @(posedge clk)
begin
    if (reset)
        throttl_cnt <= 0;
    else if (ce) begin
        if (in_len > threshold && throttl_cnt == 0 && in_req_valid && in_req_ready)
            throttl_cnt <= load_init; //load
        else if (throttl_cnt > 0 && handshake)
            throttl_cnt <= throttl_cnt - 1'b1;
    end
end

end // AGGRESSIVE end
else begin
localparam CNT_WIDTH = (DEPTH < 4)? 2 : log2(DEPTH);

wire  [DATA_WIDTH + DATA_WIDTH/8 : 0]   data_in;
wire  [DATA_WIDTH + DATA_WIDTH/8 : 0]   data_out;
wire  [ADDR_WIDTH + 7 : 0]              req_in;
wire  [ADDR_WIDTH + 7 : 0]              req_out;
wire                                    req_en;
wire                                    data_en;
wire                                    fifo_valid;
wire                                    read_fifo;
wire                                    req_fifo_valid;
wire                                    read_req;
wire                                    data_push;
wire                                    data_pop;
reg                                     flying_req;
reg   [CNT_WIDTH-1 : 0]                 last_cnt;

//AW Channel
assign req_in   = {in_len, in_addr};
assign out_addr = req_out[ADDR_WIDTH-1 : 0];
assign out_len  = req_out[ADDR_WIDTH+7 : ADDR_WIDTH];
assign out_req_valid = req_fifo_valid & req_en;

assign req_en        = ~flying_req & data_en || (flying_req & (out_last & data_pop) & (last_cnt[CNT_WIDTH-1:1] != 0));
assign read_req      = in_req_ready & req_en;

always @(posedge clk)
begin
    if (reset)
        flying_req <= 0;
    else if (ce) begin
        if (out_req_valid & in_req_ready)
            flying_req <= 1;
        else if (out_last & data_pop)
            flying_req <= 0;
    end
end

YOLO2_FPGA_DATA_BUS5_m_axi_fifo #(
    .DATA_BITS(ADDR_WIDTH + 8),
    .DEPTH(USER_MAXREQS),
    .DEPTH_BITS(log2(USER_MAXREQS))
) req_fifo (
    .sclk(clk),
    .reset(reset),
    .sclk_en(ce),
    .empty_n(req_fifo_valid),
    .full_n(out_req_ready),
    .rdreq(read_req),
    .wrreq(in_req_valid),
    .q(req_out),
    .data(req_in));

//W Channel
assign data_in  = {in_last, in_strb, in_data};
assign out_data = data_out[DATA_WIDTH-1 : 0];
assign out_strb = data_out[DATA_WIDTH+DATA_WIDTH/8-1 : DATA_WIDTH];
assign out_last = data_out[DATA_WIDTH+DATA_WIDTH/8];
assign out_data_valid = fifo_valid & data_en & flying_req;

assign data_en   = last_cnt != 0;
assign data_push = in_data_valid & out_data_ready;
assign data_pop  = fifo_valid & read_fifo;
assign read_fifo = in_data_ready & data_en & flying_req;

always @(posedge clk)
begin
    if (reset)
        last_cnt <= 0;
    else if (ce) begin
        if ((in_last & data_push) && ~(out_last & data_pop))
            last_cnt <= last_cnt + 1;
        else if (~(in_last & data_push) && (out_last & data_pop))
            last_cnt <= last_cnt - 1;
    end
end

YOLO2_FPGA_DATA_BUS5_m_axi_fifo #(
    .DATA_BITS(DATA_WIDTH + DATA_WIDTH/8 + 1),
    .DEPTH(DEPTH),
    .DEPTH_BITS(log2(DEPTH))
) data_fifo (
    .sclk(clk),
    .reset(reset),
    .sclk_en(ce),
    .empty_n(fifo_valid),
    .full_n(out_data_ready),
    .rdreq(read_fifo),
    .wrreq(in_data_valid),
    .q(data_out),
    .data(data_in));

end
endgenerate

endmodule

`timescale 1ns/1ps

module YOLO2_FPGA_DATA_BUS5_m_axi_read
#(parameter
    NUM_READ_OUTSTANDING      = 2,
    MAX_READ_BURST_LENGTH     = 16,
    C_M_AXI_ID_WIDTH          = 1,
    C_M_AXI_ADDR_WIDTH        = 32,
    C_TARGET_ADDR             = 32'h00000000,
    C_M_AXI_DATA_WIDTH        = 32,
    C_M_AXI_ARUSER_WIDTH      = 1,
    C_M_AXI_RUSER_WIDTH       = 1,
    C_USER_VALUE              = 1'b0,
    C_PROT_VALUE              = 3'b000,
    C_CACHE_VALUE             = 4'b0011,
    USER_DW                   = 16,
    USER_AW                   = 32,
    USER_MAXREQS              = 16
)(
    // system signal
    input  wire                         ACLK,
    input  wire                         ARESET,
    input  wire                         ACLK_EN,
    // read address channel
    output wire [C_M_AXI_ID_WIDTH-1:0]        ARID,
    output wire [C_M_AXI_ADDR_WIDTH-1:0]      ARADDR,
    output wire [7:0]                   ARLEN,
    output wire [2:0]                   ARSIZE,
    output wire [1:0]                   ARBURST,
    output wire [1:0]                   ARLOCK,
    output wire [3:0]                   ARCACHE,
    output wire [2:0]                   ARPROT,
    output wire [3:0]                   ARQOS,
    output wire [3:0]                   ARREGION,
    output wire [C_M_AXI_ARUSER_WIDTH-1:0]    ARUSER,
    output wire                         ARVALID,
    input  wire                         ARREADY,
    // read data channel
    input  wire [C_M_AXI_ID_WIDTH-1:0]        RID,
    input  wire [C_M_AXI_DATA_WIDTH-1:0]      RDATA,
    input  wire [1:0]                   RRESP,
    input  wire                         RLAST,
    input  wire [C_M_AXI_RUSER_WIDTH-1:0]     RUSER,
    input  wire                         RVALID,
    output wire                         RREADY,
    // read
    input  wire                         rreq_valid,
    output wire                         rreq_ack,
    input  wire [USER_AW-1:0]           rreq_addr,
    input  wire [31:0]                  rreq_length,
    input  wire [3:0]                   rreq_cache,
    input  wire [2:0]                   rreq_prot,
    input  wire [3:0]                   rreq_qos,
    input  wire [3:0]                   rreq_region,
    input  wire [C_M_AXI_ARUSER_WIDTH-1:0]    rreq_user,
    output wire [USER_DW-1:0]           rdata_data,
    output wire [1:0]                   rrsp,
    output wire                         rdata_valid,
    input  wire                         rdata_ack
);

//------------------------Parameter----------------------
localparam
    USER_DATA_WIDTH = calc_data_width(USER_DW),
    USER_DATA_BYTES = USER_DATA_WIDTH / 8,
    USER_ADDR_ALIGN = log2(USER_DATA_BYTES),
    BUS_DATA_WIDTH  = C_M_AXI_DATA_WIDTH,
    BUS_DATA_BYTES  = BUS_DATA_WIDTH / 8,
    BUS_ADDR_ALIGN  = log2(BUS_DATA_BYTES),
    NUM_READ_WIDTH = log2(MAX_READ_BURST_LENGTH),
    TARGET_ADDR     = C_TARGET_ADDR & (32'hffffffff << USER_ADDR_ALIGN),
    BOUNDARY_BEATS  = {12-BUS_ADDR_ALIGN{1'b1}};

//------------------------Task and function--------------
function integer calc_data_width;
    input integer x;
    integer y;
begin
    y = 8;
    while (y < x) y = y * 2;
    calc_data_width = y;
end
endfunction

function integer log2;
    input integer x;
    integer n, m;
begin
    n = 0;
    m = 1;
    while (m < x) begin
        n = n + 1;
        m = m * 2;
    end
    log2 = n;
end
endfunction

//------------------------Local signal-------------------
    // AR channel
    wire [USER_AW + 31:0]                   rreq_data;
    wire [USER_AW + 31:0]                   rs2f_rreq_data;
    wire                                      rs2f_rreq_valid;
    wire                                      rs2f_rreq_ack;
    wire [USER_AW + 31:0]                   fifo_rreq_data;
    wire [USER_AW - 1:0]                    tmp_addr;
    wire [31:0]                             tmp_len;
    reg  [31:0]                             align_len;
    wire [7:0]                              arlen_tmp;
    wire [C_M_AXI_ADDR_WIDTH - 1:0]               araddr_tmp;
    reg  [C_M_AXI_ADDR_WIDTH - 1:0]               start_addr;
    reg  [C_M_AXI_ADDR_WIDTH - 1:0]               start_addr_buf;
    wire [C_M_AXI_ADDR_WIDTH - 1:0]               end_addr;
    reg  [C_M_AXI_ADDR_WIDTH - 1:0]               end_addr_buf;
    wire [C_M_AXI_ADDR_WIDTH - 1:0]               sect_addr;
    reg  [C_M_AXI_ADDR_WIDTH - 1:0]               sect_addr_buf;
    wire [BUS_ADDR_ALIGN - 1:0]             sect_end;
    reg  [BUS_ADDR_ALIGN - 1:0]             sect_end_buf;
    wire [BUS_ADDR_ALIGN - 1:0]             burst_end;
    wire [11 - BUS_ADDR_ALIGN:0]            start_to_4k;
    wire [11 - BUS_ADDR_ALIGN:0]            sect_len;
    reg  [11 - BUS_ADDR_ALIGN:0]            sect_len_buf;
    reg  [11 - BUS_ADDR_ALIGN:0]            beat_len_buf;
    reg  [C_M_AXI_ADDR_WIDTH - 13:0]              sect_cnt;
    wire [1:0]                              ar2r_ardata;
    wire                                    fifo_rctl_r;
    wire                                    zero_len_event;
    wire                                    negative_len_event;
    reg                                     invalid_len_event;
    reg                                     invalid_len_event_reg1;
    reg                                     invalid_len_event_reg2;
    wire                                    fifo_rreq_valid;
    reg                                     fifo_rreq_valid_buf;
    wire                                    fifo_rreq_read;
    wire                                    fifo_burst_w;
    wire                                    fifo_resp_w;
    reg                                     ARVALID_Dummy;
    wire                                    ready_for_sect;
    wire                                    next_rreq;
    wire                                    ready_for_rreq;
    reg                                     rreq_handling;
    wire                                    first_sect;
    wire                                    last_sect;
    wire                                    next_sect;
    // R channel
    wire    [BUS_DATA_WIDTH + 2:0]          fifo_rresp_rdata;
    wire    [BUS_DATA_WIDTH + 2:0]          data_pack;
    wire    [BUS_DATA_WIDTH - 1:0]          tmp_data;
    wire    [USER_DW + 1:0]                 rs_rrsp_rdata;
    wire    [USER_DW + 1:0]                 rdata_data_pack;
    reg     [7:0]                           len_cnt;
    wire    [1:0]                           ar2r_rdata;
    wire    [1:0]                           tmp_resp;
    reg     [1:0]                           resp_buf;
    wire                                    tmp_last;
    wire                                    tmp_last_2;
    wire                                    need_rlast;
    wire                                    fifo_rctl_ready;
    wire                                    beat_valid;
    wire                                    next_beat;
    wire                                    burst_valid;
    wire                                    fifo_burst_ready;
    wire                                    next_burst;
    wire                                    rdata_ack_t;
    reg                                     rdata_valid_t;

//------------------------AR channel begin---------------
//------------------------Instantiation------------------
    YOLO2_FPGA_DATA_BUS5_m_axi_reg_slice #(
        .N(USER_AW + 32)
    ) rs_rreq (
        .sclk(ACLK),
        .reset(ARESET),
        .s_data(rreq_data),
        .s_valid(rreq_valid),
        .s_ready(rreq_ack),
        .m_data(rs2f_rreq_data),
        .m_valid(rs2f_rreq_valid),
        .m_ready(rs2f_rreq_ack));

    YOLO2_FPGA_DATA_BUS5_m_axi_fifo #(
        .DATA_BITS(USER_AW + 32),
        .DEPTH(USER_MAXREQS),
        .DEPTH_BITS(log2(USER_MAXREQS))
    ) fifo_rreq (
        .sclk(ACLK),
        .reset(ARESET),
        .sclk_en(ACLK_EN),
        .full_n(rs2f_rreq_ack),
        .wrreq(rs2f_rreq_valid),
        .data(rs2f_rreq_data),
        .empty_n(fifo_rreq_valid),
        .rdreq(fifo_rreq_read),
        .q(fifo_rreq_data));

//------------------------Body---------------------------
    assign rreq_data   = {rreq_length, rreq_addr};
    assign tmp_addr    = fifo_rreq_data[USER_AW - 1:0];
    assign tmp_len     = fifo_rreq_data[USER_AW + 31:USER_AW];
    assign end_addr    = start_addr + align_len;

    assign zero_len_event = fifo_rreq_valid? (tmp_len == 32'b0) : 0;
    assign negative_len_event = fifo_rreq_valid? tmp_len[31] : 0;

    always @(posedge ACLK)
    begin
        if (ARESET)
            align_len   <= 0;
        else if (ACLK_EN) begin
            if(fifo_rreq_valid && ready_for_rreq)
                align_len   <= (tmp_len << USER_ADDR_ALIGN) - 1;
        end
    end

    always @(posedge ACLK)
    begin
        if (ARESET)
            start_addr <= 0;
        else if (ACLK_EN) begin
            if(fifo_rreq_valid && ready_for_rreq)
                start_addr <= TARGET_ADDR + (tmp_addr << USER_ADDR_ALIGN);
        end
    end

    always @(posedge ACLK)
    begin
        if (ARESET)
            fifo_rreq_valid_buf <= 1'b0;
        else if (ACLK_EN) begin
            if((fifo_rreq_valid || fifo_rreq_valid_buf) && ready_for_rreq)
                fifo_rreq_valid_buf <= fifo_rreq_valid;
        end
    end

    always @(posedge ACLK)
    begin
        if (ARESET)
            invalid_len_event <= 1'b0;
        else if (ACLK_EN) begin
            if((fifo_rreq_valid || fifo_rreq_valid_buf) && ready_for_rreq)
                invalid_len_event <= zero_len_event || negative_len_event;
        end
    end

    assign next_rreq      = (fifo_rreq_valid || fifo_rreq_valid_buf) && ready_for_rreq;
    assign ready_for_rreq = ~(rreq_handling && ~(last_sect && next_sect));
    assign fifo_rreq_read = next_rreq;

    always @(posedge ACLK)
    begin
        if (ARESET)
            rreq_handling <= 1'b0;
        else if (ACLK_EN) begin
            if (fifo_rreq_valid_buf && ~rreq_handling && ~invalid_len_event)
                rreq_handling <= 1'b1;
            else if ((~fifo_rreq_valid_buf || invalid_len_event) && last_sect && next_sect)
                rreq_handling <= 1'b0;
        end
    end

    always @(posedge ACLK)
    begin
        if (ARESET)
            start_addr_buf <= 0;
        else if (ACLK_EN) begin
            if (next_rreq)
                start_addr_buf <= start_addr;
        end
    end

    always @(posedge ACLK)
    begin
        if (ARESET)
            end_addr_buf <= 0;
        else if (ACLK_EN) begin
            if (next_rreq)
                end_addr_buf <= end_addr;
        end
    end

    always @(posedge ACLK)
    begin
        if (ARESET)
            beat_len_buf <= 0;
        else if (ACLK_EN) begin
            if (next_rreq)
                beat_len_buf <= (align_len[11:0] + start_addr[BUS_ADDR_ALIGN-1:0]) >> BUS_ADDR_ALIGN;
        end
    end

    always @(posedge ACLK)
    begin
        if (ARESET)
            sect_cnt <= 0;
        else if (ACLK_EN) begin
            if (next_rreq)
                sect_cnt <= start_addr[C_M_AXI_ADDR_WIDTH-1:12];
            else if (next_sect)
                sect_cnt <= sect_cnt + 1;
        end
    end

    // event registers
    always @(posedge ACLK)
    begin
        if (ARESET)
            invalid_len_event_reg1 <= 0;
        else if (ACLK_EN) begin
            if (next_rreq) begin
                 invalid_len_event_reg1 <= invalid_len_event;
            end
        end
    end
    // end event registers

    assign first_sect = (sect_cnt == start_addr_buf[C_M_AXI_ADDR_WIDTH-1:12]);
    assign last_sect  = (sect_cnt == end_addr_buf[C_M_AXI_ADDR_WIDTH-1:12]);
    assign next_sect  = rreq_handling && ready_for_sect;

    assign sect_addr  = (first_sect)? start_addr_buf : {sect_cnt, {12{1'b0}}};
    always @(posedge ACLK)
    begin
        if (ARESET)
            sect_addr_buf <= 0;
        else if (ACLK_EN) begin
            if (next_sect)
                sect_addr_buf <= sect_addr;
        end
    end

    assign start_to_4k = BOUNDARY_BEATS - start_addr_buf[11:BUS_ADDR_ALIGN];
    assign sect_len    = ( first_sect &&  last_sect)? beat_len_buf :
                         ( first_sect && ~last_sect)? start_to_4k:
                         (~first_sect &&  last_sect)? end_addr_buf[11:BUS_ADDR_ALIGN] :
                                                      BOUNDARY_BEATS;

    always @(posedge ACLK)
    begin
        if (ARESET)
            sect_len_buf <= 0;
        else if (ACLK_EN) begin
            if (next_sect)
                sect_len_buf <= sect_len;
        end
    end

    assign sect_end = (last_sect)? end_addr_buf[BUS_ADDR_ALIGN - 1:0] : {BUS_ADDR_ALIGN{1'b1}};
    always @(posedge ACLK)
    begin
        if (ARESET)
            sect_end_buf <= 0;
        else if (ACLK_EN) begin
            if (next_sect)
                sect_end_buf <= sect_end;
        end
    end

    // event registers
    always @(posedge ACLK)
    begin
        if (ARESET)
            invalid_len_event_reg2 <= 0;
        else if (ACLK_EN) begin
            if(next_sect) begin
                invalid_len_event_reg2 <= invalid_len_event_reg1;
            end
        end
    end 
    // end event registers

    assign ARID     = 0;
    assign ARSIZE   = BUS_ADDR_ALIGN;
    assign ARBURST  = 2'b01;
    assign ARLOCK   = 2'b00;
    assign ARCACHE  = C_CACHE_VALUE;
    assign ARPROT   = C_PROT_VALUE;
    assign ARUSER   = C_USER_VALUE;
    assign ARQOS    = rreq_qos;
    assign ARREGION = rreq_region;

    generate
    if (BUS_DATA_BYTES >= 4096/MAX_READ_BURST_LENGTH) begin : must_one_burst
        assign ARADDR  = {sect_addr_buf[C_M_AXI_ADDR_WIDTH - 1:BUS_ADDR_ALIGN], {BUS_ADDR_ALIGN{1'b0}}};
        assign ARLEN   = sect_len_buf;
        assign ARVALID = ARVALID_Dummy;

        assign ready_for_sect = ~(ARVALID_Dummy && ~ARREADY) && fifo_burst_ready && fifo_rctl_ready;

        always @(posedge ACLK)
        begin
            if (ARESET)
                ARVALID_Dummy <= 1'b0;
            else if (ACLK_EN) begin
                if (next_sect && invalid_len_event_reg1)
                    ARVALID_Dummy <= 1'b0;
                else if (next_sect)
                    ARVALID_Dummy <= 1'b1;
                else if (~next_sect && ARREADY)
                    ARVALID_Dummy <= 1'b0;
            end
        end

        assign fifo_rctl_r  = next_sect;
        assign ar2r_ardata  = {last_sect, 1'b0};

        assign fifo_burst_w = next_sect;
        assign araddr_tmp   = sect_addr[C_M_AXI_ADDR_WIDTH - 1:0];
        assign arlen_tmp    = sect_len;
        assign burst_end    = sect_end;
    end
    else begin : could_multi_bursts
        reg  [C_M_AXI_ADDR_WIDTH - 1:0]                 araddr_buf;
        reg  [7:0]                                      arlen_buf;
        reg  [11 - NUM_READ_WIDTH - BUS_ADDR_ALIGN:0]   loop_cnt;
        reg                                             sect_handling;
        wire                                            last_loop;
        wire                                            next_loop;
        wire                                            ready_for_loop;

        assign ARADDR  = araddr_buf;
        assign ARLEN   = arlen_buf;
        assign ARVALID = ARVALID_Dummy;

        assign last_loop      = (loop_cnt == sect_len_buf[11 - BUS_ADDR_ALIGN : NUM_READ_WIDTH]);
        assign next_loop      = sect_handling && ready_for_loop;
        assign ready_for_loop = ~(ARVALID_Dummy && ~ARREADY) && fifo_burst_ready && fifo_rctl_ready;
        assign ready_for_sect = ~(sect_handling && ~(last_loop && next_loop));

        always @(posedge ACLK)
        begin
            if (ARESET)
                sect_handling <= 1'b0;
            else if (ACLK_EN) begin
                if (rreq_handling && ~sect_handling)
                    sect_handling <= 1'b1;
                else if (~rreq_handling && last_loop && next_loop)
                    sect_handling <= 1'b0;
            end
        end

        always @(posedge ACLK)
        begin
            if (ARESET)
                loop_cnt <= 0;
            else if (ACLK_EN) begin
                if (next_sect)
                    loop_cnt <= 0;
                else if (next_loop)
                    loop_cnt <= loop_cnt + 1;
            end
        end

        assign araddr_tmp = (loop_cnt == 0)? sect_addr_buf[C_M_AXI_ADDR_WIDTH - 1:0] : (araddr_buf + ((arlen_buf + 1) << BUS_ADDR_ALIGN));
        always @(posedge ACLK)
        begin
            if (ARESET)
                araddr_buf <= 0;
            else if (ACLK_EN) begin
                if (next_loop)
                    araddr_buf <= {araddr_tmp[C_M_AXI_ADDR_WIDTH - 1:BUS_ADDR_ALIGN], {BUS_ADDR_ALIGN{1'b0}}};
            end
        end

        assign arlen_tmp  = (last_loop)? sect_len_buf[NUM_READ_WIDTH - 1:0] : { NUM_READ_WIDTH{1'b1} };
        always @(posedge ACLK)
        begin
            if (ARESET)
                arlen_buf <= 0;
            else if (ACLK_EN) begin
                if (next_loop)
                    arlen_buf <= arlen_tmp;
            end
        end

        always @(posedge ACLK)
        begin
            if (ARESET)
                ARVALID_Dummy <= 1'b0;
            else if (ACLK_EN) begin
                if (next_loop && invalid_len_event_reg2)
                    ARVALID_Dummy <= 1'b0;
                else if (next_loop)
                    ARVALID_Dummy <= 1'b1;
                else if (~next_loop && ARREADY)
                    ARVALID_Dummy <= 1'b0;
            end
        end

        assign fifo_rctl_r = next_loop;
        assign ar2r_ardata = {last_loop, 1'b0};

        assign fifo_burst_w = next_loop;
        assign burst_end    = (last_loop)? sect_end_buf[BUS_ADDR_ALIGN - 1:0] : {BUS_ADDR_ALIGN{1'b1}};
    end
    endgenerate
//------------------------AR channel end-----------------

//------------------------R channel begin----------------
//------------------------Instantiation------------------
    YOLO2_FPGA_DATA_BUS5_m_axi_buffer #(
        .DATA_WIDTH(BUS_DATA_WIDTH + 3),
        .DEPTH(NUM_READ_OUTSTANDING * MAX_READ_BURST_LENGTH),
        .ADDR_WIDTH(log2(NUM_READ_OUTSTANDING * MAX_READ_BURST_LENGTH))
    ) buff_rdata (
        .clk(ACLK),
        .reset(ARESET),
        .sclk_en(ACLK_EN),
        .if_full_n(RREADY),
        .if_write_ce(1'b1),
        .if_write(RVALID),
        .if_din(fifo_rresp_rdata),
        .if_empty_n(beat_valid),
        .if_read_ce(1'b1),
        .if_read(next_beat),
        .if_dout(data_pack));

    YOLO2_FPGA_DATA_BUS5_m_axi_reg_slice #(
        .N(USER_DW + 2)
    ) rs_rdata (
        .sclk(ACLK),
        .reset(ARESET),
        .s_data(rs_rrsp_rdata),
        .s_valid(rdata_valid_t),
        .s_ready(rdata_ack_t),
        .m_data(rdata_data_pack),
        .m_valid(rdata_valid),
        .m_ready(rdata_ack));

    YOLO2_FPGA_DATA_BUS5_m_axi_fifo #(
        .DATA_BITS(2),
        .DEPTH(NUM_READ_OUTSTANDING-1),
        .DEPTH_BITS(log2(NUM_READ_OUTSTANDING-1))
    ) fifo_rctl (
        .sclk(ACLK),
        .reset(ARESET),
        .sclk_en(ACLK_EN),
        .empty_n(need_rlast),
        .full_n(fifo_rctl_ready),
        .rdreq(tmp_last_2),
        .wrreq(fifo_rctl_r),
        .q(ar2r_rdata),
        .data(ar2r_ardata));

    assign fifo_rresp_rdata = {RLAST, RRESP, RDATA};
    assign tmp_data         = data_pack[BUS_DATA_WIDTH - 1:0];
    assign tmp_resp         = data_pack[BUS_DATA_WIDTH + 1:BUS_DATA_WIDTH];
    assign tmp_last         = data_pack[BUS_DATA_WIDTH + 2] && beat_valid;
    assign tmp_last_2       = tmp_last && next_beat;

    generate
    if (USER_DATA_WIDTH == BUS_DATA_WIDTH) begin : bus_equal_gen
        reg  [BUS_DATA_WIDTH - 1:0]         data_buf;
        wire                                ready_for_data;

        assign rs_rrsp_rdata = {resp_buf, data_buf[USER_DW - 1:0]};
        assign rrsp          = rdata_data_pack[USER_DW + 1:USER_DW];
        assign rdata_data    = rdata_data_pack[USER_DW - 1:0];

        assign fifo_burst_ready = 1'b1;
        assign next_beat        = beat_valid && ready_for_data;
        assign ready_for_data   = ~(rdata_valid_t && ~rdata_ack_t);

        always @(posedge ACLK)
        begin
            if (ACLK_EN) begin
                if (next_beat)
                    data_buf <= tmp_data;
            end
        end

        always @(posedge ACLK)
        begin
            if (ARESET)
                resp_buf <= 2'b00;
            else if (ACLK_EN) begin
                if (next_beat)
                    resp_buf <= tmp_resp;
            end
        end

        always @(posedge ACLK)
        begin
            if (ARESET)
                rdata_valid_t <= 1'b0;
            else if (ACLK_EN) begin
                if (next_beat)
                    rdata_valid_t <= 1'b1;
                else if (ready_for_data)
                    rdata_valid_t <= 1'b0;
            end
        end
    end
    else if (USER_DATA_WIDTH < BUS_DATA_WIDTH) begin : bus_wide_gen
        localparam
        TOTAL_SPLIT     = BUS_DATA_WIDTH / USER_DATA_WIDTH,
            SPLIT_ALIGN     = log2(TOTAL_SPLIT);

        wire [2*SPLIT_ALIGN + 7:0]      tmp_burst_info;
        wire [2*SPLIT_ALIGN + 7:0]      burst_pack;
        reg  [BUS_DATA_WIDTH - 1:0]     data_buf;
        wire [SPLIT_ALIGN - 1:0]        split_cnt;
        reg  [SPLIT_ALIGN - 1:0]        split_cnt_buf;
        wire [SPLIT_ALIGN - 1:0]        head_split;
        wire [SPLIT_ALIGN - 1:0]        tail_split;
        wire [7:0]                      arlen_tmp_t;
        wire [7:0]                      burst_len;
        wire                            first_beat;
        wire                            last_beat;
        wire                            first_split;
        wire                            next_split;
        wire                            last_split;
        wire                            ready_for_data;

        YOLO2_FPGA_DATA_BUS5_m_axi_fifo #(
            .DATA_BITS(2*SPLIT_ALIGN + 8),
            .DEPTH(USER_MAXREQS),
            .DEPTH_BITS(log2(USER_MAXREQS))
        ) fifo_burst (
            .sclk(ACLK),
            .reset(ARESET),
            .sclk_en(ACLK_EN),
            .empty_n(burst_valid),
            .full_n(fifo_burst_ready),
            .rdreq(next_burst),
            .wrreq(fifo_burst_w),
            .q(burst_pack),
            .data(tmp_burst_info));

        assign rs_rrsp_rdata = {resp_buf, data_buf[USER_DW - 1:0]};
        assign rrsp          = rdata_data_pack[USER_DW + 1:USER_DW];
        assign rdata_data    = rdata_data_pack[USER_DW - 1:0];

        assign arlen_tmp_t    = arlen_tmp;
        assign tmp_burst_info = {araddr_tmp[BUS_ADDR_ALIGN - 1:USER_ADDR_ALIGN], burst_end[BUS_ADDR_ALIGN - 1:USER_ADDR_ALIGN], arlen_tmp_t};
        assign head_split     = burst_pack[2*SPLIT_ALIGN + 7:8 + SPLIT_ALIGN];
        assign tail_split     = burst_pack[SPLIT_ALIGN + 7:8];
        assign burst_len      = burst_pack[7:0];

        assign next_beat        = last_split;
        assign next_burst       = last_beat && last_split;
        assign ready_for_data   = ~(rdata_valid_t && ~rdata_ack_t);

        assign first_beat = (len_cnt == 0) && burst_valid && beat_valid;
        assign last_beat  = (len_cnt == burst_len) && burst_valid && beat_valid;

        assign first_split = (~first_beat)? (split_cnt == 0 && beat_valid && ready_for_data) : ((split_cnt == head_split) && ready_for_data);
        assign last_split  = (~last_beat)? (split_cnt == (TOTAL_SPLIT - 1) && ready_for_data) : ((split_cnt == tail_split) && ready_for_data);
        assign next_split  = (~first_beat)? ((split_cnt != 0) && ready_for_data) : ((split_cnt != head_split) && ready_for_data);

        assign split_cnt = (first_beat && (split_cnt_buf == 0))? head_split : split_cnt_buf;
        always @(posedge ACLK)
        begin
            if (ARESET)
                split_cnt_buf <= 0;
            else if (ACLK_EN) begin
                if (last_split)
                    split_cnt_buf <= 0;
                else if (first_split || next_split)
                    split_cnt_buf <= split_cnt + 1;
            end
        end

        always @(posedge ACLK)
        begin
            if (ARESET)
                len_cnt <= 0;
            else if (ACLK_EN) begin
                if (last_beat && last_split)
                    len_cnt <= 0;
                else if (last_split)
                    len_cnt <= len_cnt + 1;
            end
        end

        always @(posedge ACLK)
        begin
            if (ACLK_EN) begin
                if (first_split && first_beat)
                    data_buf <= tmp_data >> (head_split * USER_DATA_WIDTH);
                else if (first_split)
                    data_buf <= tmp_data;
                else if (next_split)
                    data_buf <= data_buf >> USER_DATA_WIDTH;
            end
        end

        always @(posedge ACLK)
        begin
            if (ARESET)
                resp_buf <= 2'b00;
            else if (ACLK_EN) begin
                if (first_split)
                    resp_buf <= tmp_resp;
            end
        end

        always @(posedge ACLK)
        begin
            if (ARESET)
                rdata_valid_t <= 0;
            else if (ACLK_EN) begin
                if (first_split)
                    rdata_valid_t <= 1;
                else if (~(first_split || next_split) && ready_for_data)
                    rdata_valid_t <= 0;
            end
        end

    end
    else begin: bus_narrow_gen
        localparam
            TOTAL_PADS      = USER_DATA_WIDTH / BUS_DATA_WIDTH,
            PAD_ALIGN       = log2(TOTAL_PADS);

        reg  [USER_DATA_WIDTH - 1:0]        data_buf;
        wire [TOTAL_PADS - 1:0]             pad_oh;
        reg  [TOTAL_PADS - 1:0]             pad_oh_reg;
        wire                                ready_for_data;
        wire                                next_pad;
        reg                                 first_pad;
        wire                                last_pad;
        wire                                next_data;

        assign rs_rrsp_rdata = {resp_buf, data_buf[USER_DW - 1:0]};
        assign rrsp          = rdata_data_pack[USER_DW + 1:USER_DW];
        assign rdata_data    = rdata_data_pack[USER_DW - 1:0];

        assign fifo_burst_ready = 1'b1;
        assign next_beat        = next_pad;
        assign ready_for_data   = ~(rdata_valid_t && ~rdata_ack_t);

        assign next_pad  = beat_valid && ready_for_data;
        assign last_pad  = pad_oh[TOTAL_PADS - 1];
        assign next_data = last_pad && ready_for_data;

        always @(posedge ACLK)
        begin
            if (ARESET)
                first_pad <= 1;
            else if (ACLK_EN) begin
                if (next_pad && ~last_pad)
                    first_pad <= 0;
                else if (next_pad && last_pad)
                    first_pad <= 1;
            end
        end

        assign pad_oh = (beat_valid == 0)?  0 :
                        (first_pad)?        1 :
                                            pad_oh_reg;
        always @(posedge ACLK)
        begin
            if (ARESET)
                pad_oh_reg <= 0;
            else if (ACLK_EN) begin
                if (next_pad)
                    pad_oh_reg <= {pad_oh[TOTAL_PADS - 2:0], 1'b0};
            end
        end

        genvar  i;
        for (i = 1; i <= TOTAL_PADS; i = i + 1) begin : data_gen
            always @(posedge ACLK)
            begin
                if (ACLK_EN) begin
                    if (pad_oh[i-1] == 1'b1 && ready_for_data)
                        data_buf[i*BUS_DATA_WIDTH - 1:(i-1)*BUS_DATA_WIDTH] <= tmp_data;
                end
            end
        end

        always @(posedge ACLK)
        begin
            if (ARESET)
                resp_buf <= 2'b00;
            else if (ACLK_EN) begin
                if (next_beat && (resp_buf[0] ==1'b0))
                    resp_buf <= tmp_resp;
            end
        end

        always @(posedge ACLK)
        begin
            if (ARESET)
                rdata_valid_t <= 0;
            else if (ACLK_EN) begin
                if (next_data)
                    rdata_valid_t <= 1;
                else if (ready_for_data)
                    rdata_valid_t <= 0;
            end
        end
    end
    endgenerate

//------------------------Body---------------------------
//------------------------R channel end------------------
endmodule

module YOLO2_FPGA_DATA_BUS5_m_axi_write
#(parameter
    NUM_WRITE_OUTSTANDING     = 2,
    MAX_WRITE_BURST_LENGTH    = 16,
    C_M_AXI_ID_WIDTH          = 1,
    C_M_AXI_ADDR_WIDTH        = 32,
    C_TARGET_ADDR             = 32'h00000000,
    C_M_AXI_DATA_WIDTH        = 32,
    C_M_AXI_AWUSER_WIDTH      = 1,
    C_M_AXI_WUSER_WIDTH       = 1,
    C_M_AXI_BUSER_WIDTH       = 1,
    C_USER_VALUE              = 1'b0,
    C_PROT_VALUE              = 3'b000,
    C_CACHE_VALUE             = 4'b0011,
    USER_DW                   = 16,
    USER_AW                   = 32,
    USER_MAXREQS              = 16
)(
    // system signal
    input  wire                         ACLK,
    input  wire                         ARESET,
    input  wire                         ACLK_EN,
    // write address channel
    output wire [C_M_AXI_ID_WIDTH-1:0]        AWID,
    output wire [C_M_AXI_ADDR_WIDTH-1:0]      AWADDR,
    output wire [7:0]                   AWLEN,
    output wire [2:0]                   AWSIZE,
    output wire [1:0]                   AWBURST,
    output wire [1:0]                   AWLOCK,
    output wire [3:0]                   AWCACHE,
    output wire [2:0]                   AWPROT,
    output wire [3:0]                   AWQOS,
    output wire [3:0]                   AWREGION,
    output wire [C_M_AXI_AWUSER_WIDTH-1:0]    AWUSER,
    output wire                         AWVALID,
    input  wire                         AWREADY,
    // write data channel
    output wire [C_M_AXI_ID_WIDTH-1:0]        WID,
    output wire [C_M_AXI_DATA_WIDTH-1:0]      WDATA,
    output wire [C_M_AXI_DATA_WIDTH/8-1:0]    WSTRB,
    output wire                         WLAST,
    output wire [C_M_AXI_WUSER_WIDTH-1:0]     WUSER,
    output wire                         WVALID,
    input  wire                         WREADY,
    // write response channel
    input  wire [C_M_AXI_ID_WIDTH-1:0]        BID,
    input  wire [1:0]                   BRESP,
    input  wire [C_M_AXI_BUSER_WIDTH-1:0]     BUSER,
    input  wire                         BVALID,
    output wire                         BREADY,
    // write request
    input  wire                         wreq_valid,
    output wire                         wreq_ack,
    input  wire [USER_AW-1:0]           wreq_addr,
    input  wire [31:0]                  wreq_length,
    input  wire [3:0]                   wreq_cache,
    input  wire [2:0]                   wreq_prot,
    input  wire [3:0]                   wreq_qos,
    input  wire [3:0]                   wreq_region,
    input  wire [C_M_AXI_AWUSER_WIDTH-1:0]    wreq_user,
    input  wire                         wdata_valid,
    output wire                         wdata_ack,
    input  wire [USER_DW/8-1:0]         wdata_strb,
    input  wire [C_M_AXI_WUSER_WIDTH-1:0]     wdata_user,
    input  wire [USER_DW-1:0]           wdata_data,
    output wire                         wrsp_valid,
    input  wire                         wrsp_ack,
    output wire [1:0]                   wrsp
);

//------------------------Parameter----------------------
localparam
    USER_DATA_WIDTH = calc_data_width(USER_DW),
    USER_DATA_BYTES = USER_DATA_WIDTH / 8,
    USER_ADDR_ALIGN = log2(USER_DATA_BYTES),
    BUS_DATA_WIDTH  = C_M_AXI_DATA_WIDTH,
    BUS_DATA_BYTES  = BUS_DATA_WIDTH / 8,
    BUS_ADDR_ALIGN  = log2(BUS_DATA_BYTES),
    NUM_WRITE_WIDTH = log2(MAX_WRITE_BURST_LENGTH),
    TARGET_ADDR     = C_TARGET_ADDR & (32'hffffffff << USER_ADDR_ALIGN),
    BOUNDARY_BEATS  = {12-BUS_ADDR_ALIGN{1'b1}};

//------------------------Task and function--------------
function integer calc_data_width;
    input integer x;
    integer y;
begin
    y = 8;
    while (y < x) y = y * 2;
    calc_data_width = y;
end
endfunction

function integer log2;
    input integer x;
    integer n, m;
begin
    n = 0;
    m = 1;
    while (m < x) begin
        n = n + 1;
        m = m * 2;
    end
    log2 = n;
end
endfunction

//------------------------Local signal-------------------
    // AW channel
    wire [USER_AW + 31:0]                   wreq_data;
    wire [USER_AW + 31:0]                   rs2f_wreq_data;
    wire                                      rs2f_wreq_valid;
    wire                                      rs2f_wreq_ack;
    wire [USER_AW + 31:0]                   fifo_wreq_data;
    wire [USER_AW - 1:0]                    tmp_addr;
    wire [31:0]                             tmp_len;
    reg  [31:0]                             align_len;
    wire [7:0]                              awlen_tmp;
    wire [C_M_AXI_ADDR_WIDTH - 1:0]         awaddr_tmp;
    reg  [C_M_AXI_ADDR_WIDTH - 1:0]         start_addr;
    reg  [C_M_AXI_ADDR_WIDTH - 1:0]         start_addr_buf;
    wire [C_M_AXI_ADDR_WIDTH - 1:0]         end_addr;
    reg  [C_M_AXI_ADDR_WIDTH - 1:0]         end_addr_buf;
    wire [C_M_AXI_ADDR_WIDTH - 1:0]         sect_addr;
    reg  [C_M_AXI_ADDR_WIDTH - 1:0]         sect_addr_buf;
    wire [BUS_ADDR_ALIGN - 1:0]             sect_end;
    reg  [BUS_ADDR_ALIGN - 1:0]             sect_end_buf;
    wire [BUS_ADDR_ALIGN - 1:0]             burst_end;
    wire [11 - BUS_ADDR_ALIGN:0]            start_to_4k;
    wire [11 - BUS_ADDR_ALIGN:0]            sect_len;
    reg  [11 - BUS_ADDR_ALIGN:0]            sect_len_buf;
    reg  [11 - BUS_ADDR_ALIGN:0]            beat_len_buf;
    wire [1:0]                              aw2b_awdata;
    reg  [C_M_AXI_ADDR_WIDTH - 13:0]        sect_cnt;
    wire                                    zero_len_event;
    wire                                    negative_len_event;
    reg                                     invalid_len_event;
    reg                                     invalid_len_event_reg1;
    reg                                     invalid_len_event_reg2;
    wire                                    fifo_wreq_valid;
    reg                                     fifo_wreq_valid_buf;
    wire                                    fifo_wreq_read;
    wire                                    fifo_burst_w;
    wire                                    fifo_resp_w;
    reg                                     AWVALID_Dummy;
    reg                                     last_sect_buf;
    wire                                    ready_for_sect;
    wire                                    next_wreq;
    wire                                    ready_for_wreq;
    reg                                     wreq_handling;
    wire                                    first_sect;
    wire                                    last_sect;
    wire                                    next_sect;
    // W channel
    wire    [USER_DW + USER_DW/8 - 1:0]     fifo_wdata_wstrb;
    wire    [USER_DW + USER_DW/8 - 1:0]     data_pack;
    wire    [USER_DATA_WIDTH - 1:0]         tmp_data;
    wire    [USER_DATA_BYTES - 1:0]         tmp_strb;
    reg     [7:0]                           len_cnt;
    wire    [7:0]                           burst_len;
    wire                                    beat_valid;
    wire                                    next_data;
    wire                                    burst_valid;
    wire                                    fifo_burst_ready;
    wire                                    next_burst;
    reg                                     WVALID_Dummy;
    reg                                     WLAST_Dummy;
    //B channel
    wire    [1:0]                           aw2b_bdata;
    reg     [1:0]                           bresp_tmp;
    reg                                     next_resp;
    wire                                    last_resp;
    wire                                    invalid_event;
    wire                                    fifo_resp_ready;
    wire                                    need_wrsp;
    wire                                    resp_match;
    wire                                    resp_ready;

//------------------------AW channel begin---------------
//------------------------Instantiation------------------
    YOLO2_FPGA_DATA_BUS5_m_axi_reg_slice #(
        .N(USER_AW + 32)
    ) rs_wreq (
        .sclk(ACLK),
        .reset(ARESET),
        .s_data(wreq_data),
        .s_valid(wreq_valid),
        .s_ready(wreq_ack),
        .m_data(rs2f_wreq_data),
        .m_valid(rs2f_wreq_valid),
        .m_ready(rs2f_wreq_ack));

    YOLO2_FPGA_DATA_BUS5_m_axi_fifo #(
        .DATA_BITS(USER_AW + 32),
        .DEPTH(USER_MAXREQS),
        .DEPTH_BITS(log2(USER_MAXREQS))
    ) fifo_wreq (
        .sclk(ACLK),
        .reset(ARESET),
        .sclk_en(ACLK_EN),
        .full_n(rs2f_wreq_ack),
        .wrreq(rs2f_wreq_valid),
        .data(rs2f_wreq_data),
        .empty_n(fifo_wreq_valid),
        .rdreq(fifo_wreq_read),
        .q(fifo_wreq_data));

//------------------------Body---------------------------
    assign wreq_data   = {wreq_length, wreq_addr};
    assign tmp_addr    = fifo_wreq_data[USER_AW - 1:0];
    assign tmp_len     = fifo_wreq_data[USER_AW + 31:USER_AW];

    assign zero_len_event = fifo_wreq_valid? (tmp_len == 32'b0) : 0;
    assign negative_len_event = fifo_wreq_valid? tmp_len[31] : 0;

    assign end_addr    = start_addr + align_len;

    always @(posedge ACLK)
    begin
        if (ARESET)
            align_len   <= 0;
        else if (ACLK_EN) begin
            if(fifo_wreq_valid && ready_for_wreq) begin
                if (zero_len_event || negative_len_event)
                    align_len   <= 32'b0;
                else
                    align_len   <= (tmp_len << USER_ADDR_ALIGN) - 1;
            end
        end
    end

    always @(posedge ACLK)
    begin
        if (ARESET)
            start_addr <= 0;
        else if (ACLK_EN) begin
            if(fifo_wreq_valid && ready_for_wreq)
                start_addr <= TARGET_ADDR + (tmp_addr << USER_ADDR_ALIGN);
        end
    end

    always @(posedge ACLK)
    begin
        if (ARESET)
            fifo_wreq_valid_buf <= 1'b0;
        else if (ACLK_EN) begin
            if(next_wreq)
                fifo_wreq_valid_buf <= fifo_wreq_valid;
        end
    end

    always @(posedge ACLK)
    begin
        if (ARESET)
            invalid_len_event <= 1'b0;
        else if (ACLK_EN) begin
            if(next_wreq)
                invalid_len_event <= zero_len_event || negative_len_event;
        end
    end

    assign next_wreq      = (fifo_wreq_valid || fifo_wreq_valid_buf) && ready_for_wreq;
    assign ready_for_wreq = ~(wreq_handling && ~(last_sect && next_sect));
    assign fifo_wreq_read = next_wreq;

    always @(posedge ACLK)
    begin
        if (ARESET)
            wreq_handling <= 1'b0;
        else if (ACLK_EN) begin
            if (fifo_wreq_valid_buf && ~wreq_handling)
                wreq_handling <= 1'b1;
            else if (~fifo_wreq_valid_buf && last_sect && next_sect)
                wreq_handling <= 1'b0;
        end
    end

    always @(posedge ACLK)
    begin
        if (ARESET)
            start_addr_buf <= 0;
        else if (ACLK_EN) begin
            if (next_wreq)
                start_addr_buf <= start_addr;
        end
    end

    always @(posedge ACLK)
    begin
        if (ARESET)
            end_addr_buf <= 0;
        else if (ACLK_EN) begin
            if (next_wreq)
                end_addr_buf <= end_addr;
        end
    end

    always @(posedge ACLK)
    begin
        if (ARESET)
            beat_len_buf <= 0;
        else if (ACLK_EN) begin
            if (next_wreq)
                beat_len_buf <= (align_len[11:0] + start_addr[BUS_ADDR_ALIGN-1:0]) >> BUS_ADDR_ALIGN;
        end
    end

    always @(posedge ACLK)
    begin
        if (ARESET)
            sect_cnt <= 0;
        else if (ACLK_EN) begin
            if (next_wreq)
                sect_cnt <= start_addr[C_M_AXI_ADDR_WIDTH-1:12];
            else if (next_sect)
                sect_cnt <= sect_cnt + 1;
        end
    end

    // event registers
    always @(posedge ACLK)
    begin
        if (ARESET)
            invalid_len_event_reg1 <= 0;
        else if (ACLK_EN) begin
            if (next_wreq) begin
                 invalid_len_event_reg1 <= invalid_len_event;
            end
        end
    end
    // end event registers

    assign first_sect = (sect_cnt == start_addr_buf[C_M_AXI_ADDR_WIDTH-1:12]);
    assign last_sect  = (sect_cnt == end_addr_buf[C_M_AXI_ADDR_WIDTH-1:12]);
    assign next_sect  = wreq_handling && ready_for_sect;

    assign sect_addr  = (first_sect)? start_addr_buf : {sect_cnt, {12{1'b0}}};
    always @(posedge ACLK)
    begin
        if (ARESET)
            sect_addr_buf <= 0;
        else if (ACLK_EN) begin
            if (next_sect)
                sect_addr_buf <= sect_addr;
        end
    end

    assign start_to_4k = BOUNDARY_BEATS - start_addr_buf[11:BUS_ADDR_ALIGN];
    assign sect_len    = ( first_sect &&  last_sect)? beat_len_buf :
                         ( first_sect && ~last_sect)? start_to_4k:
                         (~first_sect &&  last_sect)? end_addr_buf[11:BUS_ADDR_ALIGN] :
                                                      BOUNDARY_BEATS;

    always @(posedge ACLK)
    begin
        if (ARESET)
            sect_len_buf <= 0;
        else if (ACLK_EN) begin
            if (next_sect)
                sect_len_buf <= sect_len;
        end
    end

    assign sect_end = (last_sect)? end_addr_buf[BUS_ADDR_ALIGN - 1:0] : {BUS_ADDR_ALIGN{1'b1}};
    always @(posedge ACLK)
    begin
        if (ARESET)
            sect_end_buf <= 0;
        else if (ACLK_EN) begin
            if (next_sect)
                sect_end_buf <= sect_end;
        end
    end

    // event registers
    always @(posedge ACLK)
    begin
        if (ARESET)
            invalid_len_event_reg2 <= 0;
        else if (ACLK_EN) begin
            if(next_sect) begin
                invalid_len_event_reg2 <= invalid_len_event_reg1;
            end
        end
    end 
    // end event registers

    assign AWID     = 0;
    assign AWSIZE   = BUS_ADDR_ALIGN;
    assign AWBURST  = 2'b01;
    assign AWLOCK   = 2'b00;
    assign AWCACHE  = C_CACHE_VALUE;
    assign AWPROT   = C_PROT_VALUE;
    assign AWUSER   = C_USER_VALUE;
    assign AWQOS    = wreq_qos;
    assign AWREGION = wreq_region;

    generate
    if (BUS_DATA_BYTES >= 4096/MAX_WRITE_BURST_LENGTH) begin : must_one_burst
        assign AWADDR  = {sect_addr_buf[C_M_AXI_ADDR_WIDTH - 1:BUS_ADDR_ALIGN], {BUS_ADDR_ALIGN{1'b0}}};
        assign AWLEN   = sect_len_buf;
        assign AWVALID = AWVALID_Dummy;

        assign ready_for_sect = ~(AWVALID_Dummy && ~AWREADY) && fifo_burst_ready && fifo_resp_ready;

        always @(posedge ACLK)
        begin
            if (ARESET)
                AWVALID_Dummy <= 1'b0;
            else if (ACLK_EN) begin
                if (next_sect && invalid_len_event_reg1)
                    AWVALID_Dummy <= 1'b0;
                else if (next_sect)
                    AWVALID_Dummy <= 1'b1;
                else if (~next_sect && AWREADY)
                    AWVALID_Dummy <= 1'b0;
            end
        end

        assign fifo_resp_w = next_sect;
        assign aw2b_awdata = {last_sect, invalid_len_event};

        assign fifo_burst_w = ~invalid_len_event & next_sect;
        assign awaddr_tmp   = sect_addr[C_M_AXI_ADDR_WIDTH - 1:0];
        assign awlen_tmp    = sect_len;
        assign burst_end    = sect_end;
    end
    else begin : could_multi_bursts
        reg  [C_M_AXI_ADDR_WIDTH - 1:0]                     awaddr_buf;
        reg  [7:0]                                          awlen_buf;
        reg  [11 - NUM_WRITE_WIDTH - BUS_ADDR_ALIGN : 0]    loop_cnt;
        reg                                                 sect_handling;
        wire                                                last_loop;
        wire                                                next_loop;
        wire                                                ready_for_loop;

        assign AWADDR  = awaddr_buf;
        assign AWLEN   = awlen_buf;
        assign AWVALID = AWVALID_Dummy;

        assign last_loop      = (loop_cnt == sect_len_buf[11 - BUS_ADDR_ALIGN : NUM_WRITE_WIDTH]);
        assign next_loop      = sect_handling && ready_for_loop;
        assign ready_for_loop = ~(AWVALID_Dummy && ~AWREADY) && fifo_resp_ready && fifo_burst_ready;
        assign ready_for_sect = ~(sect_handling && ~(last_loop && next_loop));

        always @(posedge ACLK)
        begin
            if (ARESET)
                sect_handling <= 1'b0;
            else if (ACLK_EN) begin
                if (wreq_handling && ~sect_handling)
                    sect_handling <= 1'b1;
                else if (~wreq_handling && last_loop && next_loop)
                    sect_handling <= 1'b0;
            end
        end

        always @(posedge ACLK)
        begin
            if (ARESET)
                loop_cnt <= 0;
            else if (ACLK_EN) begin
                if (next_sect)
                    loop_cnt <= 0;
                else if (next_loop)
                    loop_cnt <= loop_cnt + 1;
            end
        end

        assign awaddr_tmp = (loop_cnt == 0)? sect_addr_buf[C_M_AXI_ADDR_WIDTH - 1:0] : (awaddr_buf + ((awlen_buf + 1) << BUS_ADDR_ALIGN));
        always @(posedge ACLK)
        begin
            if (ARESET)
                awaddr_buf <= 0;
            else if (ACLK_EN) begin
                if (next_loop)
                    awaddr_buf <= {awaddr_tmp[C_M_AXI_ADDR_WIDTH - 1:BUS_ADDR_ALIGN], {BUS_ADDR_ALIGN{1'b0}}};
            end
        end

        assign awlen_tmp  = (last_loop)? sect_len_buf[NUM_WRITE_WIDTH - 1:0] : { NUM_WRITE_WIDTH{1'b1} };
        always @(posedge ACLK)
        begin
            if (ARESET)
                awlen_buf <= 0;
            else if (ACLK_EN) begin
                if (next_loop)
                    awlen_buf <= awlen_tmp;
            end
        end

        always @(posedge ACLK)
        begin
            if (ARESET)
                AWVALID_Dummy <= 1'b0;
            else if (ACLK_EN) begin
                if (next_loop && invalid_len_event_reg2)
                    AWVALID_Dummy <= 1'b0;
                else if (next_loop)
                    AWVALID_Dummy <= 1'b1;
                else if (~next_loop && AWREADY)
                    AWVALID_Dummy <= 1'b0;
            end
        end

        assign fifo_resp_w = next_loop;
        assign aw2b_awdata = {(last_loop & last_sect_buf), invalid_len_event_reg2};
        always @(posedge ACLK)
        begin
            if (ARESET)
                last_sect_buf <= 0;
            else if (ACLK_EN) begin
                if (next_sect && last_sect)
                    last_sect_buf <= 1;
                else if (next_sect)
                    last_sect_buf <= 0;
            end
        end

        assign fifo_burst_w = ~invalid_len_event_reg2 & next_loop;
        assign burst_end    = (last_loop)? sect_end_buf[BUS_ADDR_ALIGN - 1:0] : {BUS_ADDR_ALIGN{1'b1}};
    end
    endgenerate
//------------------------AW channel end-----------------

//------------------------W channel begin----------------
//------------------------Instantiation------------------
    YOLO2_FPGA_DATA_BUS5_m_axi_buffer #(
        .DATA_WIDTH(USER_DW + USER_DW/8),
        .DEPTH(NUM_WRITE_OUTSTANDING * MAX_WRITE_BURST_LENGTH),
        .ADDR_WIDTH(log2(NUM_WRITE_OUTSTANDING * MAX_WRITE_BURST_LENGTH))
    ) buff_wdata (
        .clk(ACLK),
        .reset(ARESET),
        .sclk_en(ACLK_EN),
        .if_full_n(wdata_ack),
        .if_write_ce(1'b1),
        .if_write(wdata_valid),
        .if_din(fifo_wdata_wstrb),
        .if_empty_n(data_valid),
        .if_read_ce(1'b1),
        .if_read(next_data),
        .if_dout(data_pack)
    );

//------------------------Body---------------------------
    assign fifo_wdata_wstrb = {wdata_strb, wdata_data};
    assign tmp_data         = data_pack[USER_DW - 1:0];
    assign tmp_strb         = data_pack[USER_DW + USER_DW/8 - 1:USER_DW];

    assign WID   = 0;
    assign WUSER = C_USER_VALUE;

    generate
    if (USER_DATA_WIDTH == BUS_DATA_WIDTH) begin : bus_equal_gen
        reg  [BUS_DATA_WIDTH - 1:0]         data_buf;
        reg  [BUS_DATA_BYTES - 1:0]         strb_buf;
        wire [7:0]                          tmp_burst_info;
        wire                                ready_for_data;

        YOLO2_FPGA_DATA_BUS5_m_axi_fifo #(
            .DATA_BITS(8),
            .DEPTH(USER_MAXREQS),
            .DEPTH_BITS(log2(USER_MAXREQS))
        ) fifo_burst (
            .sclk(ACLK),
            .reset(ARESET),
            .sclk_en(ACLK_EN),
            .empty_n(burst_valid),
            .full_n(fifo_burst_ready),
            .rdreq(next_burst),
            .wrreq(fifo_burst_w),
            .q(burst_len),
            .data(tmp_burst_info));

        assign WDATA   = data_buf;
        assign WSTRB   = strb_buf;
        assign WLAST   = WLAST_Dummy;
        assign WVALID  = WVALID_Dummy;

        assign tmp_burst_info = awlen_tmp;

        assign next_data        = burst_valid && data_valid && ready_for_data;
        assign next_burst       = (len_cnt == burst_len) && next_data;
        assign ready_for_data   = ~(WVALID_Dummy && ~WREADY);

        always @(posedge ACLK)
        begin
            if (ACLK_EN) begin
                if (next_data)
                    data_buf <= tmp_data;
            end
        end

        always @(posedge ACLK)
        begin
            if (ARESET)
                strb_buf <= 0;
            else if (ACLK_EN) begin
                if (next_data)
                    strb_buf <= tmp_strb;
            end
        end

        always @(posedge ACLK)
        begin
            if (ARESET)
                WVALID_Dummy <= 1'b0;
            else if (ACLK_EN) begin
                if (next_data)
                    WVALID_Dummy <= 1'b1;
                else if (ready_for_data)
                    WVALID_Dummy <= 1'b0;
            end
        end

        always @(posedge ACLK)
        begin
            if (ARESET)
                WLAST_Dummy <= 0;
            else if (ACLK_EN) begin
                if (next_burst)
                    WLAST_Dummy <= 1;
                else if (ready_for_data)
                    WLAST_Dummy <= 0;
            end
        end

        always @(posedge ACLK)
        begin
            if (ARESET)
                len_cnt <= 0;
            else if (ACLK_EN) begin
                if (next_burst)
                    len_cnt <= 0;
                else if (next_data)
                    len_cnt <= len_cnt + 1;
            end
        end

    end
    else if (USER_DATA_WIDTH > BUS_DATA_WIDTH) begin : bus_narrow_gen
        localparam
            TOTAL_SPLIT     = USER_DATA_WIDTH / BUS_DATA_WIDTH,
            SPLIT_ALIGN     = log2(TOTAL_SPLIT);

        reg  [USER_DATA_WIDTH - 1:0]                data_buf;
        reg  [USER_DATA_BYTES - 1:0]                strb_buf;
        reg  [SPLIT_ALIGN - 1:0]                    split_cnt;
        wire [7:0]                                  tmp_burst_info;
        wire                                        first_split;
        wire                                        next_split;
        wire                                        last_split;
        wire                                        ready_for_data;

        YOLO2_FPGA_DATA_BUS5_m_axi_fifo #(
            .DATA_BITS(8),
            .DEPTH(USER_MAXREQS),
            .DEPTH_BITS(log2(USER_MAXREQS))
        ) fifo_burst (
            .sclk(ACLK),
            .reset(ARESET),
            .sclk_en(ACLK_EN),
            .empty_n(burst_valid),
            .full_n(fifo_burst_ready),
            .rdreq(next_burst),
            .wrreq(fifo_burst_w),
            .q(burst_len),
            .data(tmp_burst_info));

        assign WDATA   = data_buf[BUS_DATA_WIDTH - 1:0];
        assign WSTRB   = strb_buf[BUS_DATA_BYTES - 1:0];
        assign WLAST   = WLAST_Dummy;
        assign WVALID  = WVALID_Dummy;

        assign tmp_burst_info = awlen_tmp;

        assign next_data        = first_split;
        assign next_burst       = (len_cnt == burst_len) && burst_valid && last_split;
        assign ready_for_data   = ~(WVALID_Dummy && ~WREADY);

        assign first_split = (split_cnt == 0) && data_valid && burst_valid && ready_for_data;
        assign last_split  = (split_cnt == (TOTAL_SPLIT - 1)) && ready_for_data;
        assign next_split  = (split_cnt != 0) && ready_for_data;

        always @(posedge ACLK)
        begin
            if (ARESET)
                split_cnt <= 0;
            else if (ACLK_EN) begin
                if (last_split)
                    split_cnt <= 0;
                else if (first_split || next_split)
                    split_cnt <= split_cnt + 1;
            end
        end

        always @(posedge ACLK)
        begin
            if (ARESET)
                len_cnt <= 0;
            else if (ACLK_EN) begin
                if (next_burst)
                    len_cnt <= 0;
                else if (next_data || next_split)
                    len_cnt <= len_cnt + 1;
            end
        end

        always @(posedge ACLK)
        begin
            if (ACLK_EN) begin
                if (next_data)
                    data_buf <= tmp_data;
                else if (next_split)
                    data_buf <= data_buf >> BUS_DATA_WIDTH;
            end
        end

        always @(posedge ACLK)
        begin
            if (ARESET)
                strb_buf <= 0;
            else if (ACLK_EN) begin
                if (next_data)
                    strb_buf <= tmp_strb;
                else if (next_split)
                    strb_buf <= strb_buf >> BUS_DATA_BYTES;
            end
        end

        always @(posedge ACLK)
        begin
            if (ARESET)
                WVALID_Dummy <= 0;
            else if (ACLK_EN) begin
                if (next_data)
                    WVALID_Dummy <= 1;
                else if (~(first_split || next_split) && ready_for_data)
                    WVALID_Dummy <= 0;
            end
        end

        always @(posedge ACLK)
        begin
            if (ARESET)
                WLAST_Dummy <= 0;
            else if (ACLK_EN) begin
                if (next_burst && last_split)
                    WLAST_Dummy <= 1;
                else if (ready_for_data)
                    WLAST_Dummy <= 0;
            end
        end

    end
    else begin: bus_wide_gen
        localparam
            TOTAL_PADS      = BUS_DATA_WIDTH / USER_DATA_WIDTH,
            PAD_ALIGN       = log2(TOTAL_PADS);

        reg  [BUS_DATA_WIDTH - 1:0]                 data_buf;
        reg  [BUS_DATA_BYTES - 1:0]                 strb_buf;
        wire [2*PAD_ALIGN + 7:0]                    burst_pack;
        wire [2*PAD_ALIGN + 7:0]                    tmp_burst_info;
        wire [PAD_ALIGN - 1:0]                      head_pads;
        wire [PAD_ALIGN - 1:0]                      tail_pads;
        wire [TOTAL_PADS - 1:0]                     add_head;
        wire [TOTAL_PADS - 1:0]                     add_tail;
        wire [TOTAL_PADS - 1:0]                     pad_oh;
        reg  [TOTAL_PADS - 1:0]                     pad_oh_reg;
        wire [TOTAL_PADS - 1:0]                     head_pad_sel;
        wire [0:TOTAL_PADS - 1]                     tail_pad_sel;
        wire [7:0]                                  awlen_tmp_t;
        wire                                        ready_for_data;
        wire                                        next_pad;
        reg                                         first_pad;
        wire                                        last_pad;
        wire                                        first_beat;
        wire                                        last_beat;
        wire                                        next_beat;

        YOLO2_FPGA_DATA_BUS5_m_axi_fifo #(
            .DATA_BITS(8 + 2*PAD_ALIGN),
            .DEPTH(USER_MAXREQS),
            .DEPTH_BITS(log2(USER_MAXREQS))
        ) fifo_burst (
            .sclk(ACLK),
            .reset(ARESET),
            .sclk_en(ACLK_EN),
            .empty_n(burst_valid),
            .full_n(fifo_burst_ready),
            .rdreq(next_burst),
            .wrreq(fifo_burst_w),
            .q(burst_pack),
            .data(tmp_burst_info));

        assign WDATA   = data_buf;
        assign WSTRB   = strb_buf;
        assign WLAST   = WLAST_Dummy;
        assign WVALID  = WVALID_Dummy;

        assign awlen_tmp_t = awlen_tmp;
        assign tmp_burst_info = {awaddr_tmp[BUS_ADDR_ALIGN - 1:USER_ADDR_ALIGN], burst_end[BUS_ADDR_ALIGN - 1:USER_ADDR_ALIGN], awlen_tmp_t};

        YOLO2_FPGA_DATA_BUS5_m_axi_decoder #(
            .DIN_WIDTH(PAD_ALIGN)
        ) head_pad_decoder (
            .din(head_pads),
            .dout(head_pad_sel));

        YOLO2_FPGA_DATA_BUS5_m_axi_decoder #(
            .DIN_WIDTH(PAD_ALIGN)
        ) tail_pad_decoder (
            .din(tail_pads),
            .dout(tail_pad_sel));

        assign head_pads = burst_pack[2*PAD_ALIGN + 7:8 + PAD_ALIGN];
        assign tail_pads = ~burst_pack[PAD_ALIGN + 7:8];
        assign burst_len = burst_pack[7:0];

        assign next_data        = next_pad;
        assign next_burst       = last_beat && next_beat;
        assign ready_for_data   = ~(WVALID_Dummy && ~WREADY);

        assign first_beat = (len_cnt == 0) && burst_valid;
        assign last_beat  = (len_cnt == burst_len) && burst_valid;
        assign next_beat  = burst_valid && last_pad && ready_for_data;

        assign next_pad  = burst_valid && data_valid && ready_for_data;
        assign last_pad  = (last_beat)? pad_oh[TOTAL_PADS - tail_pads - 1] : pad_oh[TOTAL_PADS - 1];

        always @(posedge ACLK)
        begin
            if (ARESET)
                first_pad <= 1;
            else if (ACLK_EN) begin
                if (next_pad && ~last_pad)
                    first_pad <= 0;
                else if (next_pad && last_pad)
                    first_pad <= 1;
            end
        end

        assign pad_oh = (data_valid == 0)?          0 :
                        (first_pad && first_beat)?  1 << head_pads :
                        (first_pad)?                1 :
                                                    pad_oh_reg;
        always @(posedge ACLK)
        begin
            if (ARESET)
                pad_oh_reg <= 0;
            else if (ACLK_EN) begin
                if (next_pad)
                    pad_oh_reg <= {pad_oh[TOTAL_PADS - 2:0], 1'b0};
            end
        end

        genvar  i;
        for (i = 1; i <= TOTAL_PADS; i = i + 1) begin : data_gen
            assign add_head[i-1] = head_pad_sel[i-1] && first_beat;
            assign add_tail[i-1] = tail_pad_sel[i-1] && last_beat;

            always @(posedge ACLK)
            begin
                if (ACLK_EN) begin
                    if ((add_head[i-1] || add_tail[i-1]) && ready_for_data)
                        data_buf[i*USER_DATA_WIDTH - 1:(i-1)*USER_DATA_WIDTH] <= 0;
                    else if (pad_oh[i-1] == 1'b1 && ready_for_data)
                        data_buf[i*USER_DATA_WIDTH - 1:(i-1)*USER_DATA_WIDTH] <= tmp_data;
                end
            end

            always @(posedge ACLK)
            begin
                if (ARESET)
                    strb_buf[i*USER_DATA_BYTES - 1:(i-1)*USER_DATA_BYTES] <= 0;
                else if (ACLK_EN) begin
                    if ((add_head[i-1] || add_tail[i-1]) && ready_for_data)
                        strb_buf[i*USER_DATA_BYTES - 1:(i-1)*USER_DATA_BYTES] <= 0;
                    else if (pad_oh[i-1] == 1'b1 && ready_for_data)
                        strb_buf[i*USER_DATA_BYTES - 1:(i-1)*USER_DATA_BYTES] <= tmp_strb;
                end
            end

        end

        always @(posedge ACLK)
        begin
            if (ARESET)
                WVALID_Dummy <= 0;
            else if (ACLK_EN) begin
                if (next_beat)
                    WVALID_Dummy <= 1;
                else if (ready_for_data)
                    WVALID_Dummy <= 0;
            end
        end

        always @(posedge ACLK)
        begin
            if (ARESET)
                WLAST_Dummy <= 0;
            else if (ACLK_EN) begin
                if (next_burst)
                    WLAST_Dummy <= 1;
                else if (ready_for_data)
                    WLAST_Dummy <= 0;
            end
        end

        always @(posedge ACLK)
        begin
            if (ARESET)
                len_cnt <= 0;
            else if (ACLK_EN) begin
                if (next_burst)
                    len_cnt <= 0;
                else if (next_beat)
                    len_cnt <= len_cnt + 1;
            end
        end

    end
    endgenerate

//------------------------W channel end------------------

//------------------------B channel begin----------------
//------------------------Instantiation------------------
    YOLO2_FPGA_DATA_BUS5_m_axi_fifo #(
        .DATA_BITS(2),
        .DEPTH(NUM_WRITE_OUTSTANDING-1),
        .DEPTH_BITS(log2(NUM_WRITE_OUTSTANDING-1))
    ) fifo_resp (
        .sclk(ACLK),
        .reset(ARESET),
        .sclk_en(ACLK_EN),
        .empty_n(need_wrsp),
        .full_n(fifo_resp_ready),
        .rdreq(next_resp),
        .wrreq(fifo_resp_w),
        .q(aw2b_bdata),
        .data(aw2b_awdata));

    YOLO2_FPGA_DATA_BUS5_m_axi_fifo #(
        .DATA_BITS(2),
        .DEPTH(USER_MAXREQS),
        .DEPTH_BITS(log2(USER_MAXREQS))
    ) fifo_resp_to_user (
        .sclk(ACLK),
        .reset(ARESET),
        .sclk_en(ACLK_EN),
        .empty_n(wrsp_valid),
        .full_n(resp_ready),
        .rdreq(wrsp_ack),
        .wrreq(resp_match),
        .q(wrsp),
        .data(bresp_tmp));

//------------------------Body---------------------------
    assign BREADY = resp_ready;
    assign last_resp = aw2b_bdata[1];
    assign invalid_event = aw2b_bdata[0];
    assign resp_match = (next_resp && (last_resp || invalid_event)) && need_wrsp;

    always @(posedge ACLK)
    begin
        if (ARESET)
            next_resp <= 1'b0;
        else if (ACLK_EN) begin
            next_resp <= BVALID && resp_ready || (invalid_event && need_wrsp && ~next_resp);
        end
    end

    always @(posedge ACLK)
    begin
        if (ARESET)
            bresp_tmp <= 2'b00;
        else if (ACLK_EN) begin
            if (resp_match && ~next_resp)           // last resp and no resp for next cycle: reset to 0
                bresp_tmp <= 2'b00;
            else if (resp_match && next_resp)       // last resp but has resp for next cycle
                bresp_tmp <= BRESP;
            else if (BVALID && resp_ready && ~bresp_tmp[1])
                bresp_tmp <= BRESP;
        end
    end

//------------------------B channel end------------------
endmodule
