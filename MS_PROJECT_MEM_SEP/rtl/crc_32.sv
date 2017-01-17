module crc_32(
input [31:0] data_in,
output [31:0] crc_out);

reg [31:0] crc_poly = 32'hc704dd78;

function [31:0] crc_32(input [31:0] data_in)
   integer i;
   reg [63:0] pad_value[32];
  
   pad_value[0] = {data_in[0:31],32'hFFFFFFFF};
   for(i=1;i<31;i=i+1) begin 
    pad_value[i] = pad_value[i-1] ^   
   end

endfunction 

endmodule 
