set power_enable_analysis TRUE
set power_analysis_mode averaged

#####################################################################
#       link design
#####################################################################
set search_path         "../../pt_syn/nc45  ."
set link_library   "/home/010123386@SJSUAD.SJSU.EDU/Documents/new_lib/FreePDK45/osu_soc/lib/files/gscl45nm.db /apps/synopsys/I-2013.12-SP5/libraries/syn/dw_foundation.sldb"

read_verilog		eth_core_netlist.v
current_design		eth_core
link


#####################################################################
#       read SDC
#####################################################################
read_sdc ../../pt_syn/nc45/eth_core_netlist.sdc
#set_disable_timing [get_lib_pins ssc_core_typ/*/G]


#####################################################################
#       set transition time / annotate parasitics
#####################################################################
read_parasitics		../../pt_syn/nc45/eth_core.spf


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

