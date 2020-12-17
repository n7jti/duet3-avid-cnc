; homey.g
; called to home the Y axis
;

M581 T0 P-1                    ; Disable endstop triggers so we can zero

G91                  ; relative mode
G1 H1 Y-997 F3000 ; move up to 240mm in the -X direction, stopping if the homing switch is triggered
G1 Y4 F600           ; move slowly 4mm in the +X direction
G1 H1 Y-10 F200      ; move slowly 10mm in the -X direction, stopping at the homing switch
G1 Y10 F3000         ; move off the endstop
G90                  ; back to absolute mode

M581 T0 P0:1 X Y Z S1          ; Stop when endstops are reached

