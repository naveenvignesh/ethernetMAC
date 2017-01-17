set power_enable_analysis TRUE
set power_analysis_mode averaged

#####################################################################
#       link design
#####################################################################
set search_path         "../../pt_syn_cg/tc240  ."
set link_library	"/apps/toshiba/sjsu/synopsys/tc240c/tc240c.db_NOMIN25 /apps/synopsys/I-2013.12-SP5/libraries/syn/dw_foundation.sldb"

read_verilog		eth_core_tc240CG_netlist.v
current_design		eth_core
link


#####################################################################
#       read SDC
#####################################################################
read_sdc ../../pt_syn_cg/tc240/eth_core_tc240CG_netlist.sdc
#set_disable_timing [get_lib_pins ssc_core_typ/*/G]


#####################################################################
#       set transition time / annotate parasitics
#####################################################################
read_parasitics		../../pt_syn_cg/tc240/eth_core.spf


#####################################################################
#       check/update/report timing
#####################################################################
check_timing
update_timing
report_timing

#####################################################################
#       read switching activity file
#####################################################################
read_saif "/home/010123386@SJSUAD.SJSU.EDU/Documents/MS_PROJECT_MEM_SEP/tb/eth_core.saif" -strip_path "ethernet_tb/tx" 
report_switching_activity -list_not_annotated

#####################################################################
#       check/update/report power
#####################################################################
check_power
update_power
report_power -hierarchy > saif.rpt

quit

