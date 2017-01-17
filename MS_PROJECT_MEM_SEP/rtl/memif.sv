

interface AXI_clks;
  logic clk,rst;
  
  modport to_rtl(input clk,input rst);
  modport from_tb(output clk,output rst);

endinterface 

interface MEMIF #(parameter DWIDTH=32,AWIDTH=4)(AXI_clks clks);
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
        input f0_raddr, output f0_rdata,input clks);

endinterface : MEMIF
