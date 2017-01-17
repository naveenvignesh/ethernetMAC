###############################################################
#  Generated by:      Cadence Encounter 09.14-s273_1
#  OS:                Linux x86_64(Host ID coe-ee-cad45.sjsuad.sjsu.edu)
#  Generated on:      Fri Dec  2 18:06:32 2016
#  Command:           createClockTreeSpec -output encounter.cts -bufFootprin...
###############################################################
#
# Encounter(R) Clock Synthesis Technology File Format
#

#-- MacroModel --
#MacroModel pin <pin> <maxRiseDelay> <minRiseDelay> <maxFallDelay> <minFallDelay> <inputCap>

#-- Special Route Type --
#RouteTypeName specialRoute
#TopPreferredLayer 4
#BottomPreferredLayer 3
#PreferredExtraSpace 1
#End

#-- Regular Route Type --
#RouteTypeName regularRoute
#TopPreferredLayer 4
#BottomPreferredLayer 3
#PreferredExtraSpace 1
#End

#-- Clock Group --
#ClkGroup
#+ <clockName>


#------------------------------------------------------------
# Clock Root   : clks.clk
# Clock Name   : clk
# Clock Period : 1.5ns
#------------------------------------------------------------
AutoCTSRootPin clks.clk
Period         1.5ns
MaxDelay       0.01ns # sdc driven default
MinDelay       0ns # sdc driven default
MaxSkew        60ps # sdc driven default
SinkMaxTran    200ps # sdc driven default
BufMaxTran     200ps # sdc driven default
Buffer         INVX8 INVX4
NoGating       NO
DetailReport   YES
#SetDPinAsSync  NO
#SetIoPinAsSync NO
#SetASyncSRPinAsSync  NO
#SetTriStEnPinAsSync NO
#SetBBoxPinAsSync NO
RouteClkNet    YES
PostOpt        YES
OptAddBuffer   YES
#RouteType      specialRoute
#LeafRouteType  regularRoute
END

