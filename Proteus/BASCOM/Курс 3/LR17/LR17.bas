$regfile = "M16def.dat"
$crystal = 8000000
Config portb = output,porta = output
Dim I as byte

portb.7 = 0
portb.4 = 0
porta.2 = 0

do

porta.7 = 1
porta.6 = 1
porta.5 = 0
porta.4 = 1

waitms 500

porta.7 = 0
porta.6 = 0
porta.5 = 0
porta.4 = 0

porta.3 = 1
porta.3 = 0

portb.6 = 1
for I = 0 to 2
waitms 500
portb.5 = 1
portb.5 = 0
next

porta.3 = 1
porta.3 = 0

waitms 500

portb.6 = 0
for I = 0 to 3
waitms 500
portb.5 = 1
portb.5 = 0
next

waitms 500

porta.3 = 1
porta.3 = 0

portb.6 = 1
waitms 500
portb.5 = 1
portb.5 = 0

waitms 500

porta.3 = 1
porta.3 = 0

portb.6 = 0
for I = 0 to 3
waitms 500
portb.5 = 1
portb.5 = 0
next

porta.3 = 1
porta.3 = 0

loop

End