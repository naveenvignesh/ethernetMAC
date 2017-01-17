/* -.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.
* File Name : QOS_arb.sv
* Purpose :   Module that handles Qulaity of service in ethernet 
* Creation Date : 11 Sep 2016
* Last Modified : 11 Sep 2016
* Created By :    Naveen Vignesh 
_._._._._._._._._._._._._._._._._._._._._.*/
module QOS_arb(
AXI_clks.to_rtl clks,
input [2:0] req,
input   arb_nxt,
output [2:0] gnt
);
  
  reg en0,en1,en2;
  reg en0_d,en1_d,en2_d;
  wire [2:0] req0,req1,req2;
  wire [2:0] gnt0,gnt1,gnt2;

  prienc #(.N(3)) pr0 (en0,req0,gnt0);
  prienc #(.N(3)) pr1 (en1,req1,gnt1);
  prienc #(.N(3)) pr2 (en2,req2,gnt2);

  //reg [31:0] srv_cnt0_d,srv_cnt1_d,srv_cnt2_d;
  //reg [31:0] srv_cnt0_q,srv_cnt1_q,srv_cnt2_q;
  reg [7:0] srv_cnt0_d,srv_cnt1_d,srv_cnt2_d;
  reg [7:0] srv_cnt0_q,srv_cnt1_q,srv_cnt2_q;
  reg [2:0]  queue_gnt_d,queue_gnt_q;
  //wire [31:0] add_cnt;
  wire [7:0] add_cnt;
  wire q_ovr_all,q_ovr_0,q_ovr_1,q_ovr_2;
  wire q_atv_0,q_atv_1,q_atv_2;
  wire [2:0] cmp_val;

  always @(posedge clks.clk or negedge clks.rst) begin
      if(~clks.rst) begin
             srv_cnt0_d  <= #0 32'h0;
             srv_cnt1_d  <= #0 32'h0;
             srv_cnt2_d  <= #0 32'h0;
             queue_gnt_d <= #0 3'b000;
             en0_d       <= #0 1'b0;
             en1_d       <= #0 1'b0;
             en2_d       <= #0 1'b0;
      end else begin
             srv_cnt0_d  <= #1 q_ovr_all ? 32'h0 : srv_cnt0_q;
             srv_cnt1_d  <= #1 q_ovr_all ? 32'h0 : srv_cnt1_q;
             srv_cnt2_d  <= #1 q_ovr_all ? 32'h0 : srv_cnt2_q;
             queue_gnt_d <= #1 queue_gnt_q;
             en0_d     <= #1 en0;
             en1_d     <= #1 en1;
             en2_d     <= #1 en2;
               end   
  end

assign add_cnt = {srv_cnt0_q + srv_cnt1_q + srv_cnt2_q};
assign q_ovr_all = (add_cnt == 7);
assign q_ovr_0 = (srv_cnt0_q == 4);
assign q_ovr_1 = (srv_cnt1_q == 2);
assign q_ovr_2 = (srv_cnt2_q == 1);
assign q_atv_0 = (srv_cnt0_d < 4)? 1'b1 : 1'b0;
assign q_atv_1 = (srv_cnt1_d < 2)? 1'b1 : 1'b0;
assign q_atv_2 = (srv_cnt2_d < 1)? 1'b1 : 1'b0;
assign cmp_val = {q_atv_2,q_atv_1,q_atv_0};
//assign {req0,req1,req2} = {req & cmp_val,req & cmp_val ,req & cmp_val};
//assign {req0,req1,req2} = {req ,req ,req};
assign req0 = {req[0],req[1],req[2]};
assign req1 = {req[1],req[2],req[0]};
assign req2 = {req[2],req[1],req[0]};
  always @(*) begin
      
      en0         = 1'b1;//en0_d;
      en1         = 1'b1;//en1_d;
      en2         = 1'b1;//en2_d;
      queue_gnt_q = queue_gnt_d;
 
    if(arb_nxt) begin
      case(1)
        cmp_val[0]: begin
                     queue_gnt_q = {gnt0[0],gnt0[1],gnt0[2]};
	            end
        cmp_val[1]: begin
                     queue_gnt_q = {gnt1[1],gnt1[2],gnt1[0]};
	            end
        cmp_val[2]: begin
                     queue_gnt_q = {gnt2[2],gnt2[0],gnt2[1]};
	            end
      endcase
    
     end
      srv_cnt0_q  = queue_gnt_q[0] & arb_nxt ? (srv_cnt0_d+1):srv_cnt0_d;
      srv_cnt1_q  = queue_gnt_q[1] & arb_nxt ? (srv_cnt1_d+1):srv_cnt1_d;
      srv_cnt2_q  = queue_gnt_q[2] & arb_nxt ? (srv_cnt2_d+1):srv_cnt2_d;
     
  end

assign gnt = queue_gnt_d;

endmodule 

