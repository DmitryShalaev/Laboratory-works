$regfile = "M16def.dat"
$crystal = 4000000
$baud = 19200
Config Portc = output
Config PortB = input

Dim I as byte, V1 as single, S as byte,V2 as single
do

for I = 0 to 255

portC = I

waitms 500

S = pinb

V1 = S * 10
V1 = V1 / 255


V2 = S * 10
V2 = V2 / 255


print "Output "; V2; " Input "; V1

next

loop

End