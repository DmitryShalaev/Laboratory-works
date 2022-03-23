$regfile = "M16def.dat"
$crystal = 8000000

Config PortA.0 = output, PortA.1 = output, PortA.2 = output, PortA.3 = output
config PortA.4 = input, PortA.5 = input, PortA.6 = input
config portc = output

dim I as byte, J as byte, A as byte

declare sub Key(byval J as byte, byval I as byte)

PortA.4 = 1
PortA.5 = 1
PortA.6 = 1

do

for I = 0 to 3
porta.I = 0
for J = 4 to 6
if pina.J = 0 then call Key(J,I)
next J
porta.I = 1
next I

loop


sub Key(byval J as byte, byval I as byte)

if I = 0 then A = 1
if I = 1 then A = 4
if I = 2 then A = 7

A = A + J
A = A - 4

if I = 3 then A = 0

print A

    SELECT CASE A
        CASE 0
            portc = &b00111111
        CASE 1
            portc = &b00000110
        CASE 2
            portc = &b01011011
        CASE 3
            portc = &b01001111
        CASE 4
            portc = &b01100110
        CASE 5
            portc = &b01101101
        CASE 6
            portc = &b01111100
        CASE 7
            portc = &b00000111
        CASE 8
            portc = &b01111111
        CASE 9
            portc = &b01100111
    END SELECT

end sub
