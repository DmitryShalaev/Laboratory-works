$regfile = "M8def.dat"
$crystal = 4000000
$baud = 19200
Config Portc = output

do

portc.0 = 1
portc.1 = 0

waitms 500

portc.1 = 1
portc.0 = 0

waitms 500

portc.0 = 1
portc.1 = 1

waitms 500

portc.4 = 1
waitms 500
portc.3 = 1
portc.3 = 0
waitms 500
portc.4 = 0
waitms 500
portc.2 = 1
waitms 500
portc.3 = 1
portc.3 = 0
waitms 500
portc.2 = 0
waitms 500
loop

End