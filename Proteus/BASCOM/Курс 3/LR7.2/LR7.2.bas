$regfile = "M8def.dat"
$crystal = 4000000
$baud = 19200
Config Portc = output
Config PortB = input
Dim I as byte
do

for I = 0 to 7

portc = I
print "Output: " ; pinc.1 ; pinc.0; pinc.2; " Input: " ; pinb.0; pinb.1

waitms 500

next


loop

End