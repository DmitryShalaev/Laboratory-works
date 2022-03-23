$regfile = "M8def.dat"
$crystal = 4000000
$baud = 19200
Config Portb = input

Dim I As Byte

do
I = pinb
print "Input: " ; Bin (pinb)
Waitms 1000
loop

End