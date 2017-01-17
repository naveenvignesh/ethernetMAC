module CRC_block
(AXI_clks.to_rtl clks,
input dready,
input [63:0] datain,
input [7:0]  ctrl_wd,
input [7:0]  bvalid,
output reg data_vld,
output reg crc_vld_2d,
output[63:0] data_out,
output[31:0] crc_out);

reg [31:0] crc,crc_nxt;
reg [31:0] crc8_nxt;
reg [31:0] crc16_nxt;
reg [31:0] crc24_nxt;
reg [31:0] crc32_nxt;
reg [31:0] crc40_nxt;
reg [31:0] crc48_nxt;
reg [31:0] crc56_nxt;
reg [31:0] crc64_nxt;
reg [63:0] dataout;
//reg [31:0] crc16_d,crc16;
//reg [31:0] crc24_d,crc24;
//reg [31:0] crc32_d,crc32;
//reg [31:0] crc48_d,crc48;
//reg [31:0] crc56_d,crc56;
//reg [31:0] crc64_d,crc64;
reg [31:0] crcin8_d,  crcin8, crcin8_nxt;
reg [31:0] crcin16_d,crcin16,crcin16_nxt;
reg [31:0] crcin24_d,crcin24,crcin24_nxt;
reg [31:0] crcin32_d,crcin32,crcin32_nxt;
reg [31:0] crcin40_d,crcin40,crcin40_nxt;
reg [31:0] crcin48_d,crcin48,crcin48_nxt;
reg [31:0] crcin56_d,crcin56,crcin56_nxt;
reg [31:0] crcin64_d,crcin64,crcin64_nxt;
reg [7:0]   data8,data8_d;
reg [15:0]  data16,data16_d;
reg [23:0]  data24,data24_d;
reg [31:0]  data32,data32_d;
reg [39:0]  data40,data40_d;
reg [47:0]  data48,data48_d;
reg [55:0]  data56,data56_d;
reg [63:0]  data64,data64_d;
reg         crc_vld_d,crc_vld;

reg load8 ,load8_d,  load8_2d;
reg load16,load16_d,load16_2d;
reg load24,load24_d,load24_2d;
reg load32,load32_d,load32_2d;
reg load40,load40_d,load40_2d;
reg load48,load48_d,load48_2d;
reg load56,load56_d,load56_2d;
reg load64,load64_d,load64_2d;


CRC32_D8  crc8 (data8_d ,crcin8_d,crc8_nxt);
CRC32_D16 crc16(data16_d,crcin16_d,crc16_nxt);
CRC32_D24 crc24(data24_d,crcin24_d,crc24_nxt);
CRC32_D32 crc32(data32_d,crcin32_d,crc32_nxt);
CRC32_D40 crc40(data40_d,crcin40_d,crc40_nxt);
CRC32_D48 crc48(data48_d,crcin48_d,crc48_nxt);
CRC32_D56 crc56(data56_d,crcin56_d,crc56_nxt);
CRC32_D64 crc64(data64_d,crcin64_d,crc64_nxt);

always @(posedge clks.clk or negedge clks.rst) begin 
      if(!clks.rst) begin 
         data_vld  <= #0 0;
         crc_vld_d <= #0 0;
         crc_vld_2d <= #0 0;
         //crc_vld_3d <= #0 0;
         dataout   <= #0 0;
         crc       <= #0 32'hFFFFFFFF;
         data8_d   <= #0 0; 
         data16_d  <= #0 0; 
         data32_d  <= #0 0; 
         data64_d  <= #0 0; 
         data48_d  <= #0 0;
         data40_d  <= #0 0;
         data56_d  <= #0 0;
         //crc16_d   <= #0 0;
         //crc24_d   <= #0 0;
         //crc32_d   <= #0 0;
         //crc48_d   <= #0 0;
         //crc56_d   <= #0 0;
         //crc64_d   <= #0 0;
         crcin16_d <= #0 0;
         crcin24_d <= #0 0;
         crcin32_d <= #0 0;
         crcin40_d <= #0 0;
         crcin48_d <= #0 0;
         crcin56_d <= #0 0;
         crcin64_d <= #0 0;
         load8_d   <= #0 0;
         load16_d  <= #0 0;
         load24_d  <= #0 0;
         load32_d  <= #0 0;
         load40_d  <= #0 0;
         load48_d  <= #0 0;
         load56_d  <= #0 0;
         load64_d  <= #0 0;
          load8_2d <=#0 0;
         load16_2d <=#0 0;
         load24_2d <=#0 0;
         load32_2d <=#0 0;
         load40_2d <=#0 0;
         load48_2d <=#0 0;
         load56_2d <=#0 0;
         load64_2d <=#0 0;
      end else begin
                crc       <= #1 crc_nxt;
                data_vld  <= #1 dready;
                data8_d   <= #1 load8 ?datain[63:56]:data8_d; 
                data16_d  <= #1 load16?datain[63:48]:data16_d; 
                data24_d  <= #1 load24?datain[63:40]:data24_d; 
                data32_d  <= #1 load32?datain[63:32]:data32_d; 
                data40_d  <= #1 load40?datain[63:24]:data40_d; 
                data48_d  <= #1 load48?datain[63:16]:data48_d; 
                data56_d  <= #1 load56?datain[63:8]:data56_d; 
                data64_d  <= #1 load64?datain:data64_d; 
                //crc16_d   <= #1 crc16;
                //crc24_d   <= #1 crc24;
                //crc32_d   <= #1 crc32;
                //crc48_d   <= #1 crc48;
                //crc56_d   <= #1 crc56;
                //crc64_d   <= #1 crc64;
                crcin8_d    <= #1 crcin8;
                crcin16_d   <= #1 crcin16;
                crcin24_d   <= #1 crcin24;
                crcin32_d   <= #1 crcin32;
                crcin40_d   <= #1 crcin40;
                crcin48_d   <= #1 crcin48;
                crcin56_d   <= #1 crcin56;
                crcin64_d   <= #1 crcin64;
                dataout     <= #1 datain;
                crc_vld_d   <= #1 crc_vld;
                load8_d     <= #1 load8;
                load16_d    <= #1 load16;
                load24_d    <= #1 load24;
                load32_d    <= #1 load32;
                load40_d    <= #1 load40;
                load48_d    <= #1 load48;
                load56_d    <= #1 load56;
                load64_d    <= #1 load64;
                load8_2d     <= #1 load8_d;
                load16_2d    <= #1 load16_d;
                load24_2d    <= #1 load24_d;
                load32_2d    <= #1 load32_d;
                load40_2d    <= #1 load40_d;
                load48_2d    <= #1 load48_d;
                load56_2d    <= #1 load56_d;
                load64_2d    <= #1 load64_d;
                crc_vld_2d <= #1 crc_vld_d;
                //crc_vld_3d <= #1 crc_vld_2d;
               end
end 

/*always @* begin
                    data8  =data8_d ; 
                    data16 =data16_d; 
                    data24 =data24_d; 
                    data32 =data32_d; 
                    data40 =data40_d; 
                    data48 =data48_d; 
                    data56 =data56_d; 
                    data64 =data64_d; 
                    crcin8 =crcin8_d ;     
                    crcin16=crcin16_d;     
                    crcin24=crcin24_d;     
                    crcin32=crcin32_d;     
                    crcin40=crcin40_d;     
                    crcin48=crcin48_d;     
                    crcin56=crcin56_d;     
                    crcin64=crcin64_d;     
                    crc_nxt=crc;
                    crc_vld = 0;

 if(dready) begin 
   case(ctrl_wd)
     8'h09: begin 
                data64   = datain;             
                crcin64  = crc;
                crc_nxt  = crc64_nxt;
            end
     8'h0d: begin 
              crc_vld=1;
              case(bvalid)
                8'hff: begin 
                        data64   = datain;             
                        crcin64  = crc;
                        crc_nxt  = crc64_nxt;
                       end
                8'hfe: begin 
                        data56   = datain;             
                        crcin56  = crc;
                        crc_nxt  = crc56_nxt;
                       end
                8'hfc: begin 
                        data48   = datain;             
                        crcin48  = crc;
                        crc_nxt  = crc48_nxt;
                       end
                8'hf8: begin 
                        data40   = datain;             
                        crcin40  = crc;
                        crc_nxt  = crc40_nxt;
                       end
                8'hf0: begin 
                        data32   = datain;             
                        crcin32  = crc;
                        crc_nxt  = crc32_nxt;
                       end
                8'he0: begin 
                        data24   = datain;             
                        crcin24  = crc;
                        crc_nxt  = crc24_nxt;
                       end
                8'hc0: begin 
                        data16   = datain;             
                        crcin16  = crc;
                        crc_nxt  = crc16_nxt;
                       end
                8'h80: begin 
                        data8   = datain;             
                        crcin8  = crc;
                        crc_nxt = crc8_nxt;
                       end
              endcase
            end
     8'h0b: begin 
                  data64   = datain;
                  crcin64  = crc;
                  crc_nxt  = crc64_nxt;
            end
   endcase 
 end 

end 
*/

always@* begin 
                    data8  =data8_d ; 
                    data16 =data16_d; 
                    data24 =data24_d; 
                    data32 =data32_d; 
                    data40 =data40_d; 
                    data48 =data48_d; 
                    data56 =data56_d; 
                    data64 =data64_d; 
end 

always@* begin 

           load64 = 0;
           load56 = 0;
           load48 = 0;
           load40 = 0;
           load32 = 0;
           load24 = 0;
           load16 = 0;
           load8 = 0;
           crc_vld = 0;
           crcin8 =crcin8_d ;     
           crcin16=crcin16_d;     
           crcin24=crcin24_d;     
           crcin32=crcin32_d;     
           crcin40=crcin40_d;     
           crcin48=crcin48_d;     
           crcin56=crcin56_d;     
           crcin64=crcin64_d;     
 if(dready) begin 
   case(ctrl_wd)
     8'h09: begin 
                load64   = 1;             
                crcin64  = 32'hFFFFFFFF;
            end
     8'h0d: begin 
              crc_vld=1;
              
              case(bvalid)
                8'hff: begin 
                        load64   = 1;             
                        crcin64  = crc_nxt;
                       end
                8'hfe: begin 
                        load56   = 1;             
                        crcin56  = crc_nxt;
                       end
                8'hfc: begin 
                        load48   = 1;             
                        crcin48  = crc_nxt;
                       end
                8'hf8: begin 
                        load40   = 1;             
                        crcin40  = crc_nxt;
                       end
                8'hf0: begin 
                        load32   = 1;             
                        crcin32  = crc_nxt;
                       end
                8'he0: begin 
                        load24   = 1;             
                        crcin24  = crc_nxt;
                       end
                8'hc0: begin 
                        load16   = 1;             
                        crcin16  = crc_nxt;
                       end
                8'h80: begin 
                        load8   = 1;             
                        crcin8  = crc_nxt;
                       end
              endcase
            end
     8'h0b: begin 
                  load64   = 1;
                  crcin64  = crc_nxt;
            end
   endcase 
 end 

end 
   
always @* begin 
  crc_nxt =crc;

  case({load64_d,load56_d,load48_d,load40_d,load32_d,load24_d,load16_d,load8_d})
   8'h80: crc_nxt = crc64_nxt;
   8'h40: crc_nxt = crc56_nxt;
   8'h20: crc_nxt = crc48_nxt;
   8'h10: crc_nxt = crc40_nxt;
   8'h08: crc_nxt = crc32_nxt;
   8'h04: crc_nxt = crc24_nxt;
   8'h02: crc_nxt = crc16_nxt;
   8'h01: crc_nxt = crc8_nxt;
  endcase
end 

assign data_out = dataout;
assign crc_out  = crc;
 

endmodule 
