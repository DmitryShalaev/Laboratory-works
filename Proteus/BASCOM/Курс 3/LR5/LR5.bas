$regfile = "M8def.dat"
$crystal = 4000000
$baud = 19200
Config Portc = output
Config PortB = input

portc.0 = 1
portc.2 = 1

do

portc.1 = 1
portc.1 = 0
print " Input: " ; Bin (pinb)

waitms 500

loop

End