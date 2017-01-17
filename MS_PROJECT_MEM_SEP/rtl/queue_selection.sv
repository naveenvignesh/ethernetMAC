module queue_selection(
AXI_clks.to_rtl clks,
input         arb_nxt,
input  [63:0] pfifo_datain0,pfifo_datain1,pfifo_datain2,
input  [31:0] crcfifo0_dataout,crcfifo1_dataout,crcfifo2_dataout,
input  [15:0] pfifo_datain_ctrl_0,pfifo_datain_ctrl_1,pfifo_datain_ctrl_2,
input         crcfifo0_empty,crcfifo1_empty,crcfifo2_empty,
input         pfifo_pop,crcfifo_pop,
output        crcfifo0_pull,crcfifo1_pull,crcfifo2_pull,
output        pfifo_pop_0,pfifo_pop_1,pfifo_pop_2,
output        pcfifo_pop_0,pcfifo_pop_1,pcfifo_pop_2,
output [63:0] pfifo_datain,
output [15:0] pfifo_datain_ctrl,
output [31:0] crcfifo_dataout,
output        start_transmit

);

/*
-----------------------------------------------------------------------------
_________________         ________________
                 |        |               |
                 |======> |               |
_________________|        |               |
_________________         |               |
                 |        |               |
                 |======> |               |==============>
_________________|        |               |
_________________         |               |
                 |        |               |
                 |======> |               |
_________________|        |_______________|
-----------------------------------------------------------------------------
*/

reg pktpop0,pktpop1,pktpop2;
reg crcpop0,crcpop1,crcpop2;
reg [2:0] req,gnt,buffer_sel;
reg [63:0] pfifo_datain_sel;
reg [15:0] pfifo_datain_ctrl_sel;
reg [31:0] crcfifo_dataout_sel;

assign start_transmit    = ~crcfifo0_empty | ~crcfifo1_empty | ~crcfifo2_empty;
assign pfifo_datain      = pfifo_datain_sel;
assign pfifo_datain_ctrl = pfifo_datain_ctrl_sel;
assign crcfifo_dataout   = crcfifo_dataout_sel;
assign {pfifo_pop_0,pfifo_pop_1,pfifo_pop_2}       = {pktpop0,pktpop1,pktpop2};
assign {crcfifo0_pull,crcfifo1_pull,crcfifo2_pull} = {crcpop0,crcpop1,crcpop2};
assign {pcfifo_pop_0,pcfifo_pop_1,pcfifo_pop_2}    = {pktpop0,pktpop1,pktpop2};
assign req = {~crcfifo2_empty,~crcfifo1_empty,~crcfifo0_empty}; 
assign buffer_sel = gnt;

QOS_arb qos(.clks(clks),.req(req),.arb_nxt(arb_nxt),.gnt(gnt));

always @* begin
  pktpop0               = 0;
  pktpop1               = 0;
  pktpop2               = 0;
  crcpop0               = 0;
  crcpop1               = 0;
  crcpop2               = 0;
  crcfifo_dataout_sel   = 32'h0;
  pfifo_datain_sel      = 63'h0;
  pfifo_datain_ctrl_sel = 16'h0;

  case(buffer_sel)
   3'b001: begin
             pktpop0               = pfifo_pop;
             crcpop0               = crcfifo_pop;
             crcfifo_dataout_sel   = crcfifo0_dataout;
             pfifo_datain_sel      = pfifo_datain0;
             pfifo_datain_ctrl_sel = pfifo_datain_ctrl_0;
	   end
   3'b010: begin
             pktpop1               = pfifo_pop;
             crcpop1               = crcfifo_pop;
             crcfifo_dataout_sel   = crcfifo1_dataout;
             pfifo_datain_sel      = pfifo_datain1;
             pfifo_datain_ctrl_sel = pfifo_datain_ctrl_1;
           end
   3'b100: begin
             pktpop2               = pfifo_pop;
             crcpop2               = crcfifo_pop;
             crcfifo_dataout_sel   = crcfifo2_dataout;
             pfifo_datain_sel      = pfifo_datain2;
             pfifo_datain_ctrl_sel = pfifo_datain_ctrl_2;
           end
  endcase
end

endmodule 
