module rs_layer(
AXI_clks.to_rtl clks,
tx_xgmii.from_rtl xgmii_tx,
input  start_transmit,
input  lpi,
output pop_pkt,
output pop_crc,
input [63:0]  pkt_data,
input         pkt_empty,
input [7:0]   pkt_ctrl,
input [31:0]  pkt_crc,
output reg    nxt_buf,
input [7:0]   bvalidin
);

reg clk125mhz,div2_d,div2_nxt;
reg [31:0] xgmii_txd,crc_tx_d,crc_tx_nxt,crc_left_d,crc_left_nxt,xgmii_txd_d;
reg [3:0]  xgmii_txc,xgmii_txc_d;
reg [7:0]  pkt_ctrl_d,pkt_ctrl_nxt;
reg [63:0] xgmii_tx_hold,xgmii_tx_hold_nxt;
reg [31:0] crc_data_d,crc_data_nxt;
reg [1:0]  crc_bvalid_d,crc_bvalid_nxt;
reg [3:0]  idlecnt_d,idlecnt_nxt,minIPG_d,minIPG_nxt;
reg [6:0]  cnt128_d,cnt128_nxt;
reg [31:0] wakeuptimer_d,wakeuptimer_nxt;
reg        wakeuptimerdone,carry,carry_d;
reg [1:0]  laneidle,laneidle_d;
reg        gclk_en,gclk_en_d,poppkt,popcrc;


//____________varibles use in this module________________________________________//
reg cnt2_d,cnt2_nxt,clk_lowpwr;
reg [4:0] IPG_cnt_d,IPG_cnt_nxt;
reg [1:0] IDC_cnt_d,IDC_cnt_nxt;
reg [1:0] idlernd_cnt_d,idlernd_cnt_nxt;
reg [7:0] bvalid,bvalid_nxt;
reg       not_last;
wire      ISR;

typedef enum reg [3:0] {
RST         = 4'h8,
WAIT_TX_SIG = 4'h0,
SFD         = 4'h1,
PRE         = 4'h3,
DATA_TRANS  = 4'h7,
CRC_TRANS   = 4'hf,
EFD         = 4'he,
IFG         = 4'hc,
LPI         = 4'h4 } tx_states;
typedef enum reg [1:0] { RST_=2'h0,WAIT_LPI=2'h1,GCLK=2'h3,WAKEUPTIME=2'h2} lpstate;
lpstate cur_state_clk,nxt_state_clk;

tx_states cur_state,nxt_state;
//_______________________________________________________________________________//

//+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+
//              _______________________________________________
//              |       32bit         |      64bit            |
//              |_____________________|_______________________|
//+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+
//
///////// some paramters for control opcodes/////////////////////
parameter PREAMBLE_D    = 8'haa;
parameter LPI_D         = 8'h06;
parameter IDLE_D	= 8'h07;
parameter START_D	= 8'hfb;
parameter SFD_D	        = 8'hab;
parameter TERMINATE_D	= 8'hfd;
parameter TX_ERR_D	= 8'hfe;
parameter TX_SEQ_D	= 8'h9c; //valid only in lane0
/////////////////////////////////////////////////////////////////
assign xgmii_tx.TXCLK = gclk_en_d ? 0 : clk125mhz; // inset ICG cell during syn to fix timing issue
assign clk125mhz      = div2_d;
assign xgmii_tx.TXD   = xgmii_txd;
assign xgmii_tx.TXC   = xgmii_txc;
assign pop_pkt        = poppkt;
assign pop_crc        = popcrc;
//assign xgmii_tx.TXDCLK = clks.clk;

/////////////////////////////////////////////////////////////////
//________lane information_____________________________________//
// lane0------lane1-------lane2--------lane3                   //
// [7:0]======[15:8]======[23:16]======[31:24]                 //
// start--------pre---------pre---------pre                    //
// pre--------pre---------pre----------SFD                     //
//_____________________________________________________________//
always @(posedge clks.clk or negedge clks.rst) begin 

  if(~clks.rst) begin 
      cur_state <= #0 RST;
      cnt2_d    <= #0 0;
      IPG_cnt_d <= #0 4'd12;
      IDC_cnt_d <= #0 0;
      pkt_ctrl_d <= #0 0;
      crc_tx_d   <= #0 0;
      xgmii_tx_hold <= #0 64'b0;
      crc_left_d    <= #0 0;
      crc_bvalid_d  <= #0 0;
      idlecnt_d     <= #0 0;
      minIPG_d      <= #0 0;
      cnt128_d      <= #0 0;
      cur_state_clk <= #0 RST_;
      wakeuptimer_d <= #0 0;
      carry_d       <= #0 0;
      laneidle_d    <= #0 0;
      idlernd_cnt_d  <= #0 2;
      div2_d         <= #0 0;
      gclk_en_d      <= #0 0;
      bvalid         <= #0 0;
      xgmii_txd_d     <= #0 32'h07070707;
      xgmii_txc_d     <= #0 4'hf;
  end else begin 
            cur_state <= #1 nxt_state;
            cnt2_d    <= #1 cnt2_nxt;
            IPG_cnt_d <= #1 IPG_cnt_nxt;
            IDC_cnt_d <= #1 IDC_cnt_nxt;
            pkt_ctrl_d<= #1 pkt_ctrl_nxt;
            crc_tx_d  <= #1 crc_tx_nxt;
            xgmii_tx_hold <= #1 xgmii_tx_hold_nxt;
            crc_left_d    <= #1 crc_left_nxt;
            crc_bvalid_d  <= #1 crc_bvalid_nxt;
            idlecnt_d    <= #1 idlecnt_nxt;
            minIPG_d     <= #1 minIPG_nxt;
            cnt128_d     <= #1 cnt128_nxt;
            cur_state_clk <= #1 nxt_state_clk;
            wakeuptimer_d <= #1 wakeuptimer_nxt;
            carry_d       <= #1 carry;
            laneidle_d    <= #1 laneidle;
            idlernd_cnt_d <= #1 idlernd_cnt_nxt;
            div2_d        <= #0 div2_nxt;
            gclk_en_d     <= #0 gclk_en;
            bvalid        <= #1 bvalid_nxt;
            xgmii_txd_d    <= #1 xgmii_txd;
            xgmii_txc_d    <= #1 xgmii_txc;
           end

end 

always @* begin 
  IPG_cnt_nxt       = IPG_cnt_d;
  IDC_cnt_nxt       = IDC_cnt_d;
  //xgmii_tx_hold_nxt = xgmii_tx_hold;
  not_last          = ~(pkt_ctrl_d==8'h0d);
  poppkt            = (cur_state==SFD) | ((cur_state==DATA_TRANS) & (cnt2_d==1) & not_last) ;
  popcrc            = (cur_state==SFD);
  xgmii_tx_hold_nxt = poppkt ? pkt_data:xgmii_tx_hold;
  pkt_ctrl_nxt      = poppkt ? pkt_ctrl:pkt_ctrl_d;
  cnt2_nxt          = cnt2_d;
  crc_tx_nxt        = popcrc ? pkt_crc:crc_tx_d;
  crc_left_nxt      = crc_left_d;
  crc_bvalid_nxt    = crc_bvalid_d;
  idlecnt_nxt       = idlecnt_d;
  minIPG_nxt        = minIPG_d;
  idlernd_cnt_nxt   = idlernd_cnt_d;
  bvalid_nxt        = poppkt ? bvalidin:bvalid;
  carry             = carry_d;                 
  nxt_state         = cur_state;
  xgmii_txd         = xgmii_txd_d;
  xgmii_txc         = xgmii_txc_d;

  case(cur_state)
   RST: begin 
           xgmii_txd = {8{IDLE_D}};
           xgmii_txc = {4{1'b1}};
        if(~clks.rst) begin 
           nxt_state = cur_state;
        end else begin
           nxt_state = WAIT_TX_SIG;
                 end
        end
   WAIT_TX_SIG: begin 
                 // shift data into pipe
                 xgmii_txd = {8{IDLE_D}};
                 xgmii_txc = {4{1'b1}};
                 idlernd_cnt_nxt = 0;
                 idlecnt_nxt    = 0;
 
                 if(~lpi) begin
                 if(start_transmit) begin
                   nxt_state = SFD;
                   //poppkt    = 1;
                   //popcrc    = 1;
                 end else begin
                   nxt_state = cur_state;
                          end
                 end else begin
                            nxt_state = LPI;
                          end
                end
   SFD: begin 
                       xgmii_txd = {PREAMBLE_D,PREAMBLE_D,PREAMBLE_D,START_D};
                       xgmii_txc = '{4{1'b1}};
                       nxt_state = PRE;
                       cnt2_nxt  = 0;   // clr pkt cnt
                       //poppkt    = 1;
                       //popcrc    = 1;
        end
   PRE: begin 
                       xgmii_txd = {SFD_D,PREAMBLE_D,PREAMBLE_D,PREAMBLE_D};
                       xgmii_txc = '{4{1'b1}};
                       nxt_state = DATA_TRANS;
        end
   DATA_TRANS: begin 
                       //transmit data till pkt data is over 
                       cnt2_nxt  = cnt2_d + 1;   // cnt pkt loads
                       xgmii_txc = '{4{1'b0}};   // transferring all data      
    
                       if(pkt_ctrl_d == 8'h0d)begin
                            case(bvalid)
                              8'b10000000: begin
                                            // shift to CRC state
                                            xgmii_txd   = {crc_tx_d[15:8] ,         //lane3
                                                           crc_tx_d[23:16],         //lane2
                                                           crc_tx_d[31:24],         //lane1
                                                           xgmii_tx_hold[63:56]};   //lane0
                                            nxt_state   = CRC_TRANS;
                                            crc_left_nxt  = crc_tx_d[7:0];
                                            crc_bvalid_nxt = 2'h0;
                                           end
                              8'b11000000: begin 
                                            xgmii_txd   = {crc_tx_d[23:16],         //lane3 
                                                           crc_tx_d[31:24],         //lane2
                                                           xgmii_tx_hold[55:48],    //lane1
                                                           xgmii_tx_hold[63:56]};   //lane0
                                            nxt_state   = CRC_TRANS;
                                            crc_left_nxt  = crc_tx_d[15:0];
                                            crc_bvalid_nxt = 2'h1;
                                           end
                              8'b11100000: begin
                                            xgmii_txd   = {crc_tx_d[31:24],         //lane3
                                                           xgmii_tx_hold[47:40],    //lane2
                                                           xgmii_tx_hold[55:48],    //lane1
                                                           xgmii_tx_hold[63:56]};   //lane0
                                            nxt_state   = CRC_TRANS;
                                            crc_left_nxt  = crc_tx_d[23:0];
                                            crc_bvalid_nxt = 2'h2;
                                           end
                              8'b11110000: begin
                                                           
                                            xgmii_txd ={xgmii_tx_hold[39:32],xgmii_tx_hold[47:40],
                                                        xgmii_tx_hold[55:48],xgmii_tx_hold[63:56] };
                                            nxt_state  = CRC_TRANS;
                                            crc_left_nxt  = crc_tx_d;
                                            crc_bvalid_nxt = 2'h3;
                                           end
                              8'b11111000: begin
                                                if(~cnt2_d) begin
                                                 xgmii_txd ={xgmii_tx_hold[39:32],xgmii_tx_hold[47:40],
                                                             xgmii_tx_hold[55:48],xgmii_tx_hold[63:56] };
                                                 nxt_state = DATA_TRANS;
                                                end else begin
                                                xgmii_txd   = {crc_tx_d[15:8] ,         //lane3
                                                               crc_tx_d[23:16],         //lane2
                                                               crc_tx_d[31:24],         //lane1
                                                               xgmii_tx_hold[31:24]};   //lane0
                                                nxt_state   = CRC_TRANS;
                                                crc_left_nxt  = crc_tx_d[7:0];
                                                crc_bvalid_nxt = 2'h0;
                                                    end 
                                           end
                              8'b11111100: begin
                                                if(~cnt2_d) begin
                                                 xgmii_txd ={xgmii_tx_hold[39:32],xgmii_tx_hold[47:40],
                                                             xgmii_tx_hold[55:48],xgmii_tx_hold[63:56] };
                                                 nxt_state = DATA_TRANS;
                                                end else begin
                                                 xgmii_txd   = {crc_tx_d[23:16],         //lane3 
                                                                crc_tx_d[31:24],         //lane2
                                                                xgmii_tx_hold[23:16],    //lane1
                                                                xgmii_tx_hold[31:24]};   //lane0
                                                 nxt_state   = CRC_TRANS;
                                                 crc_left_nxt  = crc_tx_d[15:0];
                                                 crc_bvalid_nxt = 2'h1;
                                                    end
                                           end
                              8'b11111110: begin
                                                if(~cnt2_d) begin
                                                 xgmii_txd ={xgmii_tx_hold[39:32],xgmii_tx_hold[47:40],
                                                             xgmii_tx_hold[55:48],xgmii_tx_hold[63:56] };
                                                 nxt_state = DATA_TRANS;
                                                end else begin
                                                 xgmii_txd   = {crc_tx_d[31:24],         //lane3
                                                                xgmii_tx_hold[15:8],     //lane2
                                                                xgmii_tx_hold[23:16],    //lane1
                                                                xgmii_tx_hold[31:24]};   //lane0
                                                 nxt_state   = CRC_TRANS;
                                                 crc_left_nxt  = crc_tx_d[23:0];
                                                 crc_bvalid_nxt = 2'h2;
                                                         end
                                           end
                              8'b11111111: begin
                             xgmii_txd = cnt2_d ? {xgmii_tx_hold[7:0]  ,xgmii_tx_hold[15:8],      //lane0,lane1 
                                                   xgmii_tx_hold[23:16],xgmii_tx_hold[31:24]}:    //lane2,lane3
                                                  {xgmii_tx_hold[39:32],xgmii_tx_hold[47:40],     //lane0,lane1
                                                   xgmii_tx_hold[55:48],xgmii_tx_hold[63:56] };   //lane2,lane3
                             nxt_state = cnt2_d ? CRC_TRANS:DATA_TRANS;
                                                 crc_left_nxt  = crc_tx_d;
                                                 crc_bvalid_nxt = 2'h3;
                                           end
                            endcase  
                       end else begin
                             xgmii_txd = cnt2_d ? {xgmii_tx_hold[7:0]  ,xgmii_tx_hold[15:8],   //lane3
                                                   xgmii_tx_hold[23:16],xgmii_tx_hold[31:24]}: //lane2
                                                  {xgmii_tx_hold[39:32],xgmii_tx_hold[47:40],  //lane1
                                                   xgmii_tx_hold[55:48],xgmii_tx_hold[63:56] };//lane0
                             poppkt    = (cnt2_d==1); 
                             nxt_state = DATA_TRANS;
                                end
 
		end
   CRC_TRANS: begin 
                 // transmit and EFD as required, insert idle's , update IPG,update IDC.
                    case(crc_bvalid_d)
                      0:begin
                          xgmii_txd   = { IDLE_D,IDLE_D,TERMINATE_D,crc_left_d[7:0] };
                          xgmii_txc   = 4'b1110;        
                          nxt_state   = IFG;
                          idlecnt_nxt = idlecnt_d + 2;
                          laneidle    = 2;
			end
                      1:begin
                          xgmii_txd   = { IDLE_D,TERMINATE_D,crc_left_d[7:0],crc_left_d[15:8]};
                          xgmii_txc   = 4'b1100;        
                          nxt_state   = IFG;
                          idlecnt_nxt = idlecnt_d + 1;
                          laneidle    = 1;
			end
                      2:begin
                          xgmii_txd = { TERMINATE_D,crc_left_d[7:0],crc_left_d[15:8],crc_left_d[23:16] };
                          xgmii_txc = 4'b1000;        
                          nxt_state = IFG;
                          laneidle  = 0;
			end
                      3:begin
                          xgmii_txd = {crc_left_d[7:0],crc_left_d[15:8],crc_left_d[23:16],crc_left_d[31:24]
                                       };
                          xgmii_txc = 4'b0000;        
                          nxt_state = EFD;
                          laneidle  = 3;
			end
                    endcase
                          {carry,IDC_cnt_nxt} = IDC_cnt_nxt + laneidle;
                           idlernd_cnt_nxt    = (carry| (laneidle==0)) ? 3:2;
		end
   EFD: begin 
                          // end frame delimiter for after last pkt
                          xgmii_txd   = { IDLE_D,IDLE_D,IDLE_D,TERMINATE_D};
                          xgmii_txc   = 4'b1111;        
                          idlecnt_nxt = idlecnt_d + 3;
                          nxt_state   = IFG;
	end
   IFG: begin 
               ///////////////////////////////////////////////////////////////////////////////////////////
               ////_+_+_+_+_+_+_+_+_+ IDC logic for better data rate_+_+_+_+_+_+_+_+_+_+_+_+//////////////
               ///////////////////////////////////////////////////////////////////////////////////////////
               ///////// IPG varies from 9 to 15 slots to optimize performance////////////////////////////
               /////////  and minimize idle slots in pkt trasmission          ////////////////////////////
               //_______PKT_EXT__IPG __IDC=0___IPG___IDC=1___IPG___IDC=2____IPG___IDC=3_______////////////
               //_______|0     || 12 || 0   || 12 || 1    || 12  || 2    || 12  || 3        ||////////////
               //_______|1     || 11 || 1   || 11 || 2    || 11  || 3    || 15  || 0        ||////////////
               //_______|2     || 10 || 2   || 10 || 3    || 14  || 0    || 14  || 1        ||////////////
               //_______|3     ||  9 || 3   || 13 || 0    || 13  || 1    || 13  || 2        ||////////////
               ///////////////////////////////////////////////////////////////////////////////////////////
                
               if(idlernd_cnt_d==1) begin 
                  nxt_state = start_transmit ? SFD:WAIT_TX_SIG;// transfer nxt pkt
               end else begin
                  nxt_state = cur_state;
                        end 

               idlernd_cnt_nxt = idlernd_cnt_d - 1;        
               xgmii_txd       = { IDLE_D,IDLE_D,IDLE_D,IDLE_D};
               xgmii_txc       = 4'b1111;
              
        end
   LPI: begin 
                          xgmii_txd = { LPI_D,LPI_D,LPI_D,LPI_D};
                          xgmii_txc = 4'b1111;        
                          nxt_state = (wakeuptimerdone|ISR) ? WAIT_TX_SIG : cur_state; 
        end
  endcase
  
end 

//////////////////////////////////////////////////////////////////
//_________clock generation@156.25MHz___________________________//
//////////////////////////////////////////////////////////////////
always @(*) begin
  div2_nxt = ~div2_d;
end
///////////////////////////////////////////////////////////////////
//_________clock lpi_____________________________________________//
/////////////////////////////////////////////////////////////////// 
always @* begin 
 gclk_en = 0;
 nxt_state_clk = cur_state_clk;
 cnt128_nxt    = cnt128_d;
 wakeuptimer_nxt = wakeuptimer_d;
 case(cur_state_clk) 
  RST_:     begin
                if(~clks.rst) begin
                  nxt_state_clk = cur_state_clk;
                end else begin
                  nxt_state_clk = WAIT_LPI;
                         end
	    end
  WAIT_LPI: begin
                if(lpi)begin
                          nxt_state_clk = (cnt128_d == 7'h7F) ? GCLK : cur_state_clk; 
                          cnt128_nxt    = cnt128_d + 1;
                end else begin
                          nxt_state_clk = cur_state_clk;
                          cnt128_nxt    = 0; // cleared in case of software programming error or dynamic glitch of lpi due to traffic flow 
                         end 
	    end
  GCLK:     begin
             gclk_en         = 1;
             wakeuptimer_nxt = 0;
             nxt_state_clk   = ~lpi ? WAKEUPTIME : cur_state_clk;    
	    end
  WAKEUPTIME:    begin
		  wakeuptimer_nxt = wakeuptimer_d + 1;  
                  nxt_state_clk   = wakeuptimerdone ? WAIT_LPI : cur_state_clk;
	         end
 endcase  
end
assign wakeuptimerdone = (wakeuptimer_d == 32'hFF);

//assign nxt_buf = ( (cur_state == WAIT_TX_SIG) & ~lpi & start_transmit )
//                | ((cur_state == IFG) & (idlernd_cnt_d == 1)) ;
assign  nxt_buf  = (nxt_state == SFD);

assign ISR     = (cur_state_clk == WAIT_LPI) & ~lpi & ~(cnt128_d == 0) & ~(cnt128_d== 7'h7F);   
              
endmodule 

