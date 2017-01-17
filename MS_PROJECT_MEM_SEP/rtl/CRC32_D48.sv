module CRC32_D48(input [47:0] data,input [31:0] crc,output [31:0] crc_nxt);
  reg [31:0] crc_temp;
  
  CRC32_D32 crc32(data[47:16],crc,crc_temp);
  CRC32_D16 crc16(data[15:0],crc_temp,crc_nxt);
 
endmodule 
