module AXI_slave (AXI_clks.to_rtl clks,
                  //AXI_rd_addr_ch.slave_if r_ach,AXI_rd_data_ch.slave_if r_dch,
                  AXI_wr_addr_ch.slave_if w_ach,AXI_wr_data_ch.slave_if w_dch,
                  AXI_wr_resp_ch.slave_if w_rspch,
                  output [63:0] reg_write_data, 
                  output [31:0] reg_write_addr,
                  output wr_en,
                  MEMIF_SWCHADDR.from_fifo  memif_swchaddr,                  
                  MEMIF_SWCHDATA.from_fifo  memif_swchdata,                  
                  MEMIF_SWCHRSP.from_fifo  memif_swchrsp                  
                  );

parameter ARID =4'h0;
parameter AWID =4'h0;
parameter OKAY =2'b00;
parameter EXOKAY = 2'b01;
parameter SLVERR = 2'b10;
parameter DECERR = 2'b11;


reg bvalid;
reg [1:0] bresp;
reg [3:0] bid;
reg wchrsp_full,wchrsp_empty,wchrsp_push,wchrsp_pull;
reg [5:0] wchrsp_datain,wchrsp_dataout;
reg [5:0] wchaddr_depthleft,wchrsp_depthleft,wchdata_depthleft;
dma_fifo_exmem_swchrsp #(.DWIDTH(6),.AWIDTH(5)) wchrsp_fifo (  .clks(clks),.push(wchrsp_push),
                               .pull(wchrsp_pull),
                               .data_in(wchrsp_datain) ,.data_out(wchrsp_dataout),
                               .depth_left(wchrsp_depthleft),.full(wchrsp_full),
                               .empty(wchrsp_empty),.memif(memif_swchrsp));



typedef enum reg [1:0] {RST_WACH=2'b00,WAIT_FOR_AWVALID=2'b01}w_ach_state; 
typedef enum reg [1:0] {RST_WDCH=2'b00,WAIT_FOR_WVALID=2'b01,BURST_STATE=2'b10}w_dch_state; 
typedef enum reg [1:0] {RST_WRSP=2'b00,ASSERT_BVALID=2'b01}w_rspch_state; 

w_ach_state   w_ach_cur_state,w_ach_nxt_state;
w_dch_state   w_dch_cur_state,w_dch_nxt_state;
w_rspch_state w_rspch_cur_state,w_rspch_nxt_state;

reg wchaddr_full,wchaddr_empty,wchaddr_push,wchaddr_pull;
reg wchaddr_push_nxt,wchaddr_pull_nxt;
reg [35:0] wchaddr_datain,wchaddr_dataout;
reg awready_d,awready_nxt;
//reg [5:0] wchaddr_depthleft,wchrsp_depthleft,wchdata_depthleft;

dma_fifo_exmem_swchaddr #(.DWIDTH(36),.AWIDTH(5)) wchaddr_fifo (.clks(clks),.push(wchaddr_push),
                                   .pull(wchaddr_pull),
                                   .data_in(wchaddr_datain) ,.data_out(wchaddr_dataout),
                                   .depth_left(wchaddr_depthleft),.full(wchaddr_full),
                                   .empty(wchaddr_empty),.memif(memif_swchaddr));
assign w_ach.AWREADY = awready_d; 
// write address channel state machine
always @(posedge clks.clk or negedge clks.rst) begin
   if(!clks.rst) begin 
      w_ach_cur_state <= #0 RST_WACH;
      awready_d       <= #0 0;
   end else begin 
      w_ach_cur_state <= #1 w_ach_nxt_state;
      awready_d       <= #1 awready_nxt;
            end  
end 

// nxt state calculation 
always @(*) begin 
   w_ach_nxt_state     = w_ach_cur_state;
   awready_nxt         = 0;
   wchaddr_datain      = {(w_ach.AWBURST==1),
                           w_ach.AWLEN,w_ach.AWADDR}; // to bursty writes 
   wchaddr_push        = w_ach.AWVALID & w_ach.AWREADY;
   
  case(w_ach_cur_state)
    RST_WACH:begin 
            if(clks.rst) begin 
             w_ach_nxt_state = WAIT_FOR_AWVALID;
            end 
        end
   
    WAIT_FOR_AWVALID:begin 
                     
                        w_ach_nxt_state = WAIT_FOR_AWVALID;
                        awready_nxt     = 0;    
                      if(w_ach.AWVALID & !wchaddr_full)  begin 
                        awready_nxt     = 1;
                      end  
                        
                     end
  endcase 

end 
/////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////
reg [31:0] burst_addr_d,burst_addr_nxt;
reg [3:0] burst_cnt_d,burst_cnt_nxt;
reg wchdata_full,wchdata_empty,wchdata_push,wchdata_pull;
//reg [63:0] wchdata_datain,wchdata_dataout;
reg [31:0] wchdata_datain,wchdata_dataout; // fixed due to simulation warning
reg [3:0] arlen_d,arlen_nxt;
reg burst_on,wr_en_reg;
reg [31:0] write_addr_reg;
reg wready_nxt,wready_d;
assign reg_write_data = w_dch.WDATA;
assign reg_write_addr = write_addr_reg;
assign wr_en          = wr_en_reg;
assign wchdata_pull   = 0;
assign w_dch.WREADY   = wready_d; 
dma_fifo_exmem_swchdata #(.DWIDTH(32),.AWIDTH(5)) wchdata_fifo 
                              (.clks(clks),.push(wchdata_push),.pull(wchdata_pull),
                               .data_in(wchdata_datain) ,.data_out(wchdata_dataout),
                               .depth_left(wchdata_depthleft),.full(wchdata_full),
                               .empty(wchdata_empty),.memif(memif_swchdata));

// write data channel state machine
always @(posedge clks.clk or negedge clks.rst) begin
   if(!clks.rst) begin 
      w_dch_cur_state <= #0 RST_WDCH;
      burst_addr_d    <= #0 32'h0;
      burst_cnt_d     <= #0 0;
      wready_d        <= #0 0;
   end else begin 
      w_dch_cur_state <= #1 w_dch_nxt_state;
      burst_addr_d    <= #1 burst_addr_nxt;
      burst_cnt_d     <= #1 burst_cnt_nxt;
      wready_d        <= #1 wready_nxt;
            end  
end 

// nxt state calculation 
always @(*) begin
   wready_nxt      = 0;
   //wchaddr_pull    = w_dch.WVALID & w_dch.WREADY & (w_dch_cur_state == WAIT_FOR_WVALID); 
   wchaddr_pull    = w_dch.WVALID & w_dch.WREADY & !wchaddr_empty; 
   wr_en_reg       = w_dch.WVALID & w_dch.WREADY;
   wchrsp_push    = w_dch.WVALID & w_dch.WREADY; 
   wchrsp_datain  = {OKAY,w_dch.WID};
   w_dch_nxt_state = w_dch_cur_state;
   write_addr_reg  = wchaddr_dataout[31:0];
   //wchdata_datain  = w_dch.WDATA;     
   wchdata_datain  = w_dch.WDATA[31:0]; // fixed due to simulation warning
   burst_on        = wchaddr_dataout[35];
   burst_addr_nxt  = 0;
   burst_cnt_nxt   = 0;
   arlen_nxt       = arlen_d; 
 
   case(w_dch_cur_state)
      RST_WDCH:       begin 
                              if(clks.rst) begin 
                                 w_dch_nxt_state = WAIT_FOR_WVALID;
                                 end 
	              end
      WAIT_FOR_WVALID:begin 
                        if(w_dch.WVALID & !wchaddr_empty) begin 
                          wready_nxt      = 1; 
                          w_dch_nxt_state = burst_on ? BURST_STATE:WAIT_FOR_WVALID;
                          //w_dch_nxt_state = burst_on ? BURST_STATE:WAIT_FOR_WVALID;
                          arlen_nxt       = burst_on ? wchaddr_dataout[34:32]: arlen_d;
                          burst_cnt_nxt   = burst_on ? (burst_cnt_d+1):0;
                        end
                     end
      BURST_STATE: begin 
                     if(w_dch.WVALID) begin 
                      wready_nxt = 1; 
                      w_dch_nxt_state = (w_dch.WLAST) ? BURST_STATE:WAIT_FOR_WVALID;
                      write_addr_reg  =  burst_addr_d+8;
                      burst_cnt_nxt   =  w_dch.WLAST ? 0:(burst_cnt_d+1);
                      burst_addr_nxt  =  write_addr_reg + 8;
                      end 
                   end

   endcase
end 

// write resp channel state amchine 

reg [1:0] brsp;
assign w_rspch.BVALID = bvalid;
assign w_rspch.BRESP  = brsp;
assign w_rspch.BID    = bid;
//reg [1:0] brsp;

always @(posedge clks.clk or negedge clks.rst) begin
   if(!clks.rst) begin 
               w_rspch_cur_state <= #0 RST_WRSP;
   end else begin 
               w_rspch_cur_state <=  #1 w_rspch_nxt_state;
            end  
end 
// nxt state calculation 
always @(*) begin 
     w_rspch_nxt_state =  w_rspch_cur_state; 
     bvalid = 0;
     brsp   = wchrsp_dataout[5:4];
     bid    = wchrsp_dataout[3:0];
     wchrsp_pull = 0;

   case(w_rspch_cur_state)
    RST_WRSP: begin 
            if(clks.rst) begin 
             w_rspch_nxt_state = ASSERT_BVALID;
            end 
         end
    ASSERT_BVALID: begin 
                      if(!wchrsp_empty) begin 
                        bvalid = 1;
                        wchrsp_pull = w_rspch.BREADY ? 1:0 ;
                        //w_rspch_nxt_state = w_rspch.BREADY ? ASSERT_BVALID : WAIT_FOR_BREADY;
                      end 
                                  
                   end
   endcase
end 

endmodule 
