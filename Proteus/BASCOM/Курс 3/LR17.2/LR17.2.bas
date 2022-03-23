$regfile = "M16def.dat"
$crystal = 8000000
$baud = 19200
Config portb = output, portc = output, porta = input
Dim I as byte ,S as byte

do
for S = 1 to 254
print S
portc = S
waitms 50
portb.1 = 0
portb.1 = 1
portc = 0
for I=0 to 7
print "Iter: "; I; "  Input: "; Pina.0
waitms 50
portb.0 = 0
portb.0 = 1
next
next



loop

End