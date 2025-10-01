
; homeall.g - Called to home all axes
G91                     ; relative positioning
G1 H2 Z15 F9000         ; lift bed 15mm for clearance
G1 H1 X-270 Y-303 F3000 ; move quickly to X/Y endstops
G1 X5 Y5 F600           ; go back a few mm
G1 H1 X-10 F360         ; second pass for X
G1 H1 Y-10 F360         ; second pass for Y
G90                     ; absolute positioning
G1 X100 Y125 F9000      ; move to probe point
G30                     ; home Z by probing
G1 X0 Y0 F9000          ; move to origin
M206 X0 Y0              ; set origin
