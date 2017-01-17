module Packet_queue_sm(
AXI_clks.to_rtl clks,
input valid,
input [63:0] head_ptr, // from link_chain in main module
output [2:0] channel_id,
output [63:0] head_ptr_to_axi,
//output [2:0]  req_push_hptr,
//output [2:0]  req_push_link_ptr,
//input  [2:0]  gnt_push_hptr,
//input  [2:0]  gnt_push_link_ptr
);

reg [2:0] req_hptr_vec,gnt_hpt_vec;
reg [2:0] push_ptr_vec,push_ptr_gnt;
endmodule 
