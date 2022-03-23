$regfile = "M8def.dat"
$crystal = 4000000
$baud = 19200
Config Portb.B = output
Config PortB.C = input
Dim I As Byte
Dim s As Byte
For I = 0 To 3
Portb = I
s = pinB
print s
Waitms 500

Next






End