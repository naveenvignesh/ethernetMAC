
//parameter DWIDTH = 32;
//parameter AWIDTH = 32;
//module dma_fifo(AXI_clks.to_rtl clks,input push,pull,input [DWIDTH-1:0] data_in,
//                output [DWIDTH-1:0] data_out,output reg [AWIDTH:0] depth_left,output full,empty);

module dma_fifo_exmem(clks,push,pull,data_in,data_out,depth_left,full,empty,memif);
parameter DWIDTH      = 64;
parameter AWIDTH      = 8;
parameter FIFO_DEPTH  = (1<<AWIDTH);
AXI_clks.to_rtl         clks;
input                   push,pull;
input      [DWIDTH-1:0] data_in;
output     [DWIDTH-1:0] data_out;
output reg [AWIDTH:0]   depth_left;
output                  full,empty;
MEMIF.from_fifo         memif;
//MEMIF.to_mem            memif_mem;
 
reg [AWIDTH-1:0]  w_ptr,r_ptr;
//reg [31:0] w_data,r_data;
//wire write;

//reg [DWIDTH-1:0] data_mem[0:FIFO_DEPTH-1];
//reg [DWIDTH-1:0] reg_0;
//reg [DWIDTH-1:0] reg_1;
//reg [DWIDTH-1:0] reg_2;
//assign reg_0 = data_mem[0];
//assign reg_1 = data_mem[1];
//assign reg_2 = data_mem[2];
//mem_model #(.DWIDTH(DWIDTH),.AWIDTH(AWIDTH)) MEM_PKT_BUF(memif_mem);
assign memif.f0_waddr = w_ptr;
assign memif.f0_wdata = data_in;
assign memif.f0_write = push;
assign memif.f0_raddr = r_ptr;
assign data_out       = !clks.rst ? 0 : memif.f0_rdata;


//assign read  = rst ? 0 : pull;
//assign write = rst ? 0 : push;
//assign w_data = data_in;    
//assign data_out = !clks.rst ? 0:data_mem[r_ptr]; 
//assign full  = ((w_ptr + 4'h1) == r_ptr);
//assign empty = (r_ptr==w_ptr);
assign full  = (depth_left == 0);
//assign empty = (depth_left == 32);
assign empty = (depth_left == FIFO_DEPTH);

always @(posedge clks.clk or negedge clks.rst) begin 
  if(!clks.rst) begin
 	w_ptr <= #0 0;
        r_ptr <= #0 0; 
        //depth_left <= #0 32;
        depth_left <= #0 FIFO_DEPTH;
  end else begin
  
	        if(pull && !push && !empty) begin
                 r_ptr <= #1 r_ptr + 1;
                 depth_left <= #1 depth_left +1; 
                end 
                
                if(!pull && push && !full) begin
                 w_ptr <= #1 w_ptr + 1; 
                 depth_left <= #1 depth_left -1; 
                 //data_mem[w_ptr] <= #1 data_in;
                end  
                
                if(push && pull && !empty && !full) begin 
                 r_ptr <= #1 r_ptr + 1;
                 w_ptr <= #1 w_ptr + 1;
                 //data_mem[w_ptr] <= #1 data_in;
                end 
           
           end 

end 

assert property  ( @(posedge clks.clk) disable iff (!clks.rst) (!(full && push)) ) ; 
assert property  ( @(posedge clks.clk) disable iff (!clks.rst) (!(empty && pull))) ;
endmodule 
