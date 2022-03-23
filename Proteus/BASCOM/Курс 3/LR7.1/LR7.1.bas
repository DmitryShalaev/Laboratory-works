$regfile = "M8def.dat"
$crystal = 4000000
$baud = 19200
Config Portc = output
Config PortB = input
Dim I as byte
do

for I = 0 to 3

portc = I
print "Output: " ; pinC.1; pinC.0  ; " Input: " ; pinb.0; pinb.1
waitms 500

next

loop

End