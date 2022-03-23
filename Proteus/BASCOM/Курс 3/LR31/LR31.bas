$regfile = "m8def.dat"
$crystal = 4000000
$baud = 19200

Dim Adc_value As Integer
Dim Volts As Single

config Lcdpin = pin, Rs = PortD.2, E = PortD.3, Db4 = PortD.4, Db5 = PortD.5, Db6 = PortD.6, Db7 = PortD.7                                                      
config Lcd = 16*2

initlcd
cursor off

Config Adc = single, Prescaler = Auto, Reference = Avcc
Start Adc

Config Portb = Output

Do

Adc_value = Getadc(0)

Volts= Adc_value * 5
Volts = Volts / 1024

locate 1,1
lcd "V= "
lcd Volts

Adc_value = Adc_value And &B1111111100
Adc_value = Adc_value / 4

Portb = Adc_value

Waitms 500

Loop

end