module CRC32_D24(input [23:0] data,input [31:0] crc,output [31:0] crc_nxt);
 
 reg [31:0] crc_temp;

   CRC32_D16 crc16(data[23:8],crc,crc_temp);
   CRC32_D8  crc8 (data[7:0],crc_temp,crc_nxt);

endmodule
