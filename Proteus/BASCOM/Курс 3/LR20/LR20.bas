$regfile = "M16def.dat"
$crystal = 8000000

config porta.0 = input, porta.2 = input
config portc = output, portD = output

config Lcdpin = pin, Rs = Portb.0, E = Portb.2, Db4 = PortB.3, Db5 = Portb.4, Db6 = Portb.5, Db7 = Portb.6
config Lcd = 16*2
config portb.1 = output

initlcd
cursor off

porta.0 = 1
porta.2 = 1

Dim Number as byte

Number = 1 : portc = &b00000110
lcd "Number = 1 "

declare sub Num(Number as byte)

do

if pina.0 = 0  then

   incr Number

   if Number = 10 then Number = 0

   call Num(Number)

   waitms 250

endif

if pina.2 = 0  then

   decr Number

   if Number = -1 then Number = 9

   call Num(Number)

   waitms 250

endif

loop

End

sub Num(Number as byte)

   portD = Number

   locate 1,1
   lcd "Number = "
   lcd Number

 SELECT CASE Number
      CASE 0 : portc = &b00111111
      CASE 1 : portc = &b00000110
      CASE 2 : portc = &b01011011
      CASE 3 : portc = &b01001111
      CASE 4 : portc = &b01100110
      CASE 5 : portc = &b01101101
      CASE 6 : portc = &b01111100
      CASE 7 : portc = &b00000111
      CASE 8 : portc = &b01111111
      CASE 9 : portc = &b01100111
   END SELECT

end sub