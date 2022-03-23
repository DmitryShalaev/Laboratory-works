$regfile = "M8def.dat"
$crystal = 4000000
$baud = 19200
Config Portc = output
Config PortB = input
Dim I As Byte

Portc.0 = 1
Portc.1 = 1
Portc.3 = 1
Portc.4 = 1

do

For I = 0 To 15
print "Output: " ; I ; " Input: " ; Bin (pinb)
Portc.2 = 1
Portc.2 = 0
waitms 500
Next

loop

End