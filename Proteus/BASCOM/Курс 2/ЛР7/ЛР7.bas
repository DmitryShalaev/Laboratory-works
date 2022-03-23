$regfile = "M8def.dat"
$crystal = 4000000
$baud = 19200
Config Portb = Output
Config PortC = Output
Dim I As Byte
For I = 0 To 255
Portb = I
Waitms 100
PortC = I
Waitms 200
Next
End