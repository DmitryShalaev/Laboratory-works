$regfile = "m8def.dat"
$crystal = 8000000
$baud = 9600

Config Portb = Output
Dim U As Byte , B As Integer

Do

Input "U = " , U
B = U * 255
B = B / 10
Portb = B

Loop

end