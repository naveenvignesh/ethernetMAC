#######################################################
#                                                     #
#  Encounter Command Logging File                     #
#  Created on Fri Nov  4 00:34:27 2016                #
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
getIoFlowFlag
setIoFlowFlag 0
floorPlan -site core -r 0.99849148768 0.699995 40.0 40.0 40.0 40.0
uiSetTool select
getIoFlowFlag
fit
addRing -spacing_bottom 0.5 -width_left 19 -width_bottom 19 -width_top 19 -spacing_top 0.5 -layer_bottom metal1 -stacked_via_top_layer metal6 -width_right 19 -around core -jog_distance 0.8 -offset_bottom 0.8 -layer_top metal1 -threshold 0.8 -offset_left 0.8 -spacing_right 0.5 -spacing_left 0.5 -offset_right 0.8 -offset_top 0.8 -layer_right metal2 -nets {gnd vdd } -stacked_via_bottom_layer metal1 -layer_left metal2
addStripe -block_ring_top_layer_limit metal3 -max_same_layer_jog_length 1.0 -padcore_ring_bottom_layer_limit metal1 -number_of_sets 20 -stacked_via_top_layer metal6 -padcore_ring_top_layer_limit metal3 -spacing 0.5 -merge_stripes_value 0.8 -layer metal2 -block_ring_bottom_layer_limit metal1 -width 10 -nets {gnd vdd } -stacked_via_bottom_layer metal1
getMultiCpuUsage -localCpu
setPlaceMode -fp false
placeDesign -prePlaceOpt
setDrawView ameba
setDrawView place
clearGlobalNets
globalNetConnect vdd -type net -net 1'b1
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { metal1 metal6 } -blockPinTarget { nearestRingStripe nearestTarget } -padPinPortConnect { allPort oneGeom } -checkAlignedSecondaryPin 1 -blockPin useLef -allowJogging 1 -crossoverViaBottomLayer metal1 -allowLayerChange 1 -targetViaTopLayer metal6 -crossoverViaTopLayer metal6 -targetViaBottomLayer metal1 -nets { gnd vdd }
setNanoRouteMode -routeAllowPowerGroundPin true
addCTSCellList CLKBUF1
clockDesign -genSpecOnly Clock.ctstch
clockDesign -specFile Clock.ctstch -outDir clock_report -fixedInstBeforeCTS
undo
redo
undo
analyzeFloorplan -cong -timing -effort medium
redraw
selectMarker 862.3000 584.0000 863.3000 585.0000 1 1 2
deselectAll
selectMarker 862.3000 584.0000 863.3000 585.0000 1 1 2
violationBrowser -all -no_display_false
redo
undo
