$regfile = "M16def.dat"
$crystal = 4000000
$baud = 19200

Config PortC = output, PORTA = input

dim PA as byte, PB as integer, A as integer, I as byte, B as single

do

for I=0 to 15

portC = I

waitms 10

PA = pina
PB = pinB

PB = PB and 15
PB = PB * 256

A = PA + PB

B = A * 10
B = B / 4095
B = B - 4.95

print B

waitms 250

next

loop

End