module eth_tx(AXI_clks.to_rtl clks,
              //AXI_rd_addr_ch.slave_if r_ach,
              //AXI_rd_data_ch.slave_if r_dch,
              AXI_wr_addr_ch.slave_if w_ach,
              AXI_wr_data_ch.slave_if w_dch,
              AXI_wr_resp_ch.slave_if w_rspch,
              AXI_rd_addr_ch.master_if m_r_ach,
              AXI_rd_data_ch.master_if m_r_dch,
              tx_xgmii.from_rtl        xgmii_tx,
	      MEMIF_CRC.from_fifo      memif_crcf0,
	      MEMIF_CRC.from_fifo      memif_crcf1,
	      MEMIF_CRC.from_fifo      memif_crcf2,
              MEMIF_PKTD.from_fifo       memif_pdfifo0,
              MEMIF_PKTD.from_fifo       memif_pdfifo1,
              MEMIF_PKTD.from_fifo       memif_pdfifo2,    
              MEMIF_PKTC.from_fifo       memif_pcfifo0,
              MEMIF_PKTC.from_fifo       memif_pcfifo1,
              MEMIF_PKTC.from_fifo       memif_pcfifo2,    
              MEMIF_SWCHADDR.from_fifo       memif_swchaddr,                  
              MEMIF_SWCHDATA.from_fifo       memif_swchdata,                  
              MEMIF_SWCHRSP.from_fifo       memif_swchrsp                  
              //AXI_wr_addr_ch.master_if m_w_ach,
              //AXI_wr_data_ch.master_if m_w_dch,
              //AXI_wr_resp_ch.master_if m_w_rspch
              );

  wire [31:0] reg_write_addr;
  wire [63:0] reg_write_data;
  wire wr_en;
  wire rd_en;
  wire  [31:0] rd_addr;
  wire  [63:0] rd_data,haddr;

  clink_regs linkregs;
   //dma_controller_tx tx_regs
                            
 dma_controller_tx dma_reg_tx(
                         .clks (clks),
                         .slave_addr(reg_write_addr),
                         .slave_data(reg_write_data),
                         .wr_en(wr_en),
                         .linkregs (linkregs),
                         .rd_en(rd_en),
                         .rd_addr(rd_addr),
                         .rd_data(rd_data),
                         .stack_full(stack_full),
                         .stack_empty(stack_empty),
                         .haddr(haddr));
                            
                            
                            
                            
   AXI_slave         axi_slave       ( .clks (clks),
                                       //.r_ach(r_ach),
                                       //.r_dch(r_dch),
                                       .w_ach(w_ach),
                                       .w_dch(w_dch),
                                       .w_rspch(w_rspch),
                                       .reg_write_data(reg_write_data), 
                                       .reg_write_addr(reg_write_addr),
                                       .wr_en(wr_en),
                                       .memif_swchaddr(memif_swchaddr),                  
                                       .memif_swchdata(memif_swchdata),                  
                                       .memif_swchrsp (memif_swchrsp)                  
);

   wire pfifo_empty_0;
   wire pfifo_empty_1;
   wire pfifo_empty_2;
   wire pfifo_push_0;
   wire pfifo_push_1;
   wire pfifo_push_2;

   wire [15:0] pfifo_datain_ctrl0,pcfifo_dataout_0;
   wire [15:0] pfifo_datain_ctrl1,pcfifo_dataout_1;
   wire [15:0] pfifo_datain_ctrl2,pcfifo_dataout_2;

   wire [63:0] pfifo_datain_0,pfifo_dataout_0;
   wire [63:0] pfifo_datain_1,pfifo_dataout_1;
   wire [63:0] pfifo_datain_2,pfifo_dataout_2;

   wire [7:0]  pfifo_ctrl_0;
   wire [7:0]  pfifo_ctrl_1;
   wire [7:0]  pfifo_ctrl_2;

wire        pfifo_pop_0;
wire        pfifo_pop_1;
wire        pfifo_pop_2;
wire        pcfifo_pop_0;
wire        pcfifo_pop_1;
wire        pcfifo_pop_2;

   AXI_master        axi_master      ( .clks     (clks),
                                       .raddr_ch (m_r_ach),
                                       .rdata_ch (m_r_dch),
                                       //.waddr_ch (m_w_ach),
                                       //.wdata_ch (m_w_dch),
                                       //.wresp_ch (m_w_rspch),
                                       .rd       (rd_en),
                                       .main_ptr_empty (stack_empty),
                                       .haddr    (haddr),
                                       .pfifo_empty_0(pfifo_empty_0),
                                       .pfifo_empty_1(pfifo_empty_1),
                                       .pfifo_empty_2(pfifo_empty_2),
                                       .pfifo_push0  (pfifo_push_0),
                                       .pfifo_push1  (pfifo_push_1),
                                       .pfifo_push2  (pfifo_push_2),
                                       .pfifo_ctrl0  (pfifo_ctrl_0),
                                       .pfifo_ctrl1  (pfifo_ctrl_1),
                                       .pfifo_ctrl2  (pfifo_ctrl_2),
                                       .pfifo_datain_ctrl_0(pfifo_datain_ctrl0),
                                       .pfifo_datain_ctrl_1(pfifo_datain_ctrl1),
                                       .pfifo_datain_ctrl_2(pfifo_datain_ctrl2),
                                       .pfifo_datain0(pfifo_datain_0),
                                       .pfifo_datain1(pfifo_datain_1),
                                       .pfifo_datain2(pfifo_datain_2),
                                       .pcfifo_dataout_0(pcfifo_dataout_0), 
                                       .pcfifo_dataout_1(pcfifo_dataout_1), 
                                       .pcfifo_dataout_2(pcfifo_dataout_2), 
                                       .pfifo_dataout_0 (pfifo_dataout_0),
                                       .pfifo_dataout_1 (pfifo_dataout_1),
                                       .pfifo_dataout_2 (pfifo_dataout_2),
                                       .pfifo_pop_0     (pfifo_pop_0),     
                                       .pfifo_pop_1     (pfifo_pop_1),
                                       .pfifo_pop_2     (pfifo_pop_2),
                                       .pcfifo_pop_0    (pcfifo_pop_0),
                                       .pcfifo_pop_1    (pcfifo_pop_1),
                                       .pcfifo_pop_2    (pcfifo_pop_2),    
                                       .memif_pdfifo0   (memif_pdfifo0),
                                       .memif_pdfifo1   (memif_pdfifo1),
                                       .memif_pdfifo2   (memif_pdfifo2),    
                                       .memif_pcfifo0   (memif_pcfifo0),
                                       .memif_pcfifo1   (memif_pcfifo1),
                                       .memif_pcfifo2   (memif_pcfifo2)    
                                        );

wire          crcfifo0_pull;
wire          crcfifo1_pull;
wire          crcfifo2_pull;
wire          crcfifo0_empty;
wire          crcfifo1_empty;
wire          crcfifo2_empty;
wire          crcfifo0_full;
wire          crcfifo1_full;
wire          crcfifo2_full;
wire [31:0]   crcfifo0_dataout;
wire [31:0]   crcfifo1_dataout;
wire [31:0]   crcfifo2_dataout;
wire [63:0]   datain_pkt0;
wire [63:0]   datain_pkt1;
wire [63:0]   datain_pkt2;
wire [7:0]    ctrl_wd_pkt0;
wire [7:0]    ctrl_wd_pkt1;
wire [7:0]    ctrl_wd_pkt2;
wire [7:0]    bvalid_pkt0;
wire [7:0]    bvalid_pkt1;
wire [7:0]    bvalid_pkt2;
wire          dready_pkt0;
wire          dready_pkt1;
wire          dready_pkt2;

assign        dready_pkt0  = pfifo_push_0; 
assign        dready_pkt1  = pfifo_push_1;
assign        dready_pkt2  = pfifo_push_2;
assign        bvalid_pkt0  = pfifo_datain_ctrl0[7:0];
assign        bvalid_pkt1  = pfifo_datain_ctrl1[7:0];
assign        bvalid_pkt2  = pfifo_datain_ctrl2[7:0];
//assign        crcfifo0_pull= 0;
//assign        crcfifo1_pull= 0;
//assign        crcfifo2_pull= 0;
assign        datain_pkt0  = pfifo_datain_0;
assign        datain_pkt1  = pfifo_datain_1;
assign        datain_pkt2  = pfifo_datain_2;
assign        ctrl_wd_pkt0 = pfifo_ctrl_0;
assign        ctrl_wd_pkt1 = pfifo_ctrl_1;
assign        ctrl_wd_pkt2 = pfifo_ctrl_2;

eth_tx_crc #(4,32) tx_crc 
( .clks             (clks            ),
  .dready_pkt0      (dready_pkt0     ),
  .dready_pkt1      (dready_pkt1     ),
  .dready_pkt2      (dready_pkt2     ),
  .datain_pkt0      (datain_pkt0     ),
  .datain_pkt1      (datain_pkt1     ),
  .datain_pkt2      (datain_pkt2     ),
  .ctrl_wd_pkt0     (ctrl_wd_pkt0    ),
  .ctrl_wd_pkt1     (ctrl_wd_pkt1    ),
  .ctrl_wd_pkt2     (ctrl_wd_pkt2    ),
  .bvalid_pkt0      (bvalid_pkt0     ),
  .bvalid_pkt1      (bvalid_pkt1     ),
  .bvalid_pkt2      (bvalid_pkt2     ),
  .crcfifo0_pull    (crcfifo0_pull   ),
  .crcfifo1_pull    (crcfifo1_pull   ),
  .crcfifo2_pull    (crcfifo2_pull   ),
  .crcfifo0_empty   (crcfifo0_empty  ),
  .crcfifo1_empty   (crcfifo1_empty  ),
  .crcfifo2_empty   (crcfifo2_empty  ),
  .crcfifo0_full    (crcfifo0_full   ),
  .crcfifo1_full    (crcfifo1_full   ),
  .crcfifo2_full    (crcfifo2_full   ),
  .crcfifo0_dataout (crcfifo0_dataout),
  .crcfifo1_dataout (crcfifo1_dataout),
  .crcfifo2_dataout (crcfifo2_dataout),
  .memif_crcf0      (memif_crcf0),
  .memif_crcf1      (memif_crcf1),
  .memif_crcf2      (memif_crcf2));

//
//
wire start_transmit,lpi,pop_pkt,pop_crc,pkt_empty;
wire [63:0] pkt_data,pfifo_datain;
wire [7:0]  pkt_ctrl,bvalidin;
wire [31:0] pkt_crc;
wire        nxt_buf,arb_nxt;
wire        pfifo_pop,crcfifo_pop;
wire [31:0] crcfifo_dataout;
wire [15:0] pfifo_datain_ctrl;
//wire        crcfifo0_pull_;
//wire        crcfifo1_pull_;
//wire        crcfifo2_pull_;
//wire        pfifo_pop_0;
//wire        pfifo_pop_1;
//wire        pfifo_pop_2;
//wire        pcfifo_pop_0;
//wire        pcfifo_pop_1;
//wire        pcfifo_pop_2;
//
// output qos module/ queue selector
//
queue_selection QOS_selector(
.clks                (clks   ),
.arb_nxt             (arb_nxt),
.pfifo_datain0       (pfifo_dataout_0),  // out data from packet buffer
.pfifo_datain1       (pfifo_dataout_1),  
.pfifo_datain2       (pfifo_dataout_2),  
.crcfifo0_dataout    (crcfifo0_dataout), // out data from crc buffer
.crcfifo1_dataout    (crcfifo1_dataout),
.crcfifo2_dataout    (crcfifo2_dataout),
.pfifo_datain_ctrl_0 (pcfifo_dataout_0), // data out from control buffer 
.pfifo_datain_ctrl_1 (pcfifo_dataout_1),
.pfifo_datain_ctrl_2 (pcfifo_dataout_2),
.crcfifo0_empty      (crcfifo0_empty),
.crcfifo1_empty      (crcfifo1_empty),
.crcfifo2_empty      (crcfifo2_empty),
.pfifo_pop           (pfifo_pop),
.crcfifo_pop         (crcfifo_pop),
.crcfifo0_pull       (crcfifo0_pull),
.crcfifo1_pull       (crcfifo1_pull),
.crcfifo2_pull       (crcfifo2_pull),
.pfifo_pop_0         (pfifo_pop_0),
.pfifo_pop_1         (pfifo_pop_1),
.pfifo_pop_2         (pfifo_pop_2),
.pcfifo_pop_0        (pcfifo_pop_0),
.pcfifo_pop_1        (pcfifo_pop_1),
.pcfifo_pop_2        (pcfifo_pop_2),
.pfifo_datain        (pfifo_datain),
.pfifo_datain_ctrl   (pfifo_datain_ctrl),
.crcfifo_dataout     (crcfifo_dataout),
.start_transmit      (start_transmit)
);

//
//
//
// RS layer module 

//assign pkt_data = 64'b0;
//assign pkt_ctrl = 8'b0;
//assign pkt_crc  = 32'b0;
//assign start_transmit = 1'b0;
//assign lpi = 1'b1;
assign pkt_data = pfifo_datain;
assign pkt_ctrl = pfifo_datain_ctrl[7:0];
assign bvalidin = pfifo_datain_ctrl[15:8];
assign pkt_crc  = crcfifo_dataout;
assign lpi = ~start_transmit;
assign arb_nxt = nxt_buf;

rs_layer tx_rs(
.clks                       (clks),
.xgmii_tx               (xgmii_tx),
.start_transmit   (start_transmit),
.lpi                         (lpi),
.pop_pkt                 (pop_pkt),
.pop_crc                 (pop_crc),
.pkt_data               (pkt_data),
.pkt_empty             (pkt_empty),
.pkt_ctrl               (pkt_ctrl),
.pkt_crc                 (pkt_crc),
.nxt_buf                 (nxt_buf),
.bvalidin               (bvalidin)
);
                  
assign  pfifo_pop   = pop_pkt;
assign  crcfifo_pop = pop_crc; 

 endmodule 
