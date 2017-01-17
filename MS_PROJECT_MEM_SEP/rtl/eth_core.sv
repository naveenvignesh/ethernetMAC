module eth_core(AXI_clks.to_rtl clks,
                //AXI_rd_addr_ch.slave_if r_ach,
                //AXI_rd_data_ch.slave_if r_dch,
                AXI_wr_addr_ch.slave_if w_ach,
                AXI_wr_data_ch.slave_if w_dch,
                AXI_wr_resp_ch.slave_if w_rspch, 
                AXI_rd_addr_ch.master_if m_r_ach,
                AXI_rd_data_ch.master_if m_r_dch,
                tx_xgmii.from_rtl        xgmii_tx,
	        MEMIF_CRC.from_fifo       memif_crcf0,
	        MEMIF_CRC.from_fifo       memif_crcf1,
	        MEMIF_CRC.from_fifo       memif_crcf2,
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

eth_tx tx_core   ( clks,
                   //r_ach,
                   //r_dch,
                   w_ach,
                   w_dch,
                   w_rspch,
                   m_r_ach,
                   m_r_dch,
                   xgmii_tx,
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
                   //m_w_ach,
                   //m_w_dch,
                   //m_w_rspch 
                   );


endmodule 
