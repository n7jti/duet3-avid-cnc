; homex.g
; called to home the X axis
;
G91 ; relative mode
G1 H1 X-789 F3000     ; move up to 240mm in the -X direction, stopping if the homing switch is triggered
G1 X4 F600               ; move slowly 4mm in the +X direction
G1 H1 X-10               ; move slowly 10mm in the -X direction, stopping at the homing switch
G90                      ; back to absolute mode

