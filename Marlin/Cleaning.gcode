G21                         ; metric units
G28                         ; Home Position
G33                         ; Auto calibrate
M117 Cleaning               ; print to lcd
G90                         ; absolute coordinates
G28                         ; Home Position
M109 S200                   ; heat 200°C
G0 X1 Y-85.00 Z0.30 F9000   ; move in front of the printer near on dagoma initial cleaning position
G92 E0                      ; set exruder 0
G1 X40 E20 F400             ; Extrude filament along X axis 40mm long to prime and clean the nozzle
G1 X1 Y-85.00 Z0.25 F400    ; return to dagoma initial pos in linear mode
G92 E0                      ; Reset extruder to [0] zero end of cleaning run
G1 E-3 F500                 ; Retract filiment by 3 mm to reduce string effect
G28                         ; home position
M117 Printing...            ; print to lcd