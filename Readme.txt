3 methods to simulate corrosion

1. MECH(ELEM)
Simulate mechanical behavior of corroded RC.
(corrosion rate=0.100g/cm2)
*Corrosion calculation is not time-dependent, but final state.
(Check needed-> whether 0.100g/cm2 accumulate or not with load step?)

2.MECH(SKLT+PORE)
Simulate mechanical behavior of corroded RC with time-dependent corrosion calculation.
(corrosion rate=0.10000g/cm2, 0-500 time of LOAD STEP, column23 of command line)
*Corrosion calculation IS time-dependent.

3.MECH(SKLT+PORE)-HEAT-HYGR-OXGE(ELEM+ELEM)-ELEC(ELEM+CELM)
Simulate mechanical behavior of corroded RC with time-dependent corrosion calculation.
Corrosion rate is given by OXGE (micro-cell corrosion) OR OXGE+ELEC (macro-cell corrosion).
3.1 MECH(SKLT+PORE)=Method2
3.2 MECH(SKLT+PORE)-HEAT-HYGR-OXGE(ELEM+ELEM), micro-cell corrosion (natural corrosion)
3.3 MECH(SKLT+PORE)-HEAT-HYGR-OXGE(ELEM+ELEM)-ELEC(ELEM+CELM), macro-cell corrosion (anodic protection, accelerated corrosion)
