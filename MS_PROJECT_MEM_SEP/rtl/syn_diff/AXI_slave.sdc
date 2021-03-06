###################################################################

# Created by write_sdc on Sun Nov  6 01:39:55 2016

###################################################################
set sdc_version 2.0

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current uA
create_clock [get_ports clks.clk]  -name clk  -period 3  -waveform {0 1.5}
set_clock_uncertainty 0.25  [get_clocks clk]
set_input_delay -clock clk  0.6  [get_ports {w_ach.AWID[3]}]
set_input_delay -clock clk  0.6  [get_ports {w_ach.AWID[2]}]
set_input_delay -clock clk  0.6  [get_ports {w_ach.AWID[1]}]
set_input_delay -clock clk  0.6  [get_ports {w_ach.AWID[0]}]
set_input_delay -clock clk  0.6  [get_ports {w_ach.AWADDR[31]}]
set_input_delay -clock clk  0.6  [get_ports {w_ach.AWADDR[30]}]
set_input_delay -clock clk  0.6  [get_ports {w_ach.AWADDR[29]}]
set_input_delay -clock clk  0.6  [get_ports {w_ach.AWADDR[28]}]
set_input_delay -clock clk  0.6  [get_ports {w_ach.AWADDR[27]}]
set_input_delay -clock clk  0.6  [get_ports {w_ach.AWADDR[26]}]
set_input_delay -clock clk  0.6  [get_ports {w_ach.AWADDR[25]}]
set_input_delay -clock clk  0.6  [get_ports {w_ach.AWADDR[24]}]
set_input_delay -clock clk  0.6  [get_ports {w_ach.AWADDR[23]}]
set_input_delay -clock clk  0.6  [get_ports {w_ach.AWADDR[22]}]
set_input_delay -clock clk  0.6  [get_ports {w_ach.AWADDR[21]}]
set_input_delay -clock clk  0.6  [get_ports {w_ach.AWADDR[20]}]
set_input_delay -clock clk  0.6  [get_ports {w_ach.AWADDR[19]}]
set_input_delay -clock clk  0.6  [get_ports {w_ach.AWADDR[18]}]
set_input_delay -clock clk  0.6  [get_ports {w_ach.AWADDR[17]}]
set_input_delay -clock clk  0.6  [get_ports {w_ach.AWADDR[16]}]
set_input_delay -clock clk  0.6  [get_ports {w_ach.AWADDR[15]}]
set_input_delay -clock clk  0.6  [get_ports {w_ach.AWADDR[14]}]
set_input_delay -clock clk  0.6  [get_ports {w_ach.AWADDR[13]}]
set_input_delay -clock clk  0.6  [get_ports {w_ach.AWADDR[12]}]
set_input_delay -clock clk  0.6  [get_ports {w_ach.AWADDR[11]}]
set_input_delay -clock clk  0.6  [get_ports {w_ach.AWADDR[10]}]
set_input_delay -clock clk  0.6  [get_ports {w_ach.AWADDR[9]}]
set_input_delay -clock clk  0.6  [get_ports {w_ach.AWADDR[8]}]
set_input_delay -clock clk  0.6  [get_ports {w_ach.AWADDR[7]}]
set_input_delay -clock clk  0.6  [get_ports {w_ach.AWADDR[6]}]
set_input_delay -clock clk  0.6  [get_ports {w_ach.AWADDR[5]}]
set_input_delay -clock clk  0.6  [get_ports {w_ach.AWADDR[4]}]
set_input_delay -clock clk  0.6  [get_ports {w_ach.AWADDR[3]}]
set_input_delay -clock clk  0.6  [get_ports {w_ach.AWADDR[2]}]
set_input_delay -clock clk  0.6  [get_ports {w_ach.AWADDR[1]}]
set_input_delay -clock clk  0.6  [get_ports {w_ach.AWADDR[0]}]
set_input_delay -clock clk  0.6  [get_ports {w_ach.AWLEN[3]}]
set_input_delay -clock clk  0.6  [get_ports {w_ach.AWLEN[2]}]
set_input_delay -clock clk  0.6  [get_ports {w_ach.AWLEN[1]}]
set_input_delay -clock clk  0.6  [get_ports {w_ach.AWLEN[0]}]
set_input_delay -clock clk  0.6  [get_ports {w_ach.AWSIZE[2]}]
set_input_delay -clock clk  0.6  [get_ports {w_ach.AWSIZE[1]}]
set_input_delay -clock clk  0.6  [get_ports {w_ach.AWSIZE[0]}]
set_input_delay -clock clk  0.6  [get_ports {w_ach.AWBURST[1]}]
set_input_delay -clock clk  0.6  [get_ports {w_ach.AWBURST[0]}]
set_input_delay -clock clk  0.6  [get_ports {w_ach.AWLOCK[1]}]
set_input_delay -clock clk  0.6  [get_ports {w_ach.AWLOCK[0]}]
set_input_delay -clock clk  0.6  [get_ports {w_ach.AWCACHE[1]}]
set_input_delay -clock clk  0.6  [get_ports {w_ach.AWCACHE[0]}]
set_input_delay -clock clk  0.6  [get_ports {w_ach.AWPROT[2]}]
set_input_delay -clock clk  0.6  [get_ports {w_ach.AWPROT[1]}]
set_input_delay -clock clk  0.6  [get_ports {w_ach.AWPROT[0]}]
set_input_delay -clock clk  0.6  [get_ports w_ach.AWVALID]
set_input_delay -clock clk  0.6  [get_ports {w_dch.WID[3]}]
set_input_delay -clock clk  0.6  [get_ports {w_dch.WID[2]}]
set_input_delay -clock clk  0.6  [get_ports {w_dch.WID[1]}]
set_input_delay -clock clk  0.6  [get_ports {w_dch.WID[0]}]
set_input_delay -clock clk  0.6  [get_ports {w_dch.WDATA[63]}]
set_input_delay -clock clk  0.6  [get_ports {w_dch.WDATA[62]}]
set_input_delay -clock clk  0.6  [get_ports {w_dch.WDATA[61]}]
set_input_delay -clock clk  0.6  [get_ports {w_dch.WDATA[60]}]
set_input_delay -clock clk  0.6  [get_ports {w_dch.WDATA[59]}]
set_input_delay -clock clk  0.6  [get_ports {w_dch.WDATA[58]}]
set_input_delay -clock clk  0.6  [get_ports {w_dch.WDATA[57]}]
set_input_delay -clock clk  0.6  [get_ports {w_dch.WDATA[56]}]
set_input_delay -clock clk  0.6  [get_ports {w_dch.WDATA[55]}]
set_input_delay -clock clk  0.6  [get_ports {w_dch.WDATA[54]}]
set_input_delay -clock clk  0.6  [get_ports {w_dch.WDATA[53]}]
set_input_delay -clock clk  0.6  [get_ports {w_dch.WDATA[52]}]
set_input_delay -clock clk  0.6  [get_ports {w_dch.WDATA[51]}]
set_input_delay -clock clk  0.6  [get_ports {w_dch.WDATA[50]}]
set_input_delay -clock clk  0.6  [get_ports {w_dch.WDATA[49]}]
set_input_delay -clock clk  0.6  [get_ports {w_dch.WDATA[48]}]
set_input_delay -clock clk  0.6  [get_ports {w_dch.WDATA[47]}]
set_input_delay -clock clk  0.6  [get_ports {w_dch.WDATA[46]}]
set_input_delay -clock clk  0.6  [get_ports {w_dch.WDATA[45]}]
set_input_delay -clock clk  0.6  [get_ports {w_dch.WDATA[44]}]
set_input_delay -clock clk  0.6  [get_ports {w_dch.WDATA[43]}]
set_input_delay -clock clk  0.6  [get_ports {w_dch.WDATA[42]}]
set_input_delay -clock clk  0.6  [get_ports {w_dch.WDATA[41]}]
set_input_delay -clock clk  0.6  [get_ports {w_dch.WDATA[40]}]
set_input_delay -clock clk  0.6  [get_ports {w_dch.WDATA[39]}]
set_input_delay -clock clk  0.6  [get_ports {w_dch.WDATA[38]}]
set_input_delay -clock clk  0.6  [get_ports {w_dch.WDATA[37]}]
set_input_delay -clock clk  0.6  [get_ports {w_dch.WDATA[36]}]
set_input_delay -clock clk  0.6  [get_ports {w_dch.WDATA[35]}]
set_input_delay -clock clk  0.6  [get_ports {w_dch.WDATA[34]}]
set_input_delay -clock clk  0.6  [get_ports {w_dch.WDATA[33]}]
set_input_delay -clock clk  0.6  [get_ports {w_dch.WDATA[32]}]
set_input_delay -clock clk  0.6  [get_ports {w_dch.WDATA[31]}]
set_input_delay -clock clk  0.6  [get_ports {w_dch.WDATA[30]}]
set_input_delay -clock clk  0.6  [get_ports {w_dch.WDATA[29]}]
set_input_delay -clock clk  0.6  [get_ports {w_dch.WDATA[28]}]
set_input_delay -clock clk  0.6  [get_ports {w_dch.WDATA[27]}]
set_input_delay -clock clk  0.6  [get_ports {w_dch.WDATA[26]}]
set_input_delay -clock clk  0.6  [get_ports {w_dch.WDATA[25]}]
set_input_delay -clock clk  0.6  [get_ports {w_dch.WDATA[24]}]
set_input_delay -clock clk  0.6  [get_ports {w_dch.WDATA[23]}]
set_input_delay -clock clk  0.6  [get_ports {w_dch.WDATA[22]}]
set_input_delay -clock clk  0.6  [get_ports {w_dch.WDATA[21]}]
set_input_delay -clock clk  0.6  [get_ports {w_dch.WDATA[20]}]
set_input_delay -clock clk  0.6  [get_ports {w_dch.WDATA[19]}]
set_input_delay -clock clk  0.6  [get_ports {w_dch.WDATA[18]}]
set_input_delay -clock clk  0.6  [get_ports {w_dch.WDATA[17]}]
set_input_delay -clock clk  0.6  [get_ports {w_dch.WDATA[16]}]
set_input_delay -clock clk  0.6  [get_ports {w_dch.WDATA[15]}]
set_input_delay -clock clk  0.6  [get_ports {w_dch.WDATA[14]}]
set_input_delay -clock clk  0.6  [get_ports {w_dch.WDATA[13]}]
set_input_delay -clock clk  0.6  [get_ports {w_dch.WDATA[12]}]
set_input_delay -clock clk  0.6  [get_ports {w_dch.WDATA[11]}]
set_input_delay -clock clk  0.6  [get_ports {w_dch.WDATA[10]}]
set_input_delay -clock clk  0.6  [get_ports {w_dch.WDATA[9]}]
set_input_delay -clock clk  0.6  [get_ports {w_dch.WDATA[8]}]
set_input_delay -clock clk  0.6  [get_ports {w_dch.WDATA[7]}]
set_input_delay -clock clk  0.6  [get_ports {w_dch.WDATA[6]}]
set_input_delay -clock clk  0.6  [get_ports {w_dch.WDATA[5]}]
set_input_delay -clock clk  0.6  [get_ports {w_dch.WDATA[4]}]
set_input_delay -clock clk  0.6  [get_ports {w_dch.WDATA[3]}]
set_input_delay -clock clk  0.6  [get_ports {w_dch.WDATA[2]}]
set_input_delay -clock clk  0.6  [get_ports {w_dch.WDATA[1]}]
set_input_delay -clock clk  0.6  [get_ports {w_dch.WDATA[0]}]
set_input_delay -clock clk  0.6  [get_ports w_dch.WLAST]
set_input_delay -clock clk  0.6  [get_ports w_dch.WVALID]
set_input_delay -clock clk  0.6  [get_ports w_rspch.BREADY]
set_input_delay -clock clk  0.6  [get_ports {memif_swchaddr.f0_rdata[35]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchaddr.f0_rdata[34]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchaddr.f0_rdata[33]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchaddr.f0_rdata[32]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchaddr.f0_rdata[31]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchaddr.f0_rdata[30]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchaddr.f0_rdata[29]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchaddr.f0_rdata[28]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchaddr.f0_rdata[27]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchaddr.f0_rdata[26]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchaddr.f0_rdata[25]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchaddr.f0_rdata[24]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchaddr.f0_rdata[23]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchaddr.f0_rdata[22]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchaddr.f0_rdata[21]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchaddr.f0_rdata[20]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchaddr.f0_rdata[19]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchaddr.f0_rdata[18]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchaddr.f0_rdata[17]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchaddr.f0_rdata[16]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchaddr.f0_rdata[15]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchaddr.f0_rdata[14]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchaddr.f0_rdata[13]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchaddr.f0_rdata[12]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchaddr.f0_rdata[11]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchaddr.f0_rdata[10]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchaddr.f0_rdata[9]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchaddr.f0_rdata[8]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchaddr.f0_rdata[7]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchaddr.f0_rdata[6]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchaddr.f0_rdata[5]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchaddr.f0_rdata[4]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchaddr.f0_rdata[3]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchaddr.f0_rdata[2]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchaddr.f0_rdata[1]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchaddr.f0_rdata[0]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchdata.f0_rdata[31]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchdata.f0_rdata[30]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchdata.f0_rdata[29]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchdata.f0_rdata[28]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchdata.f0_rdata[27]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchdata.f0_rdata[26]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchdata.f0_rdata[25]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchdata.f0_rdata[24]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchdata.f0_rdata[23]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchdata.f0_rdata[22]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchdata.f0_rdata[21]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchdata.f0_rdata[20]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchdata.f0_rdata[19]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchdata.f0_rdata[18]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchdata.f0_rdata[17]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchdata.f0_rdata[16]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchdata.f0_rdata[15]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchdata.f0_rdata[14]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchdata.f0_rdata[13]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchdata.f0_rdata[12]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchdata.f0_rdata[11]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchdata.f0_rdata[10]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchdata.f0_rdata[9]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchdata.f0_rdata[8]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchdata.f0_rdata[7]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchdata.f0_rdata[6]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchdata.f0_rdata[5]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchdata.f0_rdata[4]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchdata.f0_rdata[3]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchdata.f0_rdata[2]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchdata.f0_rdata[1]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchdata.f0_rdata[0]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchrsp.f0_rdata[5]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchrsp.f0_rdata[4]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchrsp.f0_rdata[3]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchrsp.f0_rdata[2]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchrsp.f0_rdata[1]}]
set_input_delay -clock clk  0.6  [get_ports {memif_swchrsp.f0_rdata[0]}]
set_output_delay -clock clk  0.3  [get_ports w_ach.AWREADY]
set_output_delay -clock clk  0.3  [get_ports w_dch.WREADY]
set_output_delay -clock clk  0.3  [get_ports {w_rspch.BID[3]}]
set_output_delay -clock clk  0.3  [get_ports {w_rspch.BID[2]}]
set_output_delay -clock clk  0.3  [get_ports {w_rspch.BID[1]}]
set_output_delay -clock clk  0.3  [get_ports {w_rspch.BID[0]}]
set_output_delay -clock clk  0.3  [get_ports {w_rspch.BRESP[1]}]
set_output_delay -clock clk  0.3  [get_ports {w_rspch.BRESP[0]}]
set_output_delay -clock clk  0.3  [get_ports w_rspch.BUSER]
set_output_delay -clock clk  0.3  [get_ports w_rspch.BVALID]
set_output_delay -clock clk  0.3  [get_ports {reg_write_data[63]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_data[62]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_data[61]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_data[60]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_data[59]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_data[58]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_data[57]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_data[56]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_data[55]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_data[54]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_data[53]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_data[52]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_data[51]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_data[50]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_data[49]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_data[48]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_data[47]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_data[46]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_data[45]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_data[44]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_data[43]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_data[42]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_data[41]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_data[40]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_data[39]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_data[38]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_data[37]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_data[36]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_data[35]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_data[34]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_data[33]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_data[32]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_data[31]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_data[30]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_data[29]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_data[28]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_data[27]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_data[26]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_data[25]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_data[24]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_data[23]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_data[22]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_data[21]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_data[20]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_data[19]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_data[18]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_data[17]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_data[16]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_data[15]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_data[14]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_data[13]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_data[12]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_data[11]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_data[10]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_data[9]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_data[8]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_data[7]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_data[6]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_data[5]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_data[4]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_data[3]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_data[2]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_data[1]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_data[0]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_addr[31]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_addr[30]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_addr[29]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_addr[28]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_addr[27]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_addr[26]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_addr[25]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_addr[24]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_addr[23]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_addr[22]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_addr[21]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_addr[20]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_addr[19]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_addr[18]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_addr[17]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_addr[16]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_addr[15]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_addr[14]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_addr[13]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_addr[12]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_addr[11]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_addr[10]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_addr[9]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_addr[8]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_addr[7]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_addr[6]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_addr[5]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_addr[4]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_addr[3]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_addr[2]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_addr[1]}]
set_output_delay -clock clk  0.3  [get_ports {reg_write_addr[0]}]
set_output_delay -clock clk  0.3  [get_ports wr_en]
set_output_delay -clock clk  0.3  [get_ports {memif_swchaddr.f0_waddr[4]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchaddr.f0_waddr[3]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchaddr.f0_waddr[2]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchaddr.f0_waddr[1]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchaddr.f0_waddr[0]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchaddr.f0_wdata[35]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchaddr.f0_wdata[34]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchaddr.f0_wdata[33]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchaddr.f0_wdata[32]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchaddr.f0_wdata[31]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchaddr.f0_wdata[30]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchaddr.f0_wdata[29]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchaddr.f0_wdata[28]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchaddr.f0_wdata[27]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchaddr.f0_wdata[26]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchaddr.f0_wdata[25]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchaddr.f0_wdata[24]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchaddr.f0_wdata[23]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchaddr.f0_wdata[22]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchaddr.f0_wdata[21]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchaddr.f0_wdata[20]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchaddr.f0_wdata[19]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchaddr.f0_wdata[18]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchaddr.f0_wdata[17]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchaddr.f0_wdata[16]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchaddr.f0_wdata[15]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchaddr.f0_wdata[14]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchaddr.f0_wdata[13]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchaddr.f0_wdata[12]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchaddr.f0_wdata[11]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchaddr.f0_wdata[10]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchaddr.f0_wdata[9]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchaddr.f0_wdata[8]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchaddr.f0_wdata[7]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchaddr.f0_wdata[6]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchaddr.f0_wdata[5]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchaddr.f0_wdata[4]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchaddr.f0_wdata[3]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchaddr.f0_wdata[2]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchaddr.f0_wdata[1]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchaddr.f0_wdata[0]}]
set_output_delay -clock clk  0.3  [get_ports memif_swchaddr.f0_write]
set_output_delay -clock clk  0.3  [get_ports {memif_swchaddr.f0_raddr[4]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchaddr.f0_raddr[3]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchaddr.f0_raddr[2]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchaddr.f0_raddr[1]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchaddr.f0_raddr[0]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchdata.f0_waddr[4]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchdata.f0_waddr[3]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchdata.f0_waddr[2]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchdata.f0_waddr[1]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchdata.f0_waddr[0]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchdata.f0_wdata[31]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchdata.f0_wdata[30]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchdata.f0_wdata[29]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchdata.f0_wdata[28]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchdata.f0_wdata[27]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchdata.f0_wdata[26]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchdata.f0_wdata[25]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchdata.f0_wdata[24]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchdata.f0_wdata[23]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchdata.f0_wdata[22]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchdata.f0_wdata[21]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchdata.f0_wdata[20]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchdata.f0_wdata[19]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchdata.f0_wdata[18]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchdata.f0_wdata[17]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchdata.f0_wdata[16]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchdata.f0_wdata[15]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchdata.f0_wdata[14]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchdata.f0_wdata[13]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchdata.f0_wdata[12]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchdata.f0_wdata[11]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchdata.f0_wdata[10]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchdata.f0_wdata[9]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchdata.f0_wdata[8]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchdata.f0_wdata[7]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchdata.f0_wdata[6]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchdata.f0_wdata[5]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchdata.f0_wdata[4]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchdata.f0_wdata[3]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchdata.f0_wdata[2]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchdata.f0_wdata[1]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchdata.f0_wdata[0]}]
set_output_delay -clock clk  0.3  [get_ports memif_swchdata.f0_write]
set_output_delay -clock clk  0.3  [get_ports {memif_swchdata.f0_raddr[4]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchdata.f0_raddr[3]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchdata.f0_raddr[2]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchdata.f0_raddr[1]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchdata.f0_raddr[0]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchrsp.f0_waddr[4]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchrsp.f0_waddr[3]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchrsp.f0_waddr[2]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchrsp.f0_waddr[1]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchrsp.f0_waddr[0]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchrsp.f0_wdata[5]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchrsp.f0_wdata[4]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchrsp.f0_wdata[3]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchrsp.f0_wdata[2]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchrsp.f0_wdata[1]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchrsp.f0_wdata[0]}]
set_output_delay -clock clk  0.3  [get_ports memif_swchrsp.f0_write]
set_output_delay -clock clk  0.3  [get_ports {memif_swchrsp.f0_raddr[4]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchrsp.f0_raddr[3]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchrsp.f0_raddr[2]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchrsp.f0_raddr[1]}]
set_output_delay -clock clk  0.3  [get_ports {memif_swchrsp.f0_raddr[0]}]
