; homez.g
; called to home the Z axis
;

M581 T0 P-1      ; Disable endstop triggers so we can zero

G91              ; relative mode
G1 H1 Z243 F3000 ; move Z towards the switch until it triggers
G1 H2 Z-5 F600   ; move Z back 5mm
G1 H1 Z10 F200   ; move Z slowly towards the switch until it triggers
G1 Z-10 F3000    ; move off the enstop 
G90              ; back to absolute mode

M581 T0 P0:1 X Y Z S1          ; Stop when endstops are reached

