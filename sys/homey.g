; homey.g
; called to home the Y axis
;


G91                  ; relative mode
G1 H1 Y-997 F3000 ; move up to 240mm in the -X direction, stopping if the homing switch is triggered
G1 Y4 F600           ; move slowly 4mm in the +X direction
G1 H1 Y-10 F200           ; move slowly 10mm in the -X direction, stopping at the homing switch
G90                  ; back to absolute mode

