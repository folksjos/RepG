(**** TOM Utility - Extrude for 50s ****)
(**** beginning of start.gcode ****)
(This file is for a MakerBot Thing-O-Matic)
(**** begin initialization commands ****)
G21 (set units to mm)
G90 (set positioning to absolute)
M108 T0 R1.98 (set extruder speed)
M103 T0 (Make sure extruder is off)
M104 S225 T0 (set extruder temperature)
M6 T0 (wait for toolhead parts, nozzle, HBP, etc., to reach temperature)
M101 T0 (Extruder on, forward)
G04 P50000 (Wait t/1000 seconds)
M103 T0 (Extruder off)
(**** begin cool for safety ****)
M104 S0 T0 (set extruder temperature)

M108 T1 R1.98 (set extruder speed)
M103 T1 (Make sure extruder is off)
M104 S225 T1 (set extruder temperature)
M6 T1 (wait for toolhead parts, nozzle, HBP, etc., to reach temperature)
M101 T1 (Extruder on, forward)
G04 P50000 (Wait t/1000 seconds)
M103 T1 (Extruder off)
(**** begin cool for safety ****)
M104 S0 T1 (set extruder temperature)
(**** end cool for safety ****)
(**** end of end.gcode ****)