function [31:0] next_div32_data1(input [31:0] crc,input D); // remainder M(x)/P(x)
begin 
 // crc --- previous crc value.
 // D   --- data input to D.

 next_div32_data1 = {crc[30:0], D} ^ ({32{crc[31]}} & 
                     32'b00000100_1_10000010001_1_10_1_10_1_10_1_1_1);
                     // ^26 ^23 ^22 ^16 ^12 ^11 ^10 ^8 ^7 ^5 ^4 ^2 ^1 ^0
end 
endfunction 

function [31:0] next_div32_data32(input [31:0] crc,input [31:0] inp); 
  integer i; 
  begin 
    next_div32_data32  = crc; 
    for(i=0; i<32; i=i+1)   
      next_div32_data32  = 
          next_div32_data1(next_div32_data32,inp[31-i]); 
  end 
endfunction 


function [31:0] next_crc32_data64(input [31:0] crc,input [63:0] inp); 
  integer i; 
  begin 
    next_crc32_data64  = crc; 
    for(i=0; i<64; i=i+1)   
      next_crc32_data64  =  
          next_div32_data1(next_crc32_data64, inp[63-i]); 
  end 
endfunction 


initial begin 
end 

