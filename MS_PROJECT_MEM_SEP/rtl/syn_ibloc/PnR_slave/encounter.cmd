#######################################################
#                                                     #
#  Encounter Command Logging File                     #
#  Created on Tue Nov  8 20:27:41 2016                #
#                                                     #
#######################################################

#@(#)CDS: Encounter v09.14-s273_1 (32bit) 02/17/2011 18:35 (Linux 2.6)
#@(#)CDS: NanoRoute v09.14-s029 NR110207-1105/USR65-UB (database version 2.30, 112.2.1) {superthreading v1.15}
#@(#)CDS: CeltIC v09.14-s097_1 (32bit) 02/08/2011 02:24:38 (Linux 2.6.9-89.0.19.ELsmp)
#@(#)CDS: AAE 09.14-s001 (32bit) 02/17/2011 (Linux 2.6.9-89.0.19.ELsmp)
#@(#)CDS: CTE 09.14-s140_1 (32bit) Feb  8 2011 01:13:15 (Linux 2.6.9-89.0.19.ELsmp)
#@(#)CDS: CPE v09.14-s001

loadConfig ./encounter.conf
floorPlan -r 1.0 0.6 20 20 20 20
addRing -spacing_bottom 5 -width_left 5 -width_bottom 5 -width_top 5 -spacing_top 5 -layer_bottom metal5 -width_right 5 -around core -center 1 -layer_top metal5 -spacing_right 5 -spacing_left 5 -layer_right metal6 -layer_left metal6 -nets { gnd vdd }
amoebaPlace
sroute -noBlockPins -noPadRings
trialRoute
buildTimingGraph
setCteReport
report_timing -nworst  10 -net > timing.rep.1.placed
setOptMode -mediumEffort -fixDRC -addPortAsNeeded
optDesign -preCTS
initECO ./ipo1.txt
endECO
buildTimingGraph
setCteReport
report_timing -nworst  10 -net > timing.rep.2.ipo1
createClockTreeSpec -output encounter.cts -bufFootprint buf -invFootprint inv
specifyClockTree -clkfile encounter.cts
ckSynthesis -rguide cts.rguide -report report.ctsrpt -macromodel report.ctsmdl -fix_added_buffers
trialRoute -highEffort -guide cts.rguide
extractRC
reportClockTree -postRoute -localSkew -report skew.post_troute_local.ctsrpt
reportClockTree -postRoute -report report.post_troute.ctsrpt
setAnalysisMode -setup -async -skew -autoDetectClockTree
buildTimingGraph
setCteReport
report_timing -nworst  10 -net > timing.rep.3.cts
setOptMode -highEffort -fixDrc -addPortAsNeeded -incrTrialRoute -restruct -topomap
optDesign -postCTS
initECO ipo2.txt
setExtractRCMode -default -assumeMetFill
extractRC
setExtractRCMode -detail -assumeMetFill
extractRC
endECO
cleanupECO
buildTimingGraph
setCteReport
report_timing -nworst  10 -net > timing.rep.4.ipo2
addFiller -cell FILL -prefix FILL -fillBoundary
globalNetConnect vdd -type tiehi
globalNetConnect vdd -type net -net 1'b1
globalNetConnect vdd -type pgpin -pin vdd -override
globalNetConnect gnd -type tielo
globalNetConnect gnd -type net -net 1'b0
globalNetConnect gnd -type pgpin -pin gnd -override
globalDetailRoute
fit
selectObject IO_Pin {w_rspch.BID[3]}
deselectAll
selectObject IO_Pin {memif_swchrsp.f0_rdata[3]}
deselectAll
selectObject IO_Pin {w_rspch.BID[3]}
deselectAll
selectObject IO_Pin {memif_swchrsp.f0_rdata[3]}
deselectAll
selectObject IO_Pin {w_rspch.BID[3]}
deselectAll
selectPhyPin 96.1525 68.2950 96.5525 68.6950 7 {memif_swchrsp.f0_rdata[3]}
clearGlobalNets
globalNetConnect vdd -type pgpin -pin vdd -inst {}
globalNetConnect gnd -type pgpin -pin gnd -inst {}
globalNetConnect vdd -type tiehi
globalNetConnect vdd -type pgpin -pin vdd -inst {} -override
globalNetConnect gnd -type tielo
globalNetConnect gnd -type pgpin -pin gnd -inst {} -override
globalNetConnect vdd -type net -net 1'b1 -override
globalNetConnect gnd -type net -net 1'b0 -override
loadConfig ./encounter.conf
floorPlan -r 1.0 0.6 20 20 20 20
addRing -spacing_bottom 5 -width_left 5 -width_bottom 5 -width_top 5 -spacing_top 5 -layer_bottom metal5 -width_right 5 -around core -center 1 -layer_top metal5 -spacing_right 5 -spacing_left 5 -layer_right metal6 -layer_left metal6 -nets { gnd vdd }
amoebaPlace
sroute -noBlockPins -noPadRings
trialRoute
buildTimingGraph
setCteReport
report_timing -nworst  10 -net > timing.rep.1.placed
setOptMode -mediumEffort -fixDRC -addPortAsNeeded
optDesign -preCTS -drv
initECO ./ipo1.txt
endECO
buildTimingGraph
setCteReport
report_timing -nworst  10 -net > timing.rep.2.ipo1
createClockTreeSpec -output encounter.cts -bufFootprint buf -invFootprint inv
specifyClockTree -clkfile encounter.cts
ckSynthesis -rguide cts.rguide -report report.ctsrpt -macromodel report.ctsmdl -fix_added_buffers
trialRoute -highEffort -guide cts.rguide
extractRC
reportClockTree -postRoute -localSkew -report skew.post_troute_local.ctsrpt
reportClockTree -postRoute -report report.post_troute.ctsrpt
setAnalysisMode -setup -async -skew -autoDetectClockTree
buildTimingGraph
setCteReport
report_timing -nworst  10 -net > timing.rep.3.cts
setOptMode -highEffort -fixDrc -addPortAsNeeded -incrTrialRoute -restruct -topomap
optDesign -postCTS -drv
initECO ipo2.txt
setExtractRCMode -default -assumeMetFill
extractRC
setExtractRCMode -detail -assumeMetFill
extractRC
optDesign -postRoute -drv
setNanoRouteMode -envNumberFailLimit 11
loadConfig ./encounter.conf
floorPlan -r 1.0 0.6 20 20 20 20
addRing -spacing_bottom 5 -width_left 5 -width_bottom 5 -width_top 5 -spacing_top 5 -layer_bottom metal5 -width_right 5 -around core -center 1 -layer_top metal5 -spacing_right 5 -spacing_left 5 -layer_right metal6 -layer_left metal6 -nets { gnd vdd }
amoebaPlace
sroute -noBlockPins -noPadRings
trialRoute
buildTimingGraph
setCteReport
report_timing -nworst  10 -net > timing.rep.1.placed
setOptMode -mediumEffort -fixDRC -addPortAsNeeded
optDesign -preCTS -drv
initECO ./ipo1.txt
endECO
buildTimingGraph
setCteReport
report_timing -nworst  10 -net > timing.rep.2.ipo1
createClockTreeSpec -output encounter.cts -bufFootprint buf -invFootprint inv
specifyClockTree -clkfile encounter.cts
ckSynthesis -rguide cts.rguide -report report.ctsrpt -macromodel report.ctsmdl -fix_added_buffers
trialRoute -highEffort -guide cts.rguide
extractRC
reportClockTree -postRoute -localSkew -report skew.post_troute_local.ctsrpt
reportClockTree -postRoute -report report.post_troute.ctsrpt
setAnalysisMode -setup -async -skew -autoDetectClockTree
buildTimingGraph
setCteReport
report_timing -nworst  10 -net > timing.rep.3.cts
setOptMode -highEffort -fixDrc -addPortAsNeeded -incrTrialRoute -restruct -topomap
optDesign -postCTS -drv
initECO ipo2.txt
setExtractRCMode -default -assumeMetFill
extractRC
setExtractRCMode -detail -assumeMetFill
extractRC
optDesign -postRoute -drv
endECO
cleanupECO
buildTimingGraph
setCteReport
report_timing -nworst  10 -net > timing.rep.4.ipo2
addFiller -cell FILL -prefix FILL -fillBoundary
globalNetConnect vdd -type tiehi
globalNetConnect vdd -type net -net 1'b1
globalNetConnect vdd -type pgpin -pin vdd -override
globalNetConnect gnd -type tielo
globalNetConnect gnd -type net -net 1'b0
globalNetConnect gnd -type pgpin -pin gnd -override
globalDetailRoute
setExtractRCMode -detail -noReduce
extractRC
buildTimingGraph
setCteReport
report_timing -nworst  10 -net > timing.rep.5.final
streamOut final.gds2 -mapFile gds2_encounter.map -stripes 1 -units 1000 -mode ALL
saveNetlist -excludeLeafCell final.v
rcOut -spf final.dspf
verifyGeometry
verifyConnectivity -type all
setDrawView fplan
setDrawView ameba
setDrawView fplan
setDrawView place
loadConfig ./encounter.conf
floorPlan -r 1.0 0.6 20 20 20 20
addRing -spacing_bottom 5 -width_left 5 -width_bottom 5 -width_top 5 -spacing_top 5 -layer_bottom metal5 -width_right 5 -around core -center 1 -layer_top metal5 -spacing_right 5 -spacing_left 5 -layer_right metal6 -layer_left metal6 -nets { gnd vdd }
amoebaPlace
sroute -noBlockPins -noPadRings
trialRoute
buildTimingGraph
setCteReport
report_timing -nworst  10 -net > timing.rep.1.placed
setOptMode -mediumEffort -fixDRC -addPortAsNeeded
optDesign -preCTS -drv
initECO ./ipo1.txt
endECO
buildTimingGraph
setCteReport
report_timing -nworst  10 -net > timing.rep.2.ipo1
createClockTreeSpec -output encounter.cts -bufFootprint buf -invFootprint inv
specifyClockTree -clkfile encounter.cts
ckSynthesis -rguide cts.rguide -report report.ctsrpt -macromodel report.ctsmdl -fix_added_buffers
trialRoute -highEffort -guide cts.rguide
extractRC
reportClockTree -postRoute -localSkew -report skew.post_troute_local.ctsrpt
reportClockTree -postRoute -report report.post_troute.ctsrpt
setAnalysisMode -setup -async -skew -autoDetectClockTree
buildTimingGraph
setCteReport
report_timing -nworst  10 -net > timing.rep.3.cts
setOptMode -highEffort -fixDrc -addPortAsNeeded -incrTrialRoute -restruct -topomap
optDesign -postCTS -drv
initECO ipo2.txt
setExtractRCMode -default -assumeMetFill
extractRC
setExtractRCMode -detail -assumeMetFill
extractRC
endECO
cleanupECO
buildTimingGraph
setCteReport
report_timing -nworst  10 -net > timing.rep.4.ipo2
addFiller -cell FILL -prefix FILL -fillBoundary
globalNetConnect vdd -type tiehi
globalNetConnect vdd -type net -net 1'b1
globalNetConnect vdd -type pgpin -pin vdd -override
globalNetConnect gnd -type tielo
globalNetConnect gnd -type net -net 1'b0
globalNetConnect gnd -type pgpin -pin gnd -override
globalDetailRoute
optDesign -postRoute -drv
setExtractRCMode -detail -noReduce
extractRC
buildTimingGraph
setCteReport
report_timing -nworst  10 -net > timing.rep.5.final
streamOut final.gds2 -mapFile gds2_encounter.map -stripes 1 -units 1000 -mode ALL
saveNetlist -excludeLeafCell final.v
rcOut -spf final.dspf
verifyGeometry
verifyConnectivity -type all
selectWire 44.1400 0.0350 44.2100 0.3200 2 clks.clk
deselectAll
selectWire 44.1400 0.0350 44.2100 0.3200 2 clks.clk
deselectAll
selectWire 44.1400 0.0350 44.2100 0.3200 2 clks.clk
displayClockPhaseDelay -clkRouteOnly
deselectAll
selectInst {wchrsp_fifo/r_ptr_reg[4]}
deselectAll
selectInst {wchaddr_fifo/w_ptr_reg[4]}
deselectAll
selectWire 71.8800 68.4600 71.9500 82.7800 2 n504
deselectAll
selectInst {wchrsp_fifo/r_ptr_reg[4]}
deselectAll
selectInst {wchaddr_fifo/r_ptr_reg[4]}
deselectAll
selectWire 20.1400 74.4150 108.6800 74.5450 1 vdd
deselectAll
selectInst {wchaddr_fifo/r_ptr_reg[4]}
deselectAll
selectInst {wchaddr_fifo/r_ptr_reg[4]}
deselectAll
selectInst {wchaddr_fifo/w_ptr_reg[4]}
deselectAll
selectInst {wchaddr_fifo/w_ptr_reg[2]}
deselectAll
selectInst {wchaddr_fifo/r_ptr_reg[3]}
deselectAll
selectInst {wchaddr_fifo/r_ptr_reg[2]}
deselectAll
selectWire 20.1400 57.1250 108.6800 57.2550 1 gnd
deselectAll
selectInst {burst_addr_d_reg[30]}
deselectAll
selectInst {wchrsp_fifo/r_ptr_reg[1]}
set_power_analysis_mode -reset
set_power_analysis_mode -method static -corner max -create_binary_db true -write_static_currents true -honor_negative_energy true -ignore_control_signals true
set_power_output_dir -reset
set_power_output_dir ./
set_default_switching_activity -reset
set_default_switching_activity -input_activity 0.2 -period 10.0
read_activity_file -reset
set_power -reset
set_powerup_analysis -reset
set_powerup_analysis -mode accurate -ultrasim_simulation_mode ms
set_dynamic_power_simulation -reset
report_power -rail_analysis_format VS -outfile .//AXI_slave.rpt
saveDesign AXI_slave.enc
