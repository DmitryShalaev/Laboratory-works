$regfile = "M8def.dat"
$crystal = 4000000
$baud = 19200
Dim Adc_value As Integer, Volts As Single, I as byte
Config Adc =single, Prescaler = Auto, Reference = Avcc
Start Adc
Do
for I = 0 to 3
    Adc_value = Getadc(I)
    Volts = Adc_value * 5
    Volts = Volts / 1023
    print "Dat: ";I;"            ";Volts ; "V"
    waitms 500
    next
Loop
end