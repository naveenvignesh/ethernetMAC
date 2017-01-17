###################################################################

# Created by write_sdc on Sun Nov  6 01:40:59 2016

###################################################################
set sdc_version 2.0

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current uA
create_clock [get_ports clks.clk]  -name clk  -period 3  -waveform {0 1.5}
set_clock_uncertainty 0.25  [get_clocks clk]
set_input_delay -clock clk  0.6  [get_ports dready]
set_input_delay -clock clk  0.6  [get_ports {datain[63]}]
set_input_delay -clock clk  0.6  [get_ports {datain[62]}]
set_input_delay -clock clk  0.6  [get_ports {datain[61]}]
set_input_delay -clock clk  0.6  [get_ports {datain[60]}]
set_input_delay -clock clk  0.6  [get_ports {datain[59]}]
set_input_delay -clock clk  0.6  [get_ports {datain[58]}]
set_input_delay -clock clk  0.6  [get_ports {datain[57]}]
set_input_delay -clock clk  0.6  [get_ports {datain[56]}]
set_input_delay -clock clk  0.6  [get_ports {datain[55]}]
set_input_delay -clock clk  0.6  [get_ports {datain[54]}]
set_input_delay -clock clk  0.6  [get_ports {datain[53]}]
set_input_delay -clock clk  0.6  [get_ports {datain[52]}]
set_input_delay -clock clk  0.6  [get_ports {datain[51]}]
set_input_delay -clock clk  0.6  [get_ports {datain[50]}]
set_input_delay -clock clk  0.6  [get_ports {datain[49]}]
set_input_delay -clock clk  0.6  [get_ports {datain[48]}]
set_input_delay -clock clk  0.6  [get_ports {datain[47]}]
set_input_delay -clock clk  0.6  [get_ports {datain[46]}]
set_input_delay -clock clk  0.6  [get_ports {datain[45]}]
set_input_delay -clock clk  0.6  [get_ports {datain[44]}]
set_input_delay -clock clk  0.6  [get_ports {datain[43]}]
set_input_delay -clock clk  0.6  [get_ports {datain[42]}]
set_input_delay -clock clk  0.6  [get_ports {datain[41]}]
set_input_delay -clock clk  0.6  [get_ports {datain[40]}]
set_input_delay -clock clk  0.6  [get_ports {datain[39]}]
set_input_delay -clock clk  0.6  [get_ports {datain[38]}]
set_input_delay -clock clk  0.6  [get_ports {datain[37]}]
set_input_delay -clock clk  0.6  [get_ports {datain[36]}]
set_input_delay -clock clk  0.6  [get_ports {datain[35]}]
set_input_delay -clock clk  0.6  [get_ports {datain[34]}]
set_input_delay -clock clk  0.6  [get_ports {datain[33]}]
set_input_delay -clock clk  0.6  [get_ports {datain[32]}]
set_input_delay -clock clk  0.6  [get_ports {datain[31]}]
set_input_delay -clock clk  0.6  [get_ports {datain[30]}]
set_input_delay -clock clk  0.6  [get_ports {datain[29]}]
set_input_delay -clock clk  0.6  [get_ports {datain[28]}]
set_input_delay -clock clk  0.6  [get_ports {datain[27]}]
set_input_delay -clock clk  0.6  [get_ports {datain[26]}]
set_input_delay -clock clk  0.6  [get_ports {datain[25]}]
set_input_delay -clock clk  0.6  [get_ports {datain[24]}]
set_input_delay -clock clk  0.6  [get_ports {datain[23]}]
set_input_delay -clock clk  0.6  [get_ports {datain[22]}]
set_input_delay -clock clk  0.6  [get_ports {datain[21]}]
set_input_delay -clock clk  0.6  [get_ports {datain[20]}]
set_input_delay -clock clk  0.6  [get_ports {datain[19]}]
set_input_delay -clock clk  0.6  [get_ports {datain[18]}]
set_input_delay -clock clk  0.6  [get_ports {datain[17]}]
set_input_delay -clock clk  0.6  [get_ports {datain[16]}]
set_input_delay -clock clk  0.6  [get_ports {datain[15]}]
set_input_delay -clock clk  0.6  [get_ports {datain[14]}]
set_input_delay -clock clk  0.6  [get_ports {datain[13]}]
set_input_delay -clock clk  0.6  [get_ports {datain[12]}]
set_input_delay -clock clk  0.6  [get_ports {datain[11]}]
set_input_delay -clock clk  0.6  [get_ports {datain[10]}]
set_input_delay -clock clk  0.6  [get_ports {datain[9]}]
set_input_delay -clock clk  0.6  [get_ports {datain[8]}]
set_input_delay -clock clk  0.6  [get_ports {datain[7]}]
set_input_delay -clock clk  0.6  [get_ports {datain[6]}]
set_input_delay -clock clk  0.6  [get_ports {datain[5]}]
set_input_delay -clock clk  0.6  [get_ports {datain[4]}]
set_input_delay -clock clk  0.6  [get_ports {datain[3]}]
set_input_delay -clock clk  0.6  [get_ports {datain[2]}]
set_input_delay -clock clk  0.6  [get_ports {datain[1]}]
set_input_delay -clock clk  0.6  [get_ports {datain[0]}]
set_input_delay -clock clk  0.6  [get_ports {ctrl_wd[7]}]
set_input_delay -clock clk  0.6  [get_ports {ctrl_wd[6]}]
set_input_delay -clock clk  0.6  [get_ports {ctrl_wd[5]}]
set_input_delay -clock clk  0.6  [get_ports {ctrl_wd[4]}]
set_input_delay -clock clk  0.6  [get_ports {ctrl_wd[3]}]
set_input_delay -clock clk  0.6  [get_ports {ctrl_wd[2]}]
set_input_delay -clock clk  0.6  [get_ports {ctrl_wd[1]}]
set_input_delay -clock clk  0.6  [get_ports {ctrl_wd[0]}]
set_input_delay -clock clk  0.6  [get_ports {bvalid[7]}]
set_input_delay -clock clk  0.6  [get_ports {bvalid[6]}]
set_input_delay -clock clk  0.6  [get_ports {bvalid[5]}]
set_input_delay -clock clk  0.6  [get_ports {bvalid[4]}]
set_input_delay -clock clk  0.6  [get_ports {bvalid[3]}]
set_input_delay -clock clk  0.6  [get_ports {bvalid[2]}]
set_input_delay -clock clk  0.6  [get_ports {bvalid[1]}]
set_input_delay -clock clk  0.6  [get_ports {bvalid[0]}]
set_output_delay -clock clk  0.3  [get_ports data_vld]
set_output_delay -clock clk  0.3  [get_ports crc_vld_2d]
set_output_delay -clock clk  0.3  [get_ports {data_out[63]}]
set_output_delay -clock clk  0.3  [get_ports {data_out[62]}]
set_output_delay -clock clk  0.3  [get_ports {data_out[61]}]
set_output_delay -clock clk  0.3  [get_ports {data_out[60]}]
set_output_delay -clock clk  0.3  [get_ports {data_out[59]}]
set_output_delay -clock clk  0.3  [get_ports {data_out[58]}]
set_output_delay -clock clk  0.3  [get_ports {data_out[57]}]
set_output_delay -clock clk  0.3  [get_ports {data_out[56]}]
set_output_delay -clock clk  0.3  [get_ports {data_out[55]}]
set_output_delay -clock clk  0.3  [get_ports {data_out[54]}]
set_output_delay -clock clk  0.3  [get_ports {data_out[53]}]
set_output_delay -clock clk  0.3  [get_ports {data_out[52]}]
set_output_delay -clock clk  0.3  [get_ports {data_out[51]}]
set_output_delay -clock clk  0.3  [get_ports {data_out[50]}]
set_output_delay -clock clk  0.3  [get_ports {data_out[49]}]
set_output_delay -clock clk  0.3  [get_ports {data_out[48]}]
set_output_delay -clock clk  0.3  [get_ports {data_out[47]}]
set_output_delay -clock clk  0.3  [get_ports {data_out[46]}]
set_output_delay -clock clk  0.3  [get_ports {data_out[45]}]
set_output_delay -clock clk  0.3  [get_ports {data_out[44]}]
set_output_delay -clock clk  0.3  [get_ports {data_out[43]}]
set_output_delay -clock clk  0.3  [get_ports {data_out[42]}]
set_output_delay -clock clk  0.3  [get_ports {data_out[41]}]
set_output_delay -clock clk  0.3  [get_ports {data_out[40]}]
set_output_delay -clock clk  0.3  [get_ports {data_out[39]}]
set_output_delay -clock clk  0.3  [get_ports {data_out[38]}]
set_output_delay -clock clk  0.3  [get_ports {data_out[37]}]
set_output_delay -clock clk  0.3  [get_ports {data_out[36]}]
set_output_delay -clock clk  0.3  [get_ports {data_out[35]}]
set_output_delay -clock clk  0.3  [get_ports {data_out[34]}]
set_output_delay -clock clk  0.3  [get_ports {data_out[33]}]
set_output_delay -clock clk  0.3  [get_ports {data_out[32]}]
set_output_delay -clock clk  0.3  [get_ports {data_out[31]}]
set_output_delay -clock clk  0.3  [get_ports {data_out[30]}]
set_output_delay -clock clk  0.3  [get_ports {data_out[29]}]
set_output_delay -clock clk  0.3  [get_ports {data_out[28]}]
set_output_delay -clock clk  0.3  [get_ports {data_out[27]}]
set_output_delay -clock clk  0.3  [get_ports {data_out[26]}]
set_output_delay -clock clk  0.3  [get_ports {data_out[25]}]
set_output_delay -clock clk  0.3  [get_ports {data_out[24]}]
set_output_delay -clock clk  0.3  [get_ports {data_out[23]}]
set_output_delay -clock clk  0.3  [get_ports {data_out[22]}]
set_output_delay -clock clk  0.3  [get_ports {data_out[21]}]
set_output_delay -clock clk  0.3  [get_ports {data_out[20]}]
set_output_delay -clock clk  0.3  [get_ports {data_out[19]}]
set_output_delay -clock clk  0.3  [get_ports {data_out[18]}]
set_output_delay -clock clk  0.3  [get_ports {data_out[17]}]
set_output_delay -clock clk  0.3  [get_ports {data_out[16]}]
set_output_delay -clock clk  0.3  [get_ports {data_out[15]}]
set_output_delay -clock clk  0.3  [get_ports {data_out[14]}]
set_output_delay -clock clk  0.3  [get_ports {data_out[13]}]
set_output_delay -clock clk  0.3  [get_ports {data_out[12]}]
set_output_delay -clock clk  0.3  [get_ports {data_out[11]}]
set_output_delay -clock clk  0.3  [get_ports {data_out[10]}]
set_output_delay -clock clk  0.3  [get_ports {data_out[9]}]
set_output_delay -clock clk  0.3  [get_ports {data_out[8]}]
set_output_delay -clock clk  0.3  [get_ports {data_out[7]}]
set_output_delay -clock clk  0.3  [get_ports {data_out[6]}]
set_output_delay -clock clk  0.3  [get_ports {data_out[5]}]
set_output_delay -clock clk  0.3  [get_ports {data_out[4]}]
set_output_delay -clock clk  0.3  [get_ports {data_out[3]}]
set_output_delay -clock clk  0.3  [get_ports {data_out[2]}]
set_output_delay -clock clk  0.3  [get_ports {data_out[1]}]
set_output_delay -clock clk  0.3  [get_ports {data_out[0]}]
set_output_delay -clock clk  0.3  [get_ports {crc_out[31]}]
set_output_delay -clock clk  0.3  [get_ports {crc_out[30]}]
set_output_delay -clock clk  0.3  [get_ports {crc_out[29]}]
set_output_delay -clock clk  0.3  [get_ports {crc_out[28]}]
set_output_delay -clock clk  0.3  [get_ports {crc_out[27]}]
set_output_delay -clock clk  0.3  [get_ports {crc_out[26]}]
set_output_delay -clock clk  0.3  [get_ports {crc_out[25]}]
set_output_delay -clock clk  0.3  [get_ports {crc_out[24]}]
set_output_delay -clock clk  0.3  [get_ports {crc_out[23]}]
set_output_delay -clock clk  0.3  [get_ports {crc_out[22]}]
set_output_delay -clock clk  0.3  [get_ports {crc_out[21]}]
set_output_delay -clock clk  0.3  [get_ports {crc_out[20]}]
set_output_delay -clock clk  0.3  [get_ports {crc_out[19]}]
set_output_delay -clock clk  0.3  [get_ports {crc_out[18]}]
set_output_delay -clock clk  0.3  [get_ports {crc_out[17]}]
set_output_delay -clock clk  0.3  [get_ports {crc_out[16]}]
set_output_delay -clock clk  0.3  [get_ports {crc_out[15]}]
set_output_delay -clock clk  0.3  [get_ports {crc_out[14]}]
set_output_delay -clock clk  0.3  [get_ports {crc_out[13]}]
set_output_delay -clock clk  0.3  [get_ports {crc_out[12]}]
set_output_delay -clock clk  0.3  [get_ports {crc_out[11]}]
set_output_delay -clock clk  0.3  [get_ports {crc_out[10]}]
set_output_delay -clock clk  0.3  [get_ports {crc_out[9]}]
set_output_delay -clock clk  0.3  [get_ports {crc_out[8]}]
set_output_delay -clock clk  0.3  [get_ports {crc_out[7]}]
set_output_delay -clock clk  0.3  [get_ports {crc_out[6]}]
set_output_delay -clock clk  0.3  [get_ports {crc_out[5]}]
set_output_delay -clock clk  0.3  [get_ports {crc_out[4]}]
set_output_delay -clock clk  0.3  [get_ports {crc_out[3]}]
set_output_delay -clock clk  0.3  [get_ports {crc_out[2]}]
set_output_delay -clock clk  0.3  [get_ports {crc_out[1]}]
set_output_delay -clock clk  0.3  [get_ports {crc_out[0]}]