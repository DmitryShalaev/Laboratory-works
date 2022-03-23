$regfile = "M16def.dat"
$crystal = 4000000
$baud = 19200
Config Portc = output

Dim I as byte
do

for I = 0 to 255

portC = I
waitms 50

next

loop

End