$regfile = "M8def.dat"
$crystal = 4000000
Config Portc = output
Config PortB = output
Dim I as byte
do

portb.2 = 1
portb.3 = 0

for I = 0 to 15
portb.0 = 1
waitms 500
portb.0 = 0
waitms 500

next

waitms 500

portc = 255
portb.2 = 0
portb.2 = 1
portb.3 = 0

for I = 0 to 15
portb.1 = 1
waitms 500
portb.1 = 0
waitms 500

next

loop

End