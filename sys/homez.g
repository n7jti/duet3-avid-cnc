; homez.g
; called to home the Z axis
;

G91                 ; relative mode
G1 H1 Z243 F3000  ; move Z towards the switch until it triggers
G1 H2 Z-5 F600   ; move Z back 5mm
G1 H1 Z10 F200       ; move Z slowly towards the switch until it triggers
G90              ; back to absolute mode

