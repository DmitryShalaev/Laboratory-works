$regfile = "M128def.dat"
$crystal = 8000000
$baud = 19200
Config portA = input, portD = output, portb = output,portc = output ,portf = output
Dim I as byte

portf.0 =1
portf.7 =1

do

for I = 1 to 255
   portb.0 = 1
   portb.0 = 0
   waitms 50
   print pinA
   portD = I
next

portf.0 =0
portf.7 =0

for I = 1 to 7
   portc = I
   waitms 500
next
portf.0 =1
portf.7 =1
loop

End