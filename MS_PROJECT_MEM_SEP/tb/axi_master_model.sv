//import ethernet_frame_pkg::*;
module axi_master_model(
 AXI_wr_addr_ch.master_if wr_ach,
 AXI_wr_data_ch.master_if wr_dch,
 AXI_wr_resp_ch.master_if wr_rspch,
 AXI_clks.to_rtl clks
);

logic [32:0] axi_waddr[$];
logic [63:0] axi_wdata[$];
logic [4:0]  axi_rsp_cnt_d,axi_rsp_cnt_nxt,axi_rsp_cnt_tmp;

reg   waddr_empty;
reg   wdata_empty;
integer wdata_depth;
// axi addr drive channel
typedef enum logic [2:0] {RST_WA=3'h0,WAD=3'h1,WA=3'h2,WA_HOLD=3'h3} axi_wr_state;
typedef enum logic [2:0] {RST_WRSP=3'h0,WVRSP=3'h1} axi_wrsp_state;
axi_wr_state wra_cur_state,wra_nxt_state;
axi_wr_state wrd_cur_state,wrd_nxt_state;
axi_wrsp_state wrsp_cur_state,wrsp_nxt_state;

reg awvalid_d,awvalid_nxt;
reg awburst_d,awburst_nxt;
reg bready_d,bready_nxt;
reg [3:0] awlen_d,awlen_nxt;
reg [2:0] awsize_d,awsize_nxt;
reg wvalid_d,wvalid_nxt;
reg [31:0] awaddr_d,awaddr_nxt;
reg [63:0] wdata_d,wdata_nxt;
reg [3:0]  awid_d,wid_d;
reg pop;
assign    wr_ach.AWVALID  = awvalid_d;  
assign    wr_ach.AWADDR   = awaddr_d;  
assign    wr_ach.AWBURST  = awburst_d;  
assign    wr_ach.AWLEN    = awlen_d;  
assign    wr_ach.AWSIZE   = awsize_d;  
assign    wr_ach.AWID     = awid_d;  
assign    wr_dch.WDATA   = wdata_d;  
assign    wr_dch.WLAST   = 0;  
assign    wr_dch.WID     = wid_d;  
assign    wr_dch.WVALID  = wvalid_d & ~wdata_empty;  
assign    wr_rspch.BREADY = bready_d;

//always @(*) begin
//    if(pop) 
//    wdata_depth     =  axi_wdata.size();
//end 

always @(posedge clks.clk or negedge clks.rst) begin 
  if(!clks.rst) begin 
             wra_cur_state <= #0 RST_WA;
             wrd_cur_state <= #0 RST_WA;
             awvalid_d       <= #0 0;
             wvalid_d       <= #0 0;
             awaddr_d        <= #0 0;
             wdata_d        <= #0 0;
             awid_d          <= #0 0;
             wid_d           <= #0 0;
             waddr_empty     <= #0 1;
             wdata_empty     <= #0 1;
             awburst_d       <= #0 0;
             awlen_d         <= #0 0;
             awsize_d        <= #0 3'b011;
             axi_rsp_cnt_d   <= #0 0;
             bready_d        <= #0 0;
             wrsp_cur_state  <= #0 RST_WRSP;
  end else begin 
             wra_cur_state <= #1 wra_nxt_state;
             wrd_cur_state <= #1 wrd_nxt_state;
             awvalid_d     <= #1 awvalid_nxt;
             wvalid_d      <= #1 wvalid_nxt;
             awaddr_d      <= #1 awaddr_nxt;
             //wdata_d      <= #1 wdata_nxt;  
             awid_d        <= #1 3;
             wid_d         <= #1 3;
             waddr_empty   <= #1 (axi_waddr.size()==0); 
             wdata_empty   <= #1 (axi_wdata.size()==0); 
             awburst_d     <= #1 awburst_nxt;
             awlen_d       <= #1 awlen_nxt;
             awsize_d      <= #1 awsize_nxt;
             wdata_d       <= #1 pop ?axi_wdata.pop_front() :wdata_d; 
             axi_rsp_cnt_d <= #1 axi_rsp_cnt_nxt;
             bready_d      <= #1 bready_nxt;
             wrsp_cur_state <= #1 wrsp_nxt_state;
           end
end  

always @(*) begin 
   wra_nxt_state = wra_cur_state;
   awvalid_nxt   = awvalid_d;
   awaddr_nxt    = awaddr_d;
   awsize_nxt    = awsize_d;
   awburst_nxt   = 0;
   awlen_nxt     = 0;
   case(wra_cur_state)
    RST_WA: begin
            
             awvalid_nxt   = 0;
           if(!clks.rst) wra_nxt_state = RST_WA; 
           else          wra_nxt_state = WAD; 
	 end
    WAD: begin 
           if(waddr_empty) begin 
               wra_nxt_state  = WAD;
               awvalid_nxt   = 0;
            end else begin 
               awvalid_nxt   = 1;
               awaddr_nxt    = axi_waddr.pop_front();
               wra_nxt_state = WA;
                     end
         end
    WA:  begin
            if(wr_ach.AWREADY) begin 
                if(!waddr_empty) begin
                  wra_nxt_state = WA;
                  awaddr_nxt    = axi_waddr.pop_front();
                  awvalid_nxt   = 1; 
                end else begin 
                           awvalid_nxt   = 0;
                           wra_nxt_state = WAD; 
                         end
            end  
           end
   endcase
end

// axi data drive channel

always @(*) begin 
   wrd_nxt_state = wrd_cur_state;
   wvalid_nxt    = wvalid_d;
   pop           = 0;
   wdata_depth     =  axi_wdata.size();
   case(wrd_cur_state)
    RST_WA: begin
            
             wvalid_nxt   = 0;
           if(!clks.rst) wrd_nxt_state = RST_WA; 
           else          wrd_nxt_state = WAD; 
	 end
    WAD: begin 
           if(wdata_empty) begin 
               wrd_nxt_state  = WAD;
               wvalid_nxt   = 0;
            end else begin 
               wvalid_nxt   = 1;
               //wdata_nxt    = axi_wdata.pop_front();
               pop = 1;
               wrd_nxt_state = WA;
               wdata_depth     =  axi_wdata.size();
                     end
         end
    WA:  begin
            if(wr_dch.WREADY) begin 
                if(!wdata_empty) begin
                  wrd_nxt_state = WA;
                  pop = 1;
                  //wdata_nxt     = axi_wdata.pop_front();
                  //$display ("%t data poped data:%h",$realtime,wdata_nxt);
                  wvalid_nxt    = 1; 
                  wdata_depth     =  axi_wdata.size();
                end else begin 
                           wvalid_nxt    = 0;
                           wrd_nxt_state = WAD; 
                         end
            end  
           end
   endcase
end

/// axi write rsp channel drive 
always @(*) begin 
  axi_rsp_cnt_tmp = (wr_dch.WVALID & wr_dch.WREADY) ? (axi_rsp_cnt_d + 1):axi_rsp_cnt_d;
  axi_rsp_cnt_nxt = (wr_rspch.BVALID & wr_rspch.BREADY) ? (axi_rsp_cnt_tmp-1):axi_rsp_cnt_tmp; 
  wrsp_nxt_state = wrsp_cur_state;
  bready_nxt     = 0;

  case(wrsp_cur_state)
   RST_WRSP: begin 
               if(!clks.rst) begin 
                          wrsp_nxt_state = RST_WRSP;
               end else begin 
                          wrsp_nxt_state = WVRSP;
                        end
	     end
   WVRSP:    begin
                if(wr_rspch.BVALID) begin 
                     bready_nxt = 1;
                end else begin 
                           bready_nxt = 0;
                         end 
                 wrsp_nxt_state = WVRSP;
	     end  
  endcase
   
end
/// print error 
always @(posedge clks.clk or negedge clks.rst) begin 
  if(clks.rst) begin
    if(axi_rsp_cnt_d[4] == 1) begin 
                              //$error("%t RUN ABORTED:stale rsp received !!!!!!!!!",$time);
                              $display("%t RUN ABORTED:stale rsp received !!!!!!!!!",$time);
                              $finish;
                            end    
  end  

end

endmodule 
