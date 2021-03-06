(**** Beginning of end.gcode ****)
(*** begin settings ****)
M109 S95 T0 (set heated-build-platform temperature)
(**** end settings ****)
(**** begin move to cooling position ****)
G1 X0 Y54 F3300.0 (move to cooling position)
(**** end move to cooling position ****)
(**** begin filament reversal ****)
M102 (Extruder on, reverse)
G04 P2000 (Wait t/1000 seconds)
M103 (Extruder off)
(**** end filament reversal ****)
M18 (Turn off steppers)
(**** begin eject ****)
M6 T0 (wait for toolhead parts (nozzle, HBP, etc) to reach temperature)
M106 (conveyor on)
G04 P9000 (wait t/1000 seconds)
M107 (conveyor off)
(**** end eject ****)
(**** begin cool for safety ****)
M104 S0 T0 (set extruder temperature)
M109 S0 T0 (set heated-build-platform temperature)
(**** end cool for safety ****)
(**** start wipe ****)
G1 X-54 Y-15.5 Z6.0 F2500.0
G1 X-54 Y15.5 Z6.0 F2500.0
(**** end wipe ****)
G1 X0 Y0 F3300.0 (move nozzle to center)
G1 X0 Y0 Z0 F3300.0 (move nozzle to origin)
(**** end of end.gcode ****)

