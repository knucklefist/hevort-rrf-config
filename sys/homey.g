
; homey.g - Called to home the Y axis
G91               ; relative positioning
G1 H1 Y-303 F3000 ; move quickly to Y axis endstop
G1 Y5 F9000       ; go back a few mm
G1 H1 Y-10 F360   ; second pass for Y
G90               ; absolute positioning
