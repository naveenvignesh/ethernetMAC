set power_enable_analysis TRUE
set power_analysis_mode time_based


#####################################################################
#       link design
#####################################################################
set search_path         "../src/hdl/gate ../src/lib/snps . "
set link_library	" * core_typ.db"

read_verilog		mac.vg
current_design		mac
link


#####################################################################
#       set transition time / annotate parasitics
#####################################################################
read_sdc ../src/hdl/gate/mac.sdc
set_disable_timing [get_lib_pins ssc_core_typ/*/G]
read_parasitics		../src/annotate/mac.spef.gz


#####################################################################
#       check/update/report timing 
#####################################################################
check_timing
update_timing
report_timing

#####################################################################
#       read name mapping file
#####################################################################
source   "../src/hdl/gate/mac_ptpxmap.tcl"

#####################################################################
#       read switching activity file
#####################################################################
read_vcd -rtl "../sim/rtlvcd.dump" -strip_path "tb/macinst"

report_switching_activity -list_not_annotated -include_only sequential

#####################################################################
#       check/update/report power 
#####################################################################
check_power
set_power_analysis_options -waveform_format fsdb -waveform_output vcd
update_power 
report_power


