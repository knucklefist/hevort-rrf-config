
; set_bltouch_trigger_height.g - Macro to assist in setting BLTouch trigger height
G91                     ; relative positioning
G90                     ; absolute positioning
M564 H0                 ; allow moves before homing
G28                     ; home all axes
G1 X150 Y150 F3000      ; move to bed center for measurement access
M280 P0 S10             ; deploy BLTouch
G30                     ; probe and set Z=0
M280 P0 S90             ; stow BLTouch
G1 X150 Y150 F3000      ; return to measurement position
M564 H1                 ; restore homing requirement
echo "Probe trigger at Z=0. Raise bed (increase Z) until nozzle touches (use paper), note Z value. Update G31 Z in the config.g"