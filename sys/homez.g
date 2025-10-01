
; homez.g - Called to home the Z axis
G91              ; relative positioning
G1 H2 Z15 F9000  ; lift Z relative to current position to ensure clearance
G90              ; absolute positioning
G1 X100 Y125 F9000 ; go to first probe point
G30              ; home Z by probing the bed
