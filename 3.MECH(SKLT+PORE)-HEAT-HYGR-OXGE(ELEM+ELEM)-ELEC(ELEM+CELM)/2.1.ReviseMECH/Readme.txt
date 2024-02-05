For PrePos1.5.3:
1. The rebar diameter (0.0, 0.0, 1.0) and corrosion rate (0.000) need be added manually
2. The reinforcement ratio (0.71330) shall also be calculated and manually revised (0.75000).
3. Copy CELM in ELEC.dat to ELEMD in MECH.dat after the corresponding SKLT-PORE with reinforcement ratio (0.75000).
4. Revise the NODE of ELEM in MECH.dat, e.g. +10000, and add the corresponding NODE-111 from ELEC.dat (2554~).
5. Copy back the updated NODE from MECH.dat to ELEC, HEAT, HYGR, OXGE and update the corresponding NODE.