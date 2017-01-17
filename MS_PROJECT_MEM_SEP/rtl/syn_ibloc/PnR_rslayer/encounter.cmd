#######################################################
#                                                     #
#  Encounter Command Logging File                     #
#  Created on Tue Nov  8 22:13:18 2016                #
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
