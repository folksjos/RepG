(**** beginning of start.gcode ****)
(This file is for a MakerBot Cupcake CNC with a Heated build platform)
M104 S220 T0 (Extruder Temperature to 220 Celsius)
M109 S110 T0 (Heated Platform Temperature to 110 Celsius)
M107 (fan off)
G21 (Metric FTW)
G90 (Absolute Positioning)
G92 X0 Y0 Z0 (You are now at 0,0,0)
(You have failed me for the last time, MakerBot)
G0 Z15 (Move up for warmup)
M108 S255 (Extruder speed = max)
M6 T0 (Wait for tool to heat up)
G04 P5000 (Wait 5 seconds)
M101 (Extruder on, forward)
G04 P5000 (Wait 5 seconds)
M103 (Extruder off)
M01 (The heated build platform is heating up. Wait until after the lights have turned off for the first time, clear the test extrusion, and click yes.)
G0 Z0    (Go back to zero.)
(**** end of start.gcode ****)