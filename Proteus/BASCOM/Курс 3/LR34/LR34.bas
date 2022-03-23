$regfile "m16def.dat"
$crystal = 8000000

Config Portc = Output , Porta = Input

Portc = &B00011000

Do

If Pina.0 = 1 Then

Portc.0 = Not Pinc.0

Waitms 500
While Pina.0 = 1
Wend

Elseif Pina.1 = 1 Then

Portc.1 = Not Pinc.1

Waitms 500
While Pina.1 = 1
Wend

Elseif Pina.2 = 1 Then

Portc.2 = Not Pinc.2
Portc.3 = Not Pinc.3

Waitms 500
While Pina.2 = 1
Wend

Elseif Pina.3 = 1 Then

Portc.4 = Not Pinc.4
Portc.5 = Not Pinc.5

Waitms 500
While Pina.3 = 1
Wend

End If

Loop