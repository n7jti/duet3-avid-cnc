; homex.g
; called to home the X axis
;

M581 T0 P-1                    ; Disable endstop triggers so we can zero

G91 ; relative mode
G1 H1 X-789 F3000     ; move up to 240mm in the -X direction, stopping if the homing switch is triggered
G1 X4 F600               ; move slowly 4mm in the +X direction
G1 H1 X-10               ; move slowly 10mm in the -X direction, stopping at the homing switch
G1 X10 F3000             ; move away 10mm in the x direction to un-trigger the endstop
G90                      ; back to absolute mode

M581 T0 P0:1 X Y Z S1          ; Stop when endstops are reached
