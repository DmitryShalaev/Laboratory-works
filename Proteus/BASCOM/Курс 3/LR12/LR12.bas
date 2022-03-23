$regfile = "M16def.dat"
$crystal = 4000000
$baud = 19200
Config PortD.2 = output, Portc = output, PortA = output
Config PortB = input

Dim A as byte, B as byte
do

input "Number A ", A
input "Number B ", B

portc = A
portA = B

waitms 500

portD.2 = 1

print "A - B "; pinb

waitms 500

portD.2 = 0

print "A + B "; pinb

loop

End