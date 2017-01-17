interface AXI_clks;
  logic clk,rst;
  
  modport to_rtl(input clk,input rst);
  modport from_tb(output clk,output rst);

endinterface 
interface AXI_rd_addr_ch;
  logic[3:0]   ARID;
  logic[31:0]  ARADDR;
  logic[3:0]   ARLEN;
  logic[2:0]   ARSIZE;
  logic[1:0]   ARBURST;
  logic[1:0]  ARLOCK;
  logic[3:0]  ARCACHE;
  logic[2:0]  ARPROT;
  logic  ARQOS;
  logic  ARREGION;
  logic  ARUSER;
  logic  ARVALID;
  logic  ARREADY;

modport slave_if(input ARID,input ARADDR,input ARLEN,input ARSIZE,
                 input ARBURST,input ARLOCK,input ARCACHE,input ARPROT,
                 input ARQOS,input ARREGION,input ARUSER,input ARVALID,
                 output ARREADY);
modport master_if(output ARID,output ARADDR,output ARLEN,output ARSIZE,
                  output ARBURST,output ARLOCK,  output ARCACHE,output ARPROT,
                  output ARQOS,  output ARREGION,output ARUSER,output ARVALID,
                  input ARREADY);
endinterface 
interface AXI_rd_data_ch;
  logic[3:0]   RID;
  logic[63:0]  RDATA;
  logic[1:0]   RRESP;
  logic        RLAST;
  logic        RUSER;
  logic        RVALID;
  logic        RREADY;
  
  modport slave_if (output RID,output RDATA,output RRESP,output RLAST,
                    output RVALID,output RUSER,input RREADY);
  modport master_if(input RID,input RDATA,input RRESP,input RLAST,
		    input RUSER,input RVALID,output RREADY);  

endinterface 

interface AXI_wr_data_ch;
  logic [3:0]  WID;
  logic [63:0] WDATA;
  logic        WLAST;
  logic        WVALID;
  logic        WREADY;

  modport slave_if(input  WID,input  WDATA,input WLAST,input WVALID,output WREADY);
  modport master_if(output  WID,output  WDATA,output WLAST,output WVALID,input WREADY);

endinterface 

interface AXI_wr_addr_ch;
  logic [3:0]  AWID;
  logic [31:0] AWADDR;
  logic [3:0]  AWLEN;
  logic [2:0]  AWSIZE;
  logic [1:0]  AWBURST;
  logic [1:0]  AWLOCK;
  logic [1:0]  AWCACHE;
  logic [2:0]  AWPROT;
  logic        AWVALID;
  logic        AWREADY;

  modport slave_if (input AWID,input AWADDR,input AWLEN,input AWSIZE,
                    input  AWBURST,input AWLOCK,input AWCACHE,input  AWPROT,
                    input AWVALID,output AWREADY);
  modport master_if(output AWID,output AWADDR,output AWLEN,output AWSIZE,
                    output  AWBURST,output AWLOCK,output AWCACHE,output AWPROT,
                    output AWVALID,input AWREADY);

endinterface 

interface AXI_wr_resp_ch;
 logic[3:0] BID;
 logic[1:0] BRESP;
 logic      BUSER;
 logic      BVALID;
 logic      BREADY;

 modport slave_if(output BID,output BRESP,output BUSER,output BVALID,input BREADY);
 modport master_if(input BID,input BRESP,input BUSER,input BVALID,output BREADY);

endinterface

interface tx_xgmii;
  logic [3:0]  TXC;
  logic [31:0] TXD;
  logic TXCLK;
  //logic TXDCLK;

 modport from_rtl(output TXC,output TXD,output TXCLK);
 modport to_tb(input TXC,input TXD,input TXCLK);
endinterface 


interface rx_xgmii;
  logic [3:0]  RXC;
  logic [31:0] RXD;
  logic RXCLK;

 modport to_rtl(input RXC,input RXD,input RXCLK);
 modport from_tb(output RXC,output RXD,output RXCLK);
endinterface 


interface MEMIF #(parameter DWIDTH=32,AWIDTH=4);
//
// to and from the fifo  memory
//
    logic [AWIDTH-1:0]  f0_waddr;  // Fifo 0 write address
    logic [DWIDTH-1:0]  f0_wdata;  // write data
    logic               f0_write;  // memory write
    logic [AWIDTH-1:0]  f0_raddr;  // memory read address
    logic [DWIDTH-1:0]  f0_rdata;  // memory read data
    

    modport from_fifo(output f0_waddr, output f0_wdata,output f0_write,
        output f0_raddr, input f0_rdata);
    modport to_mem(input f0_waddr, input f0_wdata,input f0_write,
        input f0_raddr, output f0_rdata);

endinterface : MEMIF

interface MEMIF_CRC #(parameter DWIDTH=32,AWIDTH=4);
//
// to and from the fifo  memory
//
    logic [AWIDTH-1:0]  f0_waddr;  // Fifo 0 write address
    logic [DWIDTH-1:0]  f0_wdata;  // write data
    logic               f0_write;  // memory write
    logic [AWIDTH-1:0]  f0_raddr;  // memory read address
    logic [DWIDTH-1:0]  f0_rdata;  // memory read data
    

    modport from_fifo(output f0_waddr, output f0_wdata,output f0_write,
        output f0_raddr, input f0_rdata);
    modport to_mem(input f0_waddr, input f0_wdata,input f0_write,
        input f0_raddr, output f0_rdata);

endinterface : MEMIF_CRC

interface MEMIF_PKTD #(parameter DWIDTH=64,AWIDTH=6);
//
// to and from the fifo  memory
//
    logic [AWIDTH-1:0]  f0_waddr;  // Fifo 0 write address
    logic [DWIDTH-1:0]  f0_wdata;  // write data
    logic               f0_write;  // memory write
    logic [AWIDTH-1:0]  f0_raddr;  // memory read address
    logic [DWIDTH-1:0]  f0_rdata;  // memory read data
    

    modport from_fifo(output f0_waddr, output f0_wdata,output f0_write,
        output f0_raddr, input f0_rdata);
    modport to_mem(input f0_waddr, input f0_wdata,input f0_write,
        input f0_raddr, output f0_rdata);

endinterface : MEMIF_PKTD


interface MEMIF_PKTC #(parameter DWIDTH=16,AWIDTH=6);
//
// to and from the fifo  memory
//
    logic [AWIDTH-1:0]  f0_waddr;  // Fifo 0 write address
    logic [DWIDTH-1:0]  f0_wdata;  // write data
    logic               f0_write;  // memory write
    logic [AWIDTH-1:0]  f0_raddr;  // memory read address
    logic [DWIDTH-1:0]  f0_rdata;  // memory read data
    

    modport from_fifo(output f0_waddr, output f0_wdata,output f0_write,
        output f0_raddr, input f0_rdata);
    modport to_mem(input f0_waddr, input f0_wdata,input f0_write,
        input f0_raddr, output f0_rdata);

endinterface : MEMIF_PKTC

interface MEMIF_SWCHADDR #(parameter DWIDTH=36,AWIDTH=5);
//
// to and from the fifo  memory
//
    logic [AWIDTH-1:0]  f0_waddr;  // Fifo 0 write address
    logic [DWIDTH-1:0]  f0_wdata;  // write data
    logic               f0_write;  // memory write
    logic [AWIDTH-1:0]  f0_raddr;  // memory read address
    logic [DWIDTH-1:0]  f0_rdata;  // memory read data
    

    modport from_fifo(output f0_waddr, output f0_wdata,output f0_write,
        output f0_raddr, input f0_rdata);
    modport to_mem(input f0_waddr, input f0_wdata,input f0_write,
        input f0_raddr, output f0_rdata);

endinterface : MEMIF_SWCHADDR

interface MEMIF_SWCHDATA #(parameter DWIDTH=32,AWIDTH=5);
//
// to and from the fifo  memory
//
    logic [AWIDTH-1:0]  f0_waddr;  // Fifo 0 write address
    logic [DWIDTH-1:0]  f0_wdata;  // write data
    logic               f0_write;  // memory write
    logic [AWIDTH-1:0]  f0_raddr;  // memory read address
    logic [DWIDTH-1:0]  f0_rdata;  // memory read data
    

    modport from_fifo(output f0_waddr, output f0_wdata,output f0_write,
        output f0_raddr, input f0_rdata);
    modport to_mem(input f0_waddr, input f0_wdata,input f0_write,
        input f0_raddr, output f0_rdata);

endinterface : MEMIF_SWCHDATA

interface MEMIF_SWCHRSP #(parameter DWIDTH=6,AWIDTH=5);
//
// to and from the fifo  memory
//
    logic [AWIDTH-1:0]  f0_waddr;  // Fifo 0 write address
    logic [DWIDTH-1:0]  f0_wdata;  // write data
    logic               f0_write;  // memory write
    logic [AWIDTH-1:0]  f0_raddr;  // memory read address
    logic [DWIDTH-1:0]  f0_rdata;  // memory read data
    

    modport from_fifo(output f0_waddr, output f0_wdata,output f0_write,
        output f0_raddr, input f0_rdata);
    modport to_mem(input f0_waddr, input f0_wdata,input f0_write,
        input f0_raddr, output f0_rdata);

endinterface : MEMIF_SWCHRSP
