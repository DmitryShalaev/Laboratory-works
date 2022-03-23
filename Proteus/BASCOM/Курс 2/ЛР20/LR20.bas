$regfile = "M8def.dat"
$crystal = 4000000
Config Portb = Output
do
portb = 39
waitms 500
portb = 27
waitms 500
portb = 43
waitms 500
portb = 0
waitms 1000 
loop
End