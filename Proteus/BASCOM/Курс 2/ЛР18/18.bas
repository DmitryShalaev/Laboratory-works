$regfile = "M8def.dat"
$crystal = 4000000
Config Portb = Output
Dim I As integer
Dim S As integer
S = 150
do
For I = 0 To 7
Portb.I = 1
Waitms S
Portb.I = 0
Next
if S <= 50 then
S = 150
else
S = S - 50
endif
loop
End