//simple memory model to hold ethernet packet data 
//data from memory will be fetched by AXI bus interface
// 16KB of memory usage from base address
//
module sram_mem(
input [63:0] data_in,
input clk,
input write,
input read,
input [31:0] wr_addr,
input [31:0] rd_addr,
output[63:0] data_out);

reg   [63:0] mem [0:2047]; // 16 KB of memory

assign data_out = read ? mem[rd_addr] : 64'h0000_0000_0000_0000;

always @(posedge clk) begin 
  if(write) begin
             mem[wr_addr] <= #1 data_in;
            end
end  
  
endmodule 

