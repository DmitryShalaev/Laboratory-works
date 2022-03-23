$regfile = "M8def.dat"
$crystal = 4000000
$baud = 19200
Config Portb = input
Config PortC = output
Dim I As Byte

do
For I = 0 To 3
Portc = I
print "Input: " ; Bin (pinb) ; " Output: " ; Bin (I)
Waitms 500

Next
loop

End