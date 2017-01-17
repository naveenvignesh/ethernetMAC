set power_enable_analysis TRUE
set power_analysis_mode averaged


#####################################################################
#       link design
#####################################################################
set search_path         "../../pt_syn_cg/osu180  ."
set link_library "/home/morris/PnRhw/tsmc018/signalstorm/osu018_stdcells.db  /apps/synopsys/I-2013.12-SP5/libraries/syn/dw_foundation.sldb"

read_verilog		eth_core_OSU180CG_netlist.v
current_design		eth_core
link


#####################################################################
#       set transition time / annotate parasitics
#####################################################################
read_parasitics		../../pt_syn_cg/osu180/eth_core.spf


#####################################################################
#       check/update/report timing 
#####################################################################
check_timing
update_timing
report_timing

#####################################################################
#       read switching activity file
#####################################################################
read_vcd "/home/010123386@SJSUAD.SJSU.EDU/Documents/MS_PROJECT_MEM_SEP/tb/mac_core.vcd" -strip_path "ethernet_tb/tx"

#####################################################################
#       check/update/report power 
#####################################################################
check_power
update_power
report_power  > vcd.rpt

quit

