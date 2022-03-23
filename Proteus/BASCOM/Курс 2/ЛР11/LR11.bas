$regfile = "M8def.dat"
$crystal = 4000000
$baud = 19200
Config PortC.0 = output
Config PortC.1 = output
portC.0 = 1
do
portC.1 = 1
portC.1 = 0
waitms 500
loop
End