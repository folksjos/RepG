(**** beginning of start.gcode ****)
(This file is for a MakerBot Thing-O-Matic)
(**** begin initialization commands ****)
G21 (set units to mm)
G90 (set positioning to absolute)
M108 R5.0 (set extruder speed)
M103 (Make sure extruder is off)
M104 S225 T0 (set extruder temperature)
M109 S110 T0 (set heated-build-platform temperature)
(**** end initialization commands ****)
(**** begin homing ****)
G162 Z F1000 (home Z axis maximum)
G161 X Y F2500 (home XY axes minimum)
M132 X Y Z A B (Recall stored home offsets for XYZAB axis)
(**** end homing ****)
(**** begin pre-wipe commands ****)
G1 X57 Y-57 Z10 F3300.0 (move to waiting position)
M6 T0 (wait for toolhead parts, nozzle, HBP, etc., to reach temperature)
G0 X52 Y-57 (Position Nozzle)
G0 Z0.4     (Position Height)
M108 R4.0  (Set Extruder Speed)
M101        (Start Extruder)
G4 P1500    (Create Anchor)
(**** end pre-wipe commands ****)
(**** end of start.gcode ****)
