`timescale 1ns/1ps
`ifndef GATE
`include "files.sv"
`else
`include "files_gate.sv"
`endif

import ethernet_frame_pkg::*;

module ethernet_tb;

 AXI_clks       clks ();
 AXI_rd_addr_ch rd_addr_ch();
 AXI_rd_data_ch rd_data_ch();
 AXI_wr_data_ch wr_data_ch();
 AXI_wr_addr_ch wr_addr_ch();  
 AXI_wr_resp_ch wr_resp_ch();  
 tx_xgmii          xgmii_tx();
 MEMIF_CRC #(.DWIDTH(32),.AWIDTH(4))          memif_crcf0();
 MEMIF_CRC #(.DWIDTH(32),.AWIDTH(4))          memif_crcf1();
 MEMIF_CRC #(.DWIDTH(32),.AWIDTH(4))          memif_crcf2();
 MEMIF_PKTD #(.DWIDTH(64),.AWIDTH(6))          memif_pdfifo0();
 MEMIF_PKTD #(.DWIDTH(64),.AWIDTH(6))          memif_pdfifo1();
 MEMIF_PKTD #(.DWIDTH(64),.AWIDTH(6))          memif_pdfifo2();    
 MEMIF_PKTC #(.DWIDTH(16),.AWIDTH(6))          memif_pcfifo0();
 MEMIF_PKTC #(.DWIDTH(16),.AWIDTH(6))          memif_pcfifo1();
 MEMIF_PKTC #(.DWIDTH(16),.AWIDTH(6))          memif_pcfifo2();    
 MEMIF_SWCHADDR #(.DWIDTH(36),.AWIDTH(5))          memif_swchaddr();                  
 MEMIF_SWCHDATA #(.DWIDTH(32),.AWIDTH(5))          memif_swchdata();                  
 MEMIF_SWCHRSP #(.DWIDTH(6),.AWIDTH(5))           memif_swchrsp ();                 
 
logic [31:0] start_addr;

default clocking axi_clocking @(posedge clks.clk);
endclocking 



 initial begin 
   start_addr =32'hFFFF_0008;
   clks.clk = 0;
   forever #5 clks.clk = ~clks.clk; // 5pre
 end 

 initial begin
   clks.rst = 1; #2;
   clks.rst = 0;
   ##5; #4;
   clks.rst = 1;
   ##10;
   traffic_gen();
   dump_mem_to_file();
   ##500;
   $finish;
 end

function void dump_mem_to_file();
      logic [31:0] index;
      integer f,w;
      f = $fopen("mmap.txt","w");
      if(ethernet_mem_data.first(index)) 
      do
         $fwrite(f,"mem[%h]=%0h\n",index,ethernet_mem_data[index]);
      while(ethernet_mem_data.next(index));
      $fclose(f);
endfunction 

  initial begin 
    $dumpvars(0,ethernet_tb);
`ifndef CG
    $dumpfile("mac_core.vcd");
`else
    $dumpfile("mac_core_cg.vcd");
`endif
  end

task traffic_gen();
  int i =0;
  while (i<5) begin
   generate_pkt(i);
    i++; 
  end
endtask


task generate_pkt(int num);
 // generate packets here
 pkt_gen_mem_fill pkt = new();
 pkt.build_ethernet_frame();
 pkt.mem_fill();
 $display("-----exp_str store-----");
 $display(pkt.exp_str());
 eth_tx_check.esstore[num]=pkt.exp_str();
 $display("----------------------");
 //pkt.link_hdr_fill();
 //axi_waddr.push_back(generate_wr_addr_to_axi(num));
 //axi_wdata.push_back(pkt.link_hdr_fill());
 tb_axi_master.axi_waddr.push_back(generate_wr_addr_to_axi(num));
 tb_axi_master.axi_wdata.push_back(pkt.link_hdr_fill());
 //$display("axi_waddr:%h axi_wdata:%h",axi_waddr[num],axi_wdata[num]);
 $display("ETH_TB::axi_waddr:%h axi_wdata:%h",tb_axi_master.axi_waddr[num],
                                      tb_axi_master.axi_wdata[num]);
endtask 

function logic [31:0] generate_wr_addr_to_axi(int num);
       return (start_addr+((num%16)*8));
endfunction 


`ifndef GATE
eth_core tx(   clks.to_rtl,
               //rd_addr_ch.slave_if,
               //rd_data_ch.slave_if,
               wr_addr_ch.slave_if,
               wr_data_ch.slave_if,
               wr_resp_ch.slave_if,
               rd_addr_ch.master_if,
               rd_data_ch.master_if,
               xgmii_tx.from_rtl,
               memif_crcf0,
               memif_crcf1,
               memif_crcf2,
               memif_pdfifo0,
               memif_pdfifo1,
               memif_pdfifo2,    
               memif_pcfifo0,
               memif_pcfifo1,
               memif_pcfifo2,    
               memif_swchaddr,                  
               memif_swchdata,                  
               memif_swchrsp                  
                );
`else 
 
eth_core TX ( clks.to_rtl.clk , 
              clks.to_rtl.rst , 
              wr_addr_ch.slave_if.AWID    , wr_addr_ch.slave_if.AWADDR  , 
              wr_addr_ch.slave_if.AWLEN   , wr_addr_ch.slave_if.AWSIZE  , 
              wr_addr_ch.slave_if.AWBURST , wr_addr_ch.slave_if.AWLOCK  , 
              wr_addr_ch.slave_if.AWCACHE , wr_addr_ch.slave_if.AWPROT  , 
              wr_addr_ch.slave_if.AWVALID , wr_addr_ch.slave_if.AWREADY , 
              wr_data_ch.slave_if.WID     , wr_data_ch.slave_if.WDATA  , 
              wr_data_ch.slave_if.WLAST   , wr_data_ch.slave_if.WVALID , 
              wr_data_ch.slave_if.WREADY  , wr_resp_ch.slave_if.BID    , 
              wr_resp_ch.slave_if.BRESP   , wr_resp_ch.slave_if.BUSER  , 
              wr_resp_ch.slave_if.BVALID  , wr_resp_ch.slave_if.BREADY , 
              rd_addr_ch.master_if.ARID   , rd_addr_ch.master_if.ARADDR , 
              rd_addr_ch.master_if.ARLEN  , rd_addr_ch.master_if.ARSIZE , 
              rd_addr_ch.master_if.ARBURST , rd_addr_ch.master_if.ARLOCK , 
              rd_addr_ch.master_if.ARCACHE , rd_addr_ch.master_if.ARPROT , 
              rd_addr_ch.master_if.ARQOS   , rd_addr_ch.master_if.ARREGION , 
              rd_addr_ch.master_if.ARUSER  , rd_addr_ch.master_if.ARVALID , 
              rd_addr_ch.master_if.ARREADY , rd_data_ch.master_if.RID , 
              rd_data_ch.master_if.RDATA   , rd_data_ch.master_if.RRESP , 
              rd_data_ch.master_if.RLAST   , rd_data_ch.master_if.RUSER , 
              rd_data_ch.master_if.RVALID  , rd_data_ch.master_if.RREADY , 
              xgmii_tx.from_rtl.TXC , xgmii_tx.from_rtl.TXD     , xgmii_tx.from_rtl.TXCLK, 
              memif_crcf0.from_fifo.f0_waddr , memif_crcf0.from_fifo.f0_wdata ,
              memif_crcf0.from_fifo.f0_write , memif_crcf0.from_fifo.f0_raddr , 
              memif_crcf0.from_fifo.f0_rdata , memif_crcf1.from_fifo.f0_waddr , 
              memif_crcf1.from_fifo.f0_wdata , memif_crcf1.from_fifo.f0_write , 
              memif_crcf1.from_fifo.f0_raddr , memif_crcf1.from_fifo.f0_rdata , 
              memif_crcf2.from_fifo.f0_waddr , memif_crcf2.from_fifo.f0_wdata , 
              memif_crcf2.from_fifo.f0_write , memif_crcf2.from_fifo.f0_raddr , 
              memif_crcf2.from_fifo.f0_rdata , memif_pdfifo0.from_fifo.f0_waddr , 
              memif_pdfifo0.from_fifo.f0_wdata , memif_pdfifo0.from_fifo.f0_write , 
              memif_pdfifo0.from_fifo.f0_raddr , memif_pdfifo0.from_fifo.f0_rdata , 
              memif_pdfifo1.from_fifo.f0_waddr , memif_pdfifo1.from_fifo.f0_wdata , 
              memif_pdfifo1.from_fifo.f0_write , memif_pdfifo1.from_fifo.f0_raddr , 
              memif_pdfifo1.from_fifo.f0_rdata , memif_pdfifo2.from_fifo.f0_waddr , 
              memif_pdfifo2.from_fifo.f0_wdata , memif_pdfifo2.from_fifo.f0_write , 
              memif_pdfifo2.from_fifo.f0_raddr , memif_pdfifo2.from_fifo.f0_rdata , 
              memif_pcfifo0.from_fifo.f0_waddr , memif_pcfifo0.from_fifo.f0_wdata , 
              memif_pcfifo0.from_fifo.f0_write , memif_pcfifo0.from_fifo.f0_raddr , 
              memif_pcfifo0.from_fifo.f0_rdata , memif_pcfifo1.from_fifo.f0_waddr , 
              memif_pcfifo1.from_fifo.f0_wdata , memif_pcfifo1.from_fifo.f0_write , 
              memif_pcfifo1.from_fifo.f0_raddr , memif_pcfifo1.from_fifo.f0_rdata , 
              memif_pcfifo2.from_fifo.f0_waddr , memif_pcfifo2.from_fifo.f0_wdata , 
              memif_pcfifo2.from_fifo.f0_write , memif_pcfifo2.from_fifo.f0_raddr , 
              memif_pcfifo2.from_fifo.f0_rdata , memif_swchaddr.from_fifo.f0_waddr , 
              memif_swchaddr.from_fifo.f0_wdata , memif_swchaddr.from_fifo.f0_write , 
              memif_swchaddr.from_fifo.f0_raddr , memif_swchaddr.from_fifo.f0_rdata , 
              memif_swchdata.from_fifo.f0_waddr , memif_swchdata.from_fifo.f0_wdata , 
              memif_swchdata.from_fifo.f0_write , memif_swchdata.from_fifo.f0_raddr , 
              memif_swchdata.from_fifo.f0_rdata , memif_swchrsp.from_fifo.f0_waddr , 
              memif_swchrsp.from_fifo.f0_wdata  , memif_swchrsp.from_fifo.f0_write , 
              memif_swchrsp.from_fifo.f0_raddr  , memif_swchrsp.from_fifo.f0_rdata  );
`endif


axi_master_model tb_axi_master( wr_addr_ch.master_if,
                                wr_data_ch.master_if,
                                wr_resp_ch.master_if,
                                clks.to_rtl
                           );

axi_slave_model tb_axi_slave ( 
                                clks.to_rtl,
                                rd_addr_ch.slave_if,
                                rd_data_ch.slave_if
                             );


//mem modules   
mem_model_crc #(.DWIDTH(32),.AWIDTH(4))  mem_model_crcf0  (memif_crcf0,clks);
mem_model_crc #(.DWIDTH(32),.AWIDTH(4))  mem_model_crcf1  (memif_crcf1,clks);
mem_model_crc #(.DWIDTH(32),.AWIDTH(4))  mem_model_crcf2  (memif_crcf2,clks);

mem_model_pktd #(.DWIDTH(64),.AWIDTH(6))  mem_model_pdfifo0  (memif_pdfifo0,clks);
mem_model_pktd #(.DWIDTH(64),.AWIDTH(6))  mem_model_pdfifo1  (memif_pdfifo1,clks);
mem_model_pktd #(.DWIDTH(64),.AWIDTH(6))  mem_model_pdfifo2  (memif_pdfifo2,clks);

mem_model_pktc #(.DWIDTH(16),.AWIDTH(6))  mem_model_pcfifo0  (memif_pcfifo0,clks);
mem_model_pktc #(.DWIDTH(16),.AWIDTH(6))  mem_model_pcfifo1  (memif_pcfifo1,clks);
mem_model_pktc #(.DWIDTH(16),.AWIDTH(6))  mem_model_pcfifo2  (memif_pcfifo2,clks);

mem_model_swchaddr #(.DWIDTH(36),.AWIDTH(5))  mem_model_swchaddrfifo  (memif_swchaddr,clks);
mem_model_swchdata #(.DWIDTH(32),.AWIDTH(5))  mem_model_swchdatafifo  (memif_swchdata,clks);
mem_model_swchrsp #(.DWIDTH(6) ,.AWIDTH(5))  mem_model_swchrspfifo   (memif_swchrsp ,clks);
eth_tx_protocol_check eth_tx_check(xgmii_tx.to_tb);

// line to inspect low power code 
`ifdef SAIF_ANA
initial begin
  ##15;
  $set_toggle_region (tx);
  $toggle_start;
  ##480
  $toggle_stop;
  $toggle_report("eth_core.saif", 3.2e-9, "ethernet_tb.tx"); 
end
`endif

endmodule 
