module eth_tx_crc #(parameter AW = 4, DW = 32)
( AXI_clks.to_rtl clks,
  input           dready_pkt0,
  input [63:0]    datain_pkt0,
  input [7:0]     ctrl_wd_pkt0,
  input [7:0]     bvalid_pkt0,
  input           dready_pkt1,
  input [63:0]    datain_pkt1,
  input [7:0]     ctrl_wd_pkt1,
  input [7:0]     bvalid_pkt1,
  input           dready_pkt2,
  input [63:0]    datain_pkt2,
  input [7:0]     ctrl_wd_pkt2,
  input [7:0]     bvalid_pkt2,
  input           crcfifo0_pull,
  input           crcfifo1_pull,
  input           crcfifo2_pull,
  output          crcfifo0_empty,
  output          crcfifo1_empty,
  output          crcfifo2_empty,
  output          crcfifo0_full,
  output          crcfifo1_full,
  output          crcfifo2_full,
  output [DW-1:0] crcfifo0_dataout,
  output [DW-1:0] crcfifo1_dataout,
  output [DW-1:0] crcfifo2_dataout,
  MEMIF_CRC.from_fifo     memif_crcf0,
  MEMIF_CRC.from_fifo     memif_crcf1,
  MEMIF_CRC.from_fifo     memif_crcf2
  );

//reg [DW-1:0] crcfifo0_dataout,crcfifo1_dataout,crcfifo2_dataout;
wire[DW-1:0] crcfifo0_datain,crcfifo1_datain,crcfifo2_datain;
wire         crcfifo0_push,crcfifo1_push,crcfifo2_push;
wire [63:0]  dataout_pkt0,dataout_pkt1,dataout_pkt2;
 
CRC_block crcpkt0(
.clks(clks),
.dready(dready_pkt0),
.datain(datain_pkt0),
.ctrl_wd(ctrl_wd_pkt0),
.bvalid(bvalid_pkt0),
.data_vld(datavld_pkt0),
.crc_vld_2d(crcfifo0_push),
.data_out(dataout_pkt0),
.crc_out(crcfifo0_datain)
);

CRC_block crcpkt1(
.clks(clks),
.dready(dready_pkt1),
.datain(datain_pkt1),
.ctrl_wd(ctrl_wd_pkt1),
.bvalid(bvalid_pkt1),
.data_vld(datavld_pkt1),
.crc_vld_2d(crcfifo1_push),
.data_out(dataout_pkt1),
.crc_out(crcfifo1_datain)
);

CRC_block crcpkt2(
.clks(clks),
.dready(dready_pkt2),
.datain(datain_pkt2),
.ctrl_wd(ctrl_wd_pkt2),
.bvalid(bvalid_pkt2),
.data_vld(datavld_pkt2),
.crc_vld_2d(crcfifo2_push),
.data_out(dataout_pkt2),
.crc_out(crcfifo2_datain)
);

wire [AW:0] crcfifo0_depthleft,crcfifo1_depthleft,crcfifo2_depthleft;
 
dma_fifo_exmem_crc #(.AWIDTH(AW),.DWIDTH(DW)) crcfifo0 (
.clks(clks),
.push(crcfifo0_push),
.pull(crcfifo0_pull),
.data_in(crcfifo0_datain),
.data_out(crcfifo0_dataout),
.depth_left(crcfifo0_depthleft),
.full(crcfifo0_full),
.empty(crcfifo0_empty),
.memif(memif_crcf0)
);
dma_fifo_exmem_crc #(.AWIDTH(AW),.DWIDTH(DW)) crcfifo1 (
.clks(clks),
.push(crcfifo1_push),
.pull(crcfifo1_pull),
.data_in(crcfifo1_datain),
.data_out(crcfifo1_dataout),
.depth_left(crcfifo1_depthleft),
.full(crcfifo1_full),
.empty(crcfifo1_empty),
.memif(memif_crcf1)
);
dma_fifo_exmem_crc #(.AWIDTH(AW),.DWIDTH(DW)) crcfifo2 (
.clks(clks),
.push(crcfifo2_push),
.pull(crcfifo2_pull),
.data_in(crcfifo2_datain),
.data_out(crcfifo2_dataout),
.depth_left(crcfifo2_depthleft),
.full(crcfifo2_full),
.empty(crcfifo2_empty),
.memif(memif_crcf2)
);

endmodule 
 
