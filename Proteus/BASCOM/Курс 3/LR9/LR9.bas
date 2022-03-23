$regfile = "M16def.dat"
$crystal = 8000000
$baud = 19200
Config Porta = input
Config PortB.0 = input, portb.1 = input, portb.2 = input, portb.3 = input
Config PortB.4 = output, PortB.5 = output, PortB.6 = output, PortB.7 = output
Config PortC.0 = output

Dim PA as byte, PB as integer, A as integer, I as byte, B as single

do

for I = 0 to 13

portb = I * 16

PortC.0 = 1
PortC.0 = 0
PortC.0 = 1
PortC.0 = 0

PA = pina
PB = pinB

PB = PB and 15
PB = PB * 256

A = PA + PB

B = A * 10
B = B / 4095
B = Round(B)

print "Output: "; I;  " Input: " ; B

waitms 500

next

loop

End