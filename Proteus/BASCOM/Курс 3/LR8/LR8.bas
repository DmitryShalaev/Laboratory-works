$regfile = "M8def.dat"
$crystal = 4000000
Config Portc = output
Config PortD = output
Dim I as byte
do
portc.0 = 0
for I = 0 to 255
portd = I
waitms 250
next
portc.0 = 1
for I = 0 to 255
portd = I
waitms 250
next
loop

End