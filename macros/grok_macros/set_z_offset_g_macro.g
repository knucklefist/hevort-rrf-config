
; set_z_offset.g - Macro to calibrate Z offset for first-layer printing
G91                     ; relative positioning
G90                     ; absolute positioning
M564 H0                 ; allow moves before homing
G28                     ; home all axes
G1 X150 Y150 F3000      ; move to bed center
G30 S-1                 ; deploy BLTouch
G30                     ; probe and set Z=0
G1 Z0.2 F1000           ; apply 0.2mm offset
G92 Z0.2                ; set new Z offset
;M500                    ; save to config-override.g (commented for safety)
G1 Z5 F1000             ; lift bed to safe height
M564 H1                 ; restore homing requirement
echo "Z offset set to 0.2mm. Verify with a test print."