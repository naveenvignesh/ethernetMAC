set power_enable_analysis TRUE
set power_analysis_mode averaged

#####################################################################
#       link design
#####################################################################
set search_path         "../../pt_syn/osu180  ."
set link_library "/home/morris/PnRhw/tsmc018/signalstorm/osu018_stdcells.db  /apps/synopsys/I-2013.12-SP5/libraries/syn/dw_foundation.sldb"

read_verilog		eth_core_OSU180_netlist.v
current_design		eth_core
link


#####################################################################
#       read SDC
#####################################################################
read_sdc ../../pt_syn/osu180/eth_core_OSU180_netlist.sdc
#set_disable_timing [get_lib_pins ssc_core_typ/*/G]


#####################################################################
#       set transition time / annotate parasitics
#####################################################################
read_parasitics		../../pt_syn/osu180/eth_core.spf


#####################################################################
#       check/update/report timing
#####################################################################
check_timing 
update_timing
report_timing

#####################################################################
#       check/update/report power 
#####################################################################
check_power
update_power
report_power -hierarchy > vf.rpt

quit

