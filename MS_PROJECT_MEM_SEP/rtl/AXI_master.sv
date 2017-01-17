module AXI_master(AXI_clks.to_rtl clks,
                  AXI_rd_addr_ch.master_if raddr_ch,AXI_rd_data_ch.master_if rdata_ch,
                  //AXI_wr_addr_ch.master_if waddr_ch,AXI_wr_data_ch.master_if wdata_ch,
                  //AXI_wr_resp_ch.master_if wresp_ch,                  
                  output reg rd,input [63:0] haddr,input main_ptr_empty,
                  output pfifo_push0,pfifo_push1,pfifo_push2,
                  output [7:0]  pfifo_ctrl0,pfifo_ctrl1,pfifo_ctrl2,
                  output [15:0] pfifo_datain_ctrl_0,pfifo_datain_ctrl_1,pfifo_datain_ctrl_2,
                  output [63:0] pfifo_datain0,pfifo_datain1,pfifo_datain2,
                  output pfifo_empty_0,pfifo_empty_1,pfifo_empty_2,
                  output [15:0] pcfifo_dataout_0,pcfifo_dataout_1,pcfifo_dataout_2,
                  output [63:0] pfifo_dataout_0,pfifo_dataout_1,pfifo_dataout_2,
                  input        pfifo_pop_0,pfifo_pop_1,pfifo_pop_2,
                               pcfifo_pop_0,pcfifo_pop_1,pcfifo_pop_2,
                  MEMIF_PKTD.from_fifo memif_pdfifo0,memif_pdfifo1,memif_pdfifo2,    
                  MEMIF_PKTC.from_fifo memif_pcfifo0,memif_pcfifo1,memif_pcfifo2    
                               ); 

typedef enum reg [3:0] {RST_=4'h0,FREE=4'h1,HEAD=4'h2,LINK=4'h3} ch_state; 
typedef enum reg [3:0] {RST=4'h0,INIT=4'h1,RD=4'h2,RD_BURST=4'h3}state; 
typedef enum reg [2:0] {B_ONE=3'b000,B_TWO=3'b001,B_FOUR=3'b010,B_EIGHT=3'b011,B_ST=3'b100,B_TW=3'b101,B_OTE=3'b110,B_TFS=3'b111}bur_size; 
typedef enum reg [1:0] {FIXED = 2'b00,INCR=2'b01,WRAP=2'b10,RESV=2'b11} bur_type; 
typedef enum reg [1:0] {OKAY = 2'b00,EXOKAY=2'b01,SLVERR=2'b10,DECERR=2'b11} rsp_type; 

state cur_state,nxt_state;
ch_state cur_chstate_0,nxt_chstate_0;
ch_state cur_chstate_1,nxt_chstate_1;
ch_state cur_chstate_2,nxt_chstate_2;
bur_size bsize;
bur_type btype;
rsp_type rtype;
reg [3:0] arid;
reg [2:0] ch_req_arb;
reg [2:0] ch_gnt_d,ch_gnt_2d,ch_gnt_nxt;
reg arb_nxt,nxtaddr_to_axi_ready;

reg [7:0]  burst_cnt_nxt,burst_cnt_d;
reg [31:0] araddr_nxt,araddr_d,araddr;
reg [1:0]  arlen;
reg [3:0]  arid_d,arid_nxt;
reg [2:0]  arsize;
reg        arburst_nxt,arvalid_nxt,arready,awvalid,wvalid,rready,burst_done;
reg        arburst_d,arvalid_d;
reg        arburst,arvalid;

reg [31:0] haddr0_d,haddr1_d,haddr2_d;
reg [31:0] haddr0_nxt,haddr1_nxt,haddr2_nxt;
reg        link_empty_0,link_empty_1,link_empty_2;
reg [31:0] nxtaddr_to_axi_d;
ctrl_header ctrl_hdr0_nxt,ctrl_hdr1_nxt,ctrl_hdr2_nxt;
ctrl_header ctrl_hdr0_d,ctrl_hdr1_d,ctrl_hdr2_d;


wire        pcfifo_push_0,pcfifo_pop_0;
wire        pcfifo_push_1,pcfifo_pop_1;
wire        pcfifo_push_2,pcfifo_pop_2;
wire [15:0] pcfifo_datain_0;//pcfifo_dataout_0;
wire [15:0] pcfifo_datain_1;//pcfifo_dataout_1;
wire [15:0] pcfifo_datain_2;//pcfifo_dataout_2;
wire [6:0]  pcfifo_depthleft_0;
wire [6:0]  pcfifo_depthleft_1;
wire [6:0]  pcfifo_depthleft_2;
wire        pcfifo_full_0,pcfifo_empty_0;
wire        pcfifo_full_1,pcfifo_empty_1;
wire        pcfifo_full_2,pcfifo_empty_2;


assign raddr_ch.ARID     = arid_d;
assign raddr_ch.ARADDR   = araddr;
assign raddr_ch.ARLEN    = arlen;
assign raddr_ch.ARSIZE   = arsize;
assign raddr_ch.ARBURST  = arburst;
assign raddr_ch.ARVALID  = arvalid;
assign raddr_ch.ARREGION = 0;
assign raddr_ch.ARUSER   = 0;
assign raddr_ch.ARQOS    = 0;
assign raddr_ch.ARPROT   = 0;
assign raddr_ch.ARLOCK   = 0;
//assign arready = raddr_ch.ARREADY;

//assign waddr_ch.AWVALID = awvalid;
//assign wdata_ch.WVALID  = wvalid;

//assign rdata_ch.RID;
//assign rdata_ch.RDATA;
//assign rdata_ch.RRESP;
//assign rdata_ch.RLAST;
//assign rdata_ch.RUSER;
//assign rdata_ch.RVAILD;
assign rdata_ch.RREADY=rready;

//dma_fifo #(32,5) wchaddr_tomem_fifo (.clks(clks),.push(wchaddr_push),.pull(wchaddr_pull),.data_in(wchaddr_datain),.data_out(wchaddr_dataout),.depth_left(wchaddr_depthleft),.full(wchaddr_full),.empty(wchaddr_empty));
//dma_fifo #(64,5) wchdata_tomem_fifo (.clks(clks),.push(wchdata_push),.pull(wchdata_pull),.data_in(wchaddr_datain),.data_out(wchaddr_dataout),.depth_left(wchaddr_depthleft),.full(wchaddr_full),.empty(wchaddr_empty));

wire         rchaddr_push,rchaddr_pull;
wire [31:0]  rchaddr_datain,rchaddr_dataout;
wire [5:0]   rchaddr_depthleft;
wire         rchaddr_full,rchaddr_empty;
reg  [31:0]  hold_addr,nxtaddr_to_axi;

reg  link_pull_0,link_pull_1,link_pull_2;
// state machine to read burst of data from memory
always @(posedge clks.clk or negedge clks.rst) begin 

  if(!clks.rst) begin 
            cur_state   <= #0 RST;
            arvalid_d   <= #0 0;
            arburst_d   <= #0 0;
  end else begin 
            cur_state   <= #1 nxt_state;
            arvalid_d   <= #1 arvalid;
            arburst_d   <= #1 arburst;
           end
end 

// next state calculation for read state burst machine
always @(*) begin
  nxt_state   = cur_state; 
  araddr      = nxtaddr_to_axi;   
  arburst     = 0;   
  arvalid     = 0;   
  arlen       = 4'h2;   // 2 bursts 
  arsize      = 3'b011; // 8 bytes   
  //arb_nxt     = 0;
  arb_nxt     = (raddr_ch.ARREADY & raddr_ch.ARVALID ) | (ch_gnt_d==0);
  // do arbitration till you valid grant 
  // or for new data generation when old axi data gets accepted 
  rd          = raddr_ch.ARREADY & raddr_ch.ARVALID &(
                (cur_chstate_0 == FREE & arid_d==0) |
                (cur_chstate_1 == FREE & arid_d==1) |
                (cur_chstate_2 == FREE & arid_d==2) );
  link_pull_0 = raddr_ch.ARREADY & raddr_ch.ARVALID & (cur_chstate_0 == LINK) & (arid_d==0);
  link_pull_1 = raddr_ch.ARREADY & raddr_ch.ARVALID & (cur_chstate_1 == LINK) & (arid_d==1);
  link_pull_2 = raddr_ch.ARREADY & raddr_ch.ARVALID & (cur_chstate_2 == LINK) & (arid_d==2);

  case(cur_state) 
   RST: begin 
          if(clks.rst) begin
          nxt_state     = INIT;
          end
	end
   INIT:begin
          if(nxtaddr_to_axi_ready) begin 
              nxt_state         = RD;
              araddr            = nxtaddr_to_axi;   
              arvalid           = 1'h1;   
              arburst           = 1'h1;   
              //arb_nxt           = 0; // no arb till data accepted
          end else begin 
              nxt_state         = INIT;
              //arb_nxt           = 1;// keep arb till u get grant
	           end
	end
   RD:  begin
          if(raddr_ch.ARREADY) begin 
                
                          //arvalid           = arvalid_d;   
                          //arburst           = arburst_d;
                if(nxtaddr_to_axi_ready) begin 
                          nxt_state         = RD;
                          //arb_nxt           = 0; // no arb till data is accepted
                          arvalid           = 1;
                          arburst           = 1;
                end else begin 
                          nxt_state         = INIT;
                          arvalid           = 0;
                          //arb_nxt           = 1;// keep arb till u get grant
                         end 

          end else begin 
                          arvalid           = arvalid_d;  
                          arburst           = arburst_d; 
                          //arb_nxt           = 0; // no arb till data is accepted
                   end 
	end
  endcase 
end 

// Read data channel state machine
//
typedef enum reg [3:0] {RST_DCH=4'h0,WAIT_FOR_RVALID=4'h1,DONE=4'h2}dch_state; 
dch_state dch_cur_state,dch_nxt_state;
wire rd_error;
reg  overflow;
reg  wr_link_addr;
reg  wr_pkt_data ;
reg  link_push_0,link_push_1,link_push_2;
reg  link_wrap_0,link_wrap_1,link_wrap_2;
reg  link_full_0,link_full_1,link_full_2;
reg [31:0]  link_datain_0,link_datain_1,link_datain_2;
reg [31:0]  link_datain_0_d,link_datain_1_d,link_datain_2_d;
reg [31:0]  link_dataout_0,link_dataout_1,link_dataout_2;
reg pfifo_push_0,pfifo_push_1,pfifo_push_2;
reg pfifo_pull_0,pfifo_pull_1,pfifo_pull_2;
reg [63:0]  pfifo_datain_0,pfifo_datain_1,pfifo_datain_2;
reg [63:0]  pfifo_datain_0_d,pfifo_datain_1_d,pfifo_datain_2_d;
//reg [63:0]  pfifo_dataout_0,pfifo_dataout_1,pfifo_dataout_2;
reg [7:0]  pfifo_ctrl_0,pfifo_ctrl_1,pfifo_ctrl_2;
reg [7:0]  pfifo_frag_cnt_0_d,pfifo_frag_cnt_1_d,pfifo_frag_cnt_2_d;
reg [7:0]  pfifo_frag_cnt_0_nxt,pfifo_frag_cnt_1_nxt,pfifo_frag_cnt_2_nxt;
reg [15:0] pfifo_datain_ctrl0,pfifo_datain_ctrl1,pfifo_datain_ctrl2;
reg [15:0] pfifo_datain_ctrl0_d,pfifo_datain_ctrl1_d,pfifo_datain_ctrl2_d;

assign rd_error = ~((rdata_ch.RRESP == 2'b00) | (rdata_ch.RRESP == 2'b01));

always @(posedge clks.clk or negedge clks.rst) begin 
   if(!clks.rst) begin
    dch_cur_state    <= #0 RST_DCH; 
    burst_cnt_d      <= #0 0;
   end else begin 
    dch_cur_state    <= #1 dch_nxt_state; 
    burst_cnt_d      <= #1 burst_cnt_nxt;
   end
end 

always @(*) begin 
   rready        = 0;
   dch_nxt_state = dch_cur_state;
   burst_cnt_nxt = burst_cnt_d;
   wr_link_addr  = 0;
   wr_pkt_data   = 0;
   
   case(dch_cur_state)
    RST_DCH:begin 
             if(clks.rst) begin
                dch_nxt_state = WAIT_FOR_RVALID;
                rready        = 1'b0; 
             end else dch_nxt_state = RST_DCH;
        end
    WAIT_FOR_RVALID: begin 
                     //rready = 1'b1;
                     if(rdata_ch.RVALID & !rdata_ch.RLAST & !rd_error) begin 
                       // push into fifo data pkt
                        //burst_cnt_nxt = burst_cnt_d + 1;
                        //wr_pkt_data   = 1;
                        rready = ~overflow;
                        burst_cnt_nxt = rready ? (burst_cnt_d + 1):burst_cnt_d;
                        wr_pkt_data   = rready;
                     end else if(rdata_ch.RVALID & rdata_ch.RLAST & !rd_error) begin 
                               // push into LINK addr ready fifo 
                        burst_cnt_nxt = burst_cnt_d + 1;
                        wr_link_addr = 1;
                        rready = 1;
                               end
                     dch_nxt_state = WAIT_FOR_RVALID;
	           end
    
   endcase

end
wire pfifo_full_0,pfifo_full_1,pfifo_full_2;
always @(*) begin
   overflow  = 0;
 if(rdata_ch.RVALID) begin
  case(rdata_ch.RID)
   3'h0:begin
          overflow = pfifo_full_0;  
	 end
   3'h1:begin
          overflow = pfifo_full_1;  
	 end
   3'h2:begin
          overflow = pfifo_full_2;  
	  end
   default: begin
              overflow = 0;
            end
  endcase
 end
end

always @(posedge clks.clk or negedge clks.rst) begin 
   if(!clks.rst) begin 
     pfifo_datain_0_d <= #0 0; 
     pfifo_datain_1_d <= #0 0;
     pfifo_datain_2_d <= #0 0;
     link_datain_0_d  <= #0 0;
     link_datain_1_d  <= #0 0;
     link_datain_2_d  <= #0 0;
     pfifo_frag_cnt_0_d <= #0 0;
     pfifo_frag_cnt_1_d <= #0 0;
     pfifo_frag_cnt_2_d <= #0 0;
     pfifo_datain_ctrl0_d <= #0 0;
     pfifo_datain_ctrl1_d <= #0 0;
     pfifo_datain_ctrl2_d <= #0 0;
   end else begin 
     pfifo_datain_0_d <= #1 pfifo_datain_0; 
     pfifo_datain_1_d <= #1 pfifo_datain_1;
     pfifo_datain_2_d <= #1 pfifo_datain_2;
     link_datain_0_d  <= #1  link_datain_0;
     link_datain_1_d  <= #1  link_datain_1;
     link_datain_2_d  <= #1  link_datain_2;
     pfifo_frag_cnt_0_d <= #1 pfifo_frag_cnt_0_nxt;
     pfifo_frag_cnt_1_d <= #1 pfifo_frag_cnt_1_nxt;
     pfifo_frag_cnt_2_d <= #1 pfifo_frag_cnt_2_nxt;
     pfifo_datain_ctrl0_d <= #1 pfifo_datain_ctrl0;
     pfifo_datain_ctrl1_d <= #1 pfifo_datain_ctrl1;
     pfifo_datain_ctrl2_d <= #1 pfifo_datain_ctrl2;
            end
end 

always @(*) begin 
  
  link_push_0 = 0;
  link_push_1 = 0;
  link_push_2 = 0;
  
  pfifo_push_0 = 0;
  pfifo_push_1 = 0;
  pfifo_push_2 = 0;

  link_wrap_0 = 0;
  link_wrap_1 = 0;
  link_wrap_2 = 0;


  pfifo_datain_0 =  pfifo_datain_0_d; 
  pfifo_datain_1 =  pfifo_datain_1_d;
  pfifo_datain_2 =  pfifo_datain_2_d;

  link_datain_0  =  link_datain_0_d;
  link_datain_1  =  link_datain_1_d;
  link_datain_2  =  link_datain_2_d;

  pfifo_frag_cnt_0_nxt =  pfifo_frag_cnt_0_d;
  pfifo_frag_cnt_1_nxt =  pfifo_frag_cnt_1_d;
  pfifo_frag_cnt_2_nxt =  pfifo_frag_cnt_2_d;

  pfifo_datain_ctrl0 = pfifo_datain_ctrl0_d;
  pfifo_datain_ctrl1 = pfifo_datain_ctrl1_d;
  pfifo_datain_ctrl2 = pfifo_datain_ctrl2_d;

  if(wr_link_addr) begin 
    case(rdata_ch.RID)
    0: begin  
        link_datain_0   = rdata_ch.RDATA;
        link_push_0     = (link_datain_0 == haddr0_d) ? 1'b0:1'b1;
        link_wrap_0     = (link_datain_0 == haddr0_d);
        pfifo_frag_cnt_0_nxt =  link_wrap_0 ? 0 :pfifo_frag_cnt_0_d;

       end
    1: begin 
        link_datain_1   = rdata_ch.RDATA;
        //link_push_1     = 1;
        link_push_1     = (link_datain_1 == haddr1_d) ? 1'b0:1'b1;
        link_wrap_1     = (link_datain_1 == haddr1_d);
        pfifo_frag_cnt_1_nxt =  link_wrap_1 ? 0 :pfifo_frag_cnt_1_d ;

       end
    2: begin 
        link_datain_2   = rdata_ch.RDATA;
        //link_push_2     = 1;
        link_push_2     = (link_datain_2 == haddr2_d) ? 1'b0:1'b1;
        link_wrap_2     = (link_datain_2 == haddr2_d);
        pfifo_frag_cnt_2_nxt =  link_wrap_2 ? 0 :pfifo_frag_cnt_2_d;

       end
    endcase 
  end

  if(wr_pkt_data) begin 
    case(rdata_ch.RID)
    0: begin  
        pfifo_datain_0   = rdata_ch.RDATA;
        pfifo_push_0     = 1;
        pfifo_frag_cnt_0_nxt =  pfifo_frag_cnt_0_d + 1;
        pfifo_datain_ctrl0   =  {pfifo_frag_cnt_0_d,ctrl_hdr0_d.last_bvalid};
       end
    1: begin 
        pfifo_datain_1   = rdata_ch.RDATA;
        pfifo_push_1     = 1;
        pfifo_frag_cnt_1_nxt =  pfifo_frag_cnt_1_d + 1;
        pfifo_datain_ctrl1   =  {pfifo_frag_cnt_1_d,ctrl_hdr1_d.last_bvalid};
       end
    2: begin 
        pfifo_datain_2   = rdata_ch.RDATA;
        pfifo_push_2     = 1;
        pfifo_frag_cnt_2_nxt =  pfifo_frag_cnt_2_d + 1;
        pfifo_datain_ctrl2   =  {pfifo_frag_cnt_2_d,ctrl_hdr2_d.last_bvalid};
       end
    endcase 
  end

  // start of packet fragment 8'h09
  // end   of packet fragment 8'h0d
  // end   of packet fragment 8'h0b
  case(pfifo_frag_cnt_0_nxt)
   32'h0:begin
          pfifo_ctrl_0 = 8'h0d;
         end
   32'h1:begin
          pfifo_ctrl_0 = 8'h09;
         end
   default:
          pfifo_ctrl_0 = 8'h0b;
  endcase

  case(pfifo_frag_cnt_1_nxt)
   32'h0:begin
          pfifo_ctrl_1 = 8'h0d;
         end
   32'h1:begin
          pfifo_ctrl_1 = 8'h09;
         end
   default:
          pfifo_ctrl_1 = 8'h0b;
  endcase

  case(pfifo_frag_cnt_2_nxt)
   32'h0:begin
          pfifo_ctrl_2 = 8'h0d;
         end
   32'h1:begin
          pfifo_ctrl_2 = 8'h09;
         end
   default:
          pfifo_ctrl_2 = 8'h0b;
  endcase

end

// channel state machines for three channel states
// ch0,ch1,ch2

always @(posedge clks.clk or negedge clks.rst) begin 
  if(!clks.rst) begin 
    //ch_gnt_d  <= #0 3'b001;
    ch_gnt_2d <= #0 0;
    arid_d    <= #0 0;
  end else begin 
            //ch_gnt_d <= #1 ch_gnt_nxt;
            arid_d   <= #1 arid_nxt;
            ch_gnt_2d<= #1 ch_gnt_d;
           end
end

always @(*) begin

 ch_gnt_nxt = ch_gnt_d;
 arid_nxt   = arid_d;   

  if(arb_nxt) begin 
    case(ch_gnt_d)
      3'b000: begin 
              case(ch_gnt_2d)
               3'b000:begin
                       casez(ch_req_arb)
                         3'b??1:begin ch_gnt_nxt = 3'b001;arid_nxt = 0; end
                         3'b?10:begin ch_gnt_nxt = 3'b010;arid_nxt = 1; end
                         3'b100:begin ch_gnt_nxt = 3'b100;arid_nxt = 2; end
                         default: begin ch_gnt_nxt = 3'b000;  end // no grant 
                       endcase
                      end 
               3'b001:begin
                         casez(ch_req_arb)
                           3'b?1?:begin ch_gnt_nxt = 3'b010;arid_nxt = 1; end
                           3'b10?:begin ch_gnt_nxt = 3'b100;arid_nxt = 2; end
                           3'b001:begin ch_gnt_nxt = 3'b001;arid_nxt = 0; end
                           default: begin ch_gnt_nxt = 3'b000;  end // no grant
                         endcase
                      end
               3'b010:begin
                       casez(ch_req_arb)
                         3'b1??:begin ch_gnt_nxt = 3'b100;arid_nxt = 2; end
                         3'b0?1:begin ch_gnt_nxt = 3'b001;arid_nxt = 0; end
                         3'b010:begin ch_gnt_nxt = 3'b010;arid_nxt = 1; end
                         default: begin ch_gnt_nxt = 3'b000;  end // no grant
                       endcase
                      end
               3'b100:begin
                       casez(ch_req_arb)
                         3'b??1:begin ch_gnt_nxt = 3'b001;arid_nxt = 0; end
                         3'b?10:begin ch_gnt_nxt = 3'b010;arid_nxt = 1; end
                         3'b100:begin ch_gnt_nxt = 3'b100;arid_nxt = 2; end
                         default: begin ch_gnt_nxt = 3'b000;  end // no grant
                       endcase
                      end

              endcase
              end 
      3'b001: begin 
                casez(ch_req_arb)
                  3'b?1?:begin ch_gnt_nxt = 3'b010;arid_nxt = 1; end
                  3'b10?:begin ch_gnt_nxt = 3'b100;arid_nxt = 2; end
                  //3'b001:begin ch_gnt_nxt = 3'b001;arid_nxt = 0; end
                  default: begin ch_gnt_nxt = 3'b000;  end // no grant
                endcase
              end 
      3'b010: begin 
                casez(ch_req_arb)
                  3'b1??:begin ch_gnt_nxt = 3'b100;arid_nxt = 2; end
                  3'b0?1:begin ch_gnt_nxt = 3'b001;arid_nxt = 0; end
                  //3'b010:begin ch_gnt_nxt = 3'b010;arid_nxt = 1; end
                  default: begin ch_gnt_nxt = 3'b000;  end // no grant
                endcase
              end 
      3'b100: begin 
                casez(ch_req_arb)
                  3'b??1:begin ch_gnt_nxt = 3'b001;arid_nxt = 0; end
                  3'b?10:begin ch_gnt_nxt = 3'b010;arid_nxt = 1; end
                  //3'b100:begin ch_gnt_nxt = 3'b100;arid_nxt = 2; end
                  default: begin ch_gnt_nxt = 3'b000;  end // no grant
                endcase
              end 
    endcase 
  end
end
always @(posedge clks.clk or negedge clks.rst) begin 
  if(!clks.rst) begin
    haddr0_d         <= #0 0;
    haddr1_d         <= #0 0;
    haddr2_d         <= #0 0;
    nxtaddr_to_axi_d <= #0 0;
    ctrl_hdr0_d      <= #0 0;
    ctrl_hdr1_d      <= #0 0;
    ctrl_hdr2_d      <= #0 0;
  end else begin 
             haddr0_d         <= #1 haddr0_nxt;
             haddr1_d         <= #1 haddr1_nxt;
             haddr2_d         <= #1 haddr2_nxt;
             nxtaddr_to_axi_d <= #1 nxtaddr_to_axi;
             ctrl_hdr0_d      <= #1 ctrl_hdr0_nxt;
             ctrl_hdr1_d      <= #1 ctrl_hdr1_nxt;
             ctrl_hdr2_d      <= #1 ctrl_hdr2_nxt;
           end
end
/// nxt addr calculation based on selected channel
always@(*) begin
   nxtaddr_to_axi       = nxtaddr_to_axi_d; 
   nxtaddr_to_axi_ready = !(ch_gnt_d == 0); 
                      //     ((~main_ptr_empty & (cur_chstate_0 == FREE |
                      //                         cur_chstate_1 == FREE |
                      //                         cur_chstate_2 == FREE  ))| 
                      //     ~link_empty_0   | 
                      //     ~link_empty_1   | 
                      //     ~link_empty_2);
   haddr0_nxt           = haddr0_d;
   haddr1_nxt           = haddr1_d;
   haddr2_nxt           = haddr2_d;

             ctrl_hdr0_nxt  = ctrl_hdr0_d; // fixed for syn latch formation 
             ctrl_hdr1_nxt  = ctrl_hdr1_d; // fixed for syn latch formation 
             ctrl_hdr2_nxt  = ctrl_hdr2_d; // fixed for syn latch formation 

   case(ch_gnt_d)
     3'b001:begin
             nxtaddr_to_axi = link_empty_0 ? haddr[63:32] : link_dataout_0 ;
             haddr0_nxt     = link_empty_0 ? haddr[63:32] : haddr0_d;
             ctrl_hdr0_nxt  = link_empty_0 ? haddr[31:0]  : ctrl_hdr0_d;
            end
     3'b010:begin 
             nxtaddr_to_axi = link_empty_1 ? haddr[63:32] : link_dataout_1 ;
             haddr1_nxt     = link_empty_1 ? haddr[63:32] : haddr1_d;
             ctrl_hdr1_nxt  = link_empty_1 ? haddr[31:0]  : ctrl_hdr1_d;
	    end
     3'b100:begin 
             nxtaddr_to_axi = link_empty_2 ? haddr[63:32] : link_dataout_2 ;
             haddr2_nxt     = link_empty_2 ? haddr[63:32] : haddr2_d;
             ctrl_hdr2_nxt  = link_empty_2 ? haddr[31:0]  : ctrl_hdr2_d;
	    end
     default: begin 
                nxtaddr_to_axi = haddr[63:32]; 
                //nxtaddr_to_axi = nxtaddr_to_axi_d; 
	      end
   endcase
end
/////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////
always @(posedge clks.clk or negedge clks.rst) begin
  if(!clks.rst) begin 
    cur_chstate_0 <= #0 RST_;
    cur_chstate_1 <= #0 RST_;
    cur_chstate_2 <= #0 RST_;
    ch_gnt_d      <= #0 0;
  end else begin 
    cur_chstate_0 <= #1 nxt_chstate_0;
    cur_chstate_1 <= #1 nxt_chstate_1;
    cur_chstate_2 <= #1 nxt_chstate_2;
    ch_gnt_d      <= #1 ch_gnt_nxt;
           end 
end 

always @(*) begin 
  nxt_chstate_0 = cur_chstate_0;
  nxt_chstate_1 = cur_chstate_1;
  nxt_chstate_2 = cur_chstate_2;
  ch_req_arb    = 3'b000;
   
  case(cur_chstate_0)
   RST_: begin 
           if(clks.rst) begin 
               nxt_chstate_0 = FREE; 
           end
        end
   FREE: begin 
          //ch_req_arb[0] = 1'b1;
          ch_req_arb[0] = ~main_ptr_empty;
          nxt_chstate_0 = (raddr_ch.ARREADY & raddr_ch.ARVALID  & (arid_d == 0)) ? HEAD:FREE;
         end
   HEAD: begin 
            nxt_chstate_0 = (link_empty_0) ? HEAD : LINK; 
            ch_req_arb[0] = ~link_empty_0;
         end
   LINK: begin 
            //ch_req_arb[0] = (link_empty_0)& (link_dataout_0 ==haddr0_d) ? 1'b0 : 1'b1;
            ch_req_arb[0] = ~link_empty_0;
            //nxt_chstate_0 = link_push_0 ? ((link_datain_0 == haddr0_d) ? FREE : LINK):LINK;
            nxt_chstate_0 = link_wrap_0 ? FREE : LINK;
         end
  endcase
 
  case(cur_chstate_1)
   RST_: begin 
           if(clks.rst) begin 
               nxt_chstate_1 = FREE; 
           end
        end
   FREE: begin 
          ch_req_arb[1] = ~main_ptr_empty;
          nxt_chstate_1 = (raddr_ch.ARREADY & raddr_ch.ARVALID  & (arid_d == 1)) ? HEAD:FREE;
         end
   HEAD: begin 
            nxt_chstate_1 = (link_empty_1) ? HEAD : LINK; 
            ch_req_arb[1] = ~link_empty_1;
         end
   LINK: begin 
            ch_req_arb[1] = ~link_empty_1;
            //nxt_chstate_1 = (link_dataout_1 == haddr1_d) ? FREE : LINK;
            //nxt_chstate_1 = link_push_1 ? ((link_datain_1 == haddr1_d) ? FREE : LINK):LINK;
            nxt_chstate_1 = link_wrap_1 ? FREE : LINK;
         end
  endcase

  case(cur_chstate_2)
   RST_: begin 
           if(clks.rst) begin 
               nxt_chstate_2 = FREE; 
           end
        end
   FREE: begin 
          ch_req_arb[2] = ~main_ptr_empty;
          nxt_chstate_2 = (raddr_ch.ARREADY & raddr_ch.ARVALID  & (arid_d == 2)) ? HEAD:FREE;
         end
   HEAD: begin 
            nxt_chstate_2 = (link_empty_2) ? HEAD : LINK; 
            ch_req_arb[2] = ~link_empty_2;
         end
   LINK: begin 
            ch_req_arb[2] = ~link_empty_2;
            //nxt_chstate_2 = (link_dataout_2 == haddr2_d) ? FREE : LINK;
            nxt_chstate_2 = link_push_2 ? ((link_datain_2 == haddr2_d) ? FREE : LINK):LINK;
            nxt_chstate_2 = link_wrap_2 ? FREE : LINK;
         end
  endcase


end 
/////////////////////////////////////////////
wire [1:0]  link_depthleft_0;
wire [1:0]  link_depthleft_1;
wire [1:0]  link_depthleft_2;
wire [6:0]  pfifo_depthleft_0;
wire [6:0]  pfifo_depthleft_1;
wire [6:0]  pfifo_depthleft_2;
/////////////////////////////////////////////
dma_fifo #(32,1) link_addr_0_fifo (.clks(clks),.push(link_push_0),.pull(link_pull_0),.data_in(link_datain_0),.data_out(link_dataout_0),.depth_left(link_depthleft_0),.full(link_full_0),.empty(link_empty_0));
dma_fifo #(32,1) link_addr_1_fifo (.clks(clks),.push(link_push_1),.pull(link_pull_1),.data_in(link_datain_1),.data_out(link_dataout_1),.depth_left(link_depthleft_1),.full(link_full_1),.empty(link_empty_1));
dma_fifo #(32,1) link_addr_2_fifo (.clks(clks),.push(link_push_2),.pull(link_pull_2),.data_in(link_datain_2),.data_out(link_dataout_2),.depth_left(link_depthleft_2),.full(link_full_2),.empty(link_empty_2));

/////////////////////////////////////////////
//assign pfifo_pop_0 = 0;
//assign pfifo_pop_1 = 0;
//assign pfifo_pop_2 = 0;
/////////////////////////////////////////////
dma_fifo_exmem_pktd #(64,6) pkt0_fifo (.clks(clks),.push(pfifo_push_0),.pull(pfifo_pop_0),.data_in(pfifo_datain_0),.data_out(pfifo_dataout_0),.depth_left(pfifo_depthleft_0),.full(pfifo_full_0),.empty(pfifo_empty_0),.memif(memif_pdfifo0));
dma_fifo_exmem_pktd #(64,6) pkt1_fifo (.clks(clks),.push(pfifo_push_1),.pull(pfifo_pop_1),.data_in(pfifo_datain_1),.data_out(pfifo_dataout_1),.depth_left(pfifo_depthleft_1),.full(pfifo_full_1),.empty(pfifo_empty_1),.memif(memif_pdfifo1));
dma_fifo_exmem_pktd #(64,6) pkt2_fifo (.clks(clks),.push(pfifo_push_2),.pull(pfifo_pop_2),.data_in(pfifo_datain_2),.data_out(pfifo_dataout_2),.depth_left(pfifo_depthleft_2),.full(pfifo_full_2),.empty(pfifo_empty_2),.memif(memif_pdfifo2));
//6
assign pfifo_push0         = pcfifo_push_0;         // data vld to crc module 
assign pfifo_push1         = pcfifo_push_1;         //
assign pfifo_push2         = pcfifo_push_2;         //
assign pfifo_datain_ctrl_0 = pcfifo_datain_0[15:8]; // data ctrl info to crc module for crc calculation
assign pfifo_datain_ctrl_1 = pcfifo_datain_1[15:8]; // 
assign pfifo_datain_ctrl_2 = pcfifo_datain_2[15:8]; //
assign pfifo_datain0       = pfifo_datain_0_d;      // data to crc module for crc calculation
assign pfifo_datain1       = pfifo_datain_1_d;      //
assign pfifo_datain2       = pfifo_datain_2_d;      //
assign pfifo_ctrl0         = pcfifo_datain_0[7:0];  // ctrl word info to crc mofule for crc calculation
assign pfifo_ctrl1         = pcfifo_datain_1[7:0];  //  
assign pfifo_ctrl2         = pcfifo_datain_2[7:0];  // 

dma_fifo_exmem_pktc #(16,6) pktctrl0_fifo (
.clks       (clks),
.push       (pcfifo_push_0),
.pull       (pcfifo_pop_0),
.data_in    (pcfifo_datain_0),
.data_out   (pcfifo_dataout_0),
.depth_left (pcfifo_depthleft_0),
.full       (pcfifo_full_0),
.empty      (pcfifo_empty_0),
.memif      (memif_pcfifo0)
);
dma_fifo_exmem_pktc #(16,6) pktctrl1_fifo (
.clks       (clks),
.push       (pcfifo_push_1),
.pull       (pcfifo_pop_1),
.data_in    (pcfifo_datain_1),
.data_out   (pcfifo_dataout_1),
.depth_left (pcfifo_depthleft_1),
.full       (pcfifo_full_1),
.empty      (pcfifo_empty_1),
.memif      (memif_pcfifo1)
);
dma_fifo_exmem_pktc #(16,6) pktctrl2_fifo (
.clks       (clks),
.push       (pcfifo_push_2),
.pull       (pcfifo_pop_2),
.data_in    (pcfifo_datain_2),
.data_out   (pcfifo_dataout_2),
.depth_left (pcfifo_depthleft_2),
.full       (pcfifo_full_2),
.empty      (pcfifo_empty_2),
.memif      (memif_pcfifo2)
);

assign pcfifo_datain_0 = {pfifo_datain_ctrl0[7:0],pfifo_ctrl_0};
assign pcfifo_datain_1 = {pfifo_datain_ctrl1[7:0],pfifo_ctrl_1};
assign pcfifo_datain_2 = {pfifo_datain_ctrl2[7:0],pfifo_ctrl_2};
assign pcfifo_push_0   = link_push_0 | link_wrap_0;
assign pcfifo_push_1   = link_push_1 | link_wrap_1;
assign pcfifo_push_2   = link_push_2 | link_wrap_2;
//assign pcfifo_pop_0    = 0;
//assign pcfifo_pop_1    = 0;
//assign pcfifo_pop_2    = 0;


/*initial begin 
      integer f,w;
      reg [2:0] idx;

     forever begin 
      @(posedge clks.clk);
      if(clks.rst) begin 
      idx = {pfifo_push_0,pfifo_push_1,pfifo_push_2};
      if(idx) begin 
      f = $fopen("pfifo_data.txt","a");
      case(idx) 
        3'b100: $fwrite(f,"pfifo_data[%h]=%0h\n",0,pfifo_datain_0);
        3'b010: $fwrite(f,"pfifo_data[%h]=%0h\n",1,pfifo_datain_1);
        3'b001: $fwrite(f,"pfifo_data[%h]=%0h\n",2,pfifo_datain_2);
      endcase
      $fclose(f);
      end
     end
     end
end
*/
endmodule 

