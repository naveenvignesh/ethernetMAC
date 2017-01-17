module CRC32_D40(input [39:0] data,input [31:0] crc,output [31:0] crc_nxt);

  reg [31:0] crc_temp;
  CRC32_D32 crc32(data[39:8],crc,crc_temp);
  CRC32_D8  crc8(data[7:0],crc_temp,crc_nxt);

endmodule
