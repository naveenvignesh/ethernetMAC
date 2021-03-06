#######################################################
#                                                     #
#  Encounter Command Logging File                     #
#  Created on Sun Nov 20 16:34:35 2016                #
#                                                     #
#######################################################

#@(#)CDS: Encounter v09.14-s273_1 (32bit) 02/17/2011 18:35 (Linux 2.6)
#@(#)CDS: NanoRoute v09.14-s029 NR110207-1105/USR65-UB (database version 2.30, 112.2.1) {superthreading v1.15}
#@(#)CDS: CeltIC v09.14-s097_1 (32bit) 02/08/2011 02:24:38 (Linux 2.6.9-89.0.19.ELsmp)
#@(#)CDS: AAE 09.14-s001 (32bit) 02/17/2011 (Linux 2.6.9-89.0.19.ELsmp)
#@(#)CDS: CTE 09.14-s140_1 (32bit) Feb  8 2011 01:13:15 (Linux 2.6.9-89.0.19.ELsmp)
#@(#)CDS: CPE v09.14-s001

setUIVar rda_Input ui_gndnet gnd
setUIVar rda_Input ui_timingcon_file ../eth_core_OSU180_netlist.sdc
setUIVar rda_Input ui_leffile ../../../../lib/tsmc018/lib/osu018_stdcells.lef
setUIVar rda_Input ui_netlist ../eth_core_OSU180_netlist.v
setUIVar rda_Input ui_timelib,max ../../../../lib/tsmc018/lib/osu018_stdcells.tlf
setUIVar rda_Input ui_topcell eth_core
setUIVar rda_Input ui_pwrnet vdd
commitConfig
fit
setDrawView fplan
setDrawView ameba
setDrawView fplan
fit
fit
fit
selectObject Module tx_core
deselectAll
selectObject Module tx_core
deselectAll
setDrawView ameba
setDrawView fplan
getIoFlowFlag
setIoFlowFlag 0
floorPlan -site core -r 0.98975128508 0.699992 20.0 20.0 20.0 20.0
uiSetTool select
getIoFlowFlag
fit
addRing -spacing_bottom 0.5 -width_left 9 -width_bottom 9 -width_top 9 -spacing_top 0.5 -layer_bottom metal1 -stacked_via_top_layer metal6 -width_right 9 -around core -jog_distance 0.8 -offset_bottom 0.8 -layer_top metal1 -threshold 0.8 -offset_left 0.8 -spacing_right 0.5 -spacing_left 0.5 -offset_right 0.8 -offset_top 0.8 -layer_right metal2 -nets {gnd vdd } -stacked_via_bottom_layer metal1 -layer_left metal2
addStripe -block_ring_top_layer_limit metal3 -max_same_layer_jog_length 1.0 -padcore_ring_bottom_layer_limit metal1 -number_of_sets 15 -stacked_via_top_layer metal6 -padcore_ring_top_layer_limit metal3 -spacing 0.5 -merge_stripes_value 0.8 -layer metal2 -block_ring_bottom_layer_limit metal1 -width 5 -nets {gnd vdd } -stacked_via_bottom_layer metal1
getMultiCpuUsage -localCpu
setPlaceMode -fp false
placeDesign -prePlaceOpt
setDrawView ameba
setDrawView place
clearGlobalNets
globalNetConnect vdd -type net -net 1'b1
setDrawView ameba
setDrawView fplan
setDrawView ameba
setDrawView place
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { metal1 metal6 } -blockPinTarget { nearestRingStripe nearestTarget } -padPinPortConnect { allPort oneGeom } -checkAlignedSecondaryPin 1 -blockPin useLef -allowJogging 1 -crossoverViaBottomLayer metal1 -allowLayerChange 1 -targetViaTopLayer metal6 -crossoverViaTopLayer metal6 -targetViaBottomLayer metal1 -nets { gnd vdd }
setNanoRouteMode -routeAllowPowerGroundPin true
addCTSCellList CLKBUF1
clockDesign -genSpecOnly Clock.ctstch
clockDesign -specFile Clock.ctstch -outDir clock_report -fixedInstBeforeCTS
trialRoute -maxRouteLayer 6
setDrawView place
setNanoRouteMode -quiet -routeTopRoutingLayer default
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven false
setNanoRouteMode -quiet -routeWithSiDriven false
routeDesign -globalDetail
verifyConnectivity -type all -error 1000 -warning 50
verifyGeometry
clearClockDomains
setClockDomains -all
timeDesign -postRoute -pathReports -drvReports -slackReports -numPaths 50 -prefix eth_core_postRoute -outDir timingReports
clearClockDomains
setClockDomains -all
timeDesign -postRoute -hold -pathReports -slackReports -numPaths 50 -prefix eth_core_postRouteHold -outDir timingReports
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postRoute
optDesign -postRoute -hold
setDrawView ameba
setDrawView fplan
violationBrowser -all -no_display_false
zoomBox 1371.6 514.5 1373.6 516.5
zoomBox 1371.6 514.5 1373.6 516.5
zoomBox 1371.6 514.5 1373.6 516.5
zoomBox 1371.6 1515.5 1373.6 1517.5
zoomBox 1371.6 1515.5 1373.6 1517.5
zoomBox 1371.6 1515.5 1373.6 1517.5
zoomBox 1371.6 514.5 1373.6 516.5
zoomBox 1371.6 514.5 1373.6 516.5
zoomBox 1371.6 514.5 1373.6 516.5
zoomBox 1257.0 1578.5 1259.0 1580.5
zoomBox 1257.0 1578.5 1259.0 1580.5
zoomBox 1257.0 1578.5 1259.0 1580.5
zoomBox 1258.6 1578.5 1260.6 1580.5
zoomBox 1258.6 1578.5 1260.6 1580.5
zoomBox 1258.6 1578.5 1260.6 1580.5
zoomBox 923.4 1578.5 925.4 1580.5
zoomBox 923.4 1578.5 925.4 1580.5
zoomBox 923.4 1578.5 925.4 1580.5
zoomBox 920.2 1578.5 922.2 1580.5
zoomBox 920.2 1578.5 922.2 1580.5
zoomBox 920.2 1578.5 922.2 1580.5
zoomBox 586.6 1578.5 588.6 1580.5
zoomBox 586.6 1578.5 588.6 1580.5
zoomBox 586.6 1578.5 588.6 1580.5
selectMarker 587.1000 1579.0000 588.1000 1580.0000 2 1 2
deselectAll
selectMarker 587.1000 1579.0000 588.1000 1580.0000 2 1 2
saveDesign eth_core.enc
addMetalFill -layer { metal1 metal2 metal3 metal4 metal5 metal6 } -nets { gnd vdd } -timingAware sta -onCells
setDrawView ameba
setDrawView place
clearClockDomains
setClockDomains -all
timeDesign -postRoute -pathReports -drvReports -slackReports -numPaths 50 -prefix eth_core_postRoute -outDir timingReports
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postRoute
optDesign -postRoute -hold
set_power_analysis_mode -reset
set_power_analysis_mode -method static -corner max -create_binary_db true -write_static_currents true -honor_negative_energy true -ignore_control_signals true
set_power_output_dir -reset
set_power_output_dir ./
set_default_switching_activity -reset
set_default_switching_activity -input_activity 0.2 -period 10.0
read_activity_file -reset
read_activity_file -format VCD -vcd_scope {} -start {} -end {} -vcd_block {} ../../../tb/mac_core.vcd
set_power -reset
set_powerup_analysis -reset
set_powerup_analysis -mode accurate -ultrasim_simulation_mode ms
set_dynamic_power_simulation -reset
report_power -rail_analysis_format VS -outfile .//eth_core.rpt
saveDesign eth_core.enc
