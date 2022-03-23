$regfile = "M8def.dat"
$crystal = 4000000
$baud = 19200
Config Portb = input
Config PortC = output
Dim I As Byte
do

I = pinB
portC = I
print I
loop
End