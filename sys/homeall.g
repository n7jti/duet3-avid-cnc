; homeall.g
; called to home all axes
;

G91                 ; relative mode
G1 H1 Z243 F3000    ; move Z towards the switch until it triggers
G1 H2 Z-4 F600      ; move Z back 5mm
G1 H1 Z10           ; move Z slowly towards the switch until it triggers

G1 H1 X-788 Y-997 F3000 ; move up to 240mm in the -X and -Y directions until the homing switches are triggered
G1 H2 X4 Y4 F600    ; move slowly 6mm in +X and +Y directions
G1 H1 X-10 Y-10     ; move up to 10mm in the -X and -Y directions until the homing switches are triggered

G90 ; back to absolute mode


