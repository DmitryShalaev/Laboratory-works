$regfile = "M8def.dat"
$crystal = 8000000
$lib "I2C_twi.lbx"
$baud = 19200

Dim The_temp As byte

const AddressW_1 = &B10010010
const AddressR_1 = &B10010011

const AddressW_2 = &B10010100
const AddressR_2 = &B10010101

const Start_convert = &HEE
const Read_temp = &HAA

Config Twi = 100000
Config Sda = Portc.4
Config Scl = Portc.4

Config Lcdpin = pin, Rs = PortD.2, E = PortD.3, Db4 = PortD.4, Db5 = PortD.5, Db6 = PortD.6, Db7 = PortD.7
Config Lcd = 16*2

config portb = output

I2Cinit
initlcd
cursor off

I2Csend AddressW_1, Start_convert
I2Csend AddressW_2, Start_convert

Do

I2Csend AddressW_1, Read_temp
I2Creceive AddressR_1, The_temp

if The_temp > 30 then
portb.0 = 1
else
portb.0 = 0
endif

Locate 1,1
lcd "Temp 1 = "
lcd  The_temp

I2Csend AddressW_2, Read_temp

I2Creceive AddressR_2, The_temp

if The_temp > 30 then
portb.1 = 1
else
portb.1 = 0
endif

Locate 2,1
lcd "Temp 2 = "
lcd  The_temp

wait 1

Loop