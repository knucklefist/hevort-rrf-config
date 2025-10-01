
; homex.g - Called to home the X axis
G91               ; relative positioning
G1 H1 X-270 F3000 ; move quickly to X axis endstop
G1 X-5 F9000      ; go back a few mm
G1 H1 X-10 F360   ; second pass for X
G90               ; absolute positioning
M206 X0           ; set X origin
