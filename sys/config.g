; Configuration file for Duet WiFi (firmware version 3)
; executed by the firmware on start-up
;
; generated by RepRapFirmware Configuration Tool v3.1.8 on Mon Nov 23 2020 08:08:52 GMT-0800 (Pacific Standard Time)

; General preferences
G90                            ; send absolute coordinates...
M83                            ; ...but relative extruder moves
M550 P"avid_cnc"               ; set printer name
M669 K0                        ; select Cartesian Mode

; Network
M552 S1                        ; enable network
M586 P0 S1                     ; enable HTTP
M586 P1 S0                     ; disable FTP
M586 P2 S0                     ; disable Telnet

; Drives
M569 P0 S1                     ; physical drive 0 goes forwards
M569 P1 S1                     ; physical drive 1 goes forwards
M569 P2 S1                     ; physical drive 2 goes forwards
M569 P3 S1                     ; physical drive 3 goes forwards
M584 X0 Y1:2 Z3                ; set drive mapping
M350 X16 Y16 Z16 I1            ; configure microstepping with interpolation
M92 X251.9685 Y251.9685 Z251.9685      ; set steps per mm


M566 X900.00 Y900.00 Z60.00    ; set maximum instantaneous speed changes (mm/min)
M203 X2500.0 Y2500.00 Z1000.0   ; set maximum speeds (mm/min)
M201 X500.00 Y500.00 Z250.00    ; set accelerations (mm/s^2)
M906 X1200 Y1200 Z1200 I30     ; set motor currents (mA) and motor idle factor in per cent
M84 S30                        ; Set idle timeout

; Axis Limits
M208 X0 Y0 Z0 S1               ; set axis minima
M208 X635 Y935 Z178 S0         ; set axis maxima

; Endstops
M574 X1 S3                     ; configure sensorless endstop for low end on X
M574 Y1 S3                     ; configure sensorless endstop for low end on Y
M574 Z1 S1 P"^!io1.in"         ; configure sensorless endstop for low end on Z

; Z-Probe
; M558 K0 P5 C"^!io1.in" H100 F120 T6000     ; disable Z probe but set dive height, probe speed and travel speed
; M557 X15:215 Y15:195 S20       ; define mesh grid


; Heaters
M140 H-1                       ; disable heated bed (overrides default heater mapping)

; Fans
M950 F0 C"!out4+^out4.tach" Q2500  ; create fan 0 on pin fan0 and set its frequency
M106 P0 S0 H-1                 ; set fan 0 value. Thermostatic control is turned off

; Dust Collection
M950 P0 C"out2"                ; Create GPIO pin on out2 for dust collection

; Tools
M563 P0 D0 F0                  ; define tool 0
G10 P0 X0 Y0 Z0                ; set tool 0 axis offsets
G10 P0 R0 S0                   ; set initial tool 0 active and standby temperatures to 0C

; Set CNC mode
M453 S0 C"out1" R1             ; turn on CNC mode and set out1 as spindle control

; Custom settings are not defined

; Miscellaneous
T0                             ; select first tool

; Allow movement on non-homed axes -- Remove this when endstops arrive 
M564 S0 H0

