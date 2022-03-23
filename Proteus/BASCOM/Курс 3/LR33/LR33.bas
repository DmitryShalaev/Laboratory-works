$regfile = "m16def.dat"
$crystal = 8000000
$lib "I2C_TWI.lbx"
$baud = 9600

Dim Data_byte As Byte , Hh As Byte , Mm As Byte , Ss As Byte
Dim The_temp As Byte

Const Sec_reg = 0
Const Min_reg = 1
Const Hour_reg = 2
Const Day_reg = 3
Const Dat_reg = 4
Const Mes_reg = 5
Const God_reg = 6
Const Seting_reg = 7

Const Addressw_cl = &B11010000
Const Addressr_cl = &B11010001

Const Start_convert = &HEE
Const Read_temp = &HAA

Const Addressw_dt = &B10010010
Const Addressr_dt = &B10010011

Declare Sub Set_to_reg(byval Reg As Byte , Byval Value As Byte)
Declare Function Create_data_print(byval Reg As Byte) As Byte
Declare Function Create_data(byval Ch As Byte , Byval H As Byte , Byval L As Byte) As Byte

Config Twi = 100000
Config Sda = Portc.1
Config Scl = Portc.0

Config Lcdpin = Pin , Rs = Porta.1 , E = Porta.3 , Db4 = Porta.4 , Db5 = Porta.5 , Db6 = Porta.6 , Db7 = Porta.7
Config Lcd = 16 * 2
Config Porta.2 = Output

I2cinit
Initlcd

Cursor Off

Call Set_to_reg(seting_reg , 3)

Data_byte = Create_data(0 , 5 , 3)
Call Set_to_reg(sec_reg , Data_byte)

Data_byte = Create_data(0 , 3 , 2)
Call Set_to_reg(min_reg , Data_byte)

Data_byte = Create_data(0 , 1 , 3)
Call Set_to_reg(hour_reg , Data_byte)

Data_byte = Create_data(0 , 1 , 7)
Call Set_to_reg(day_reg , Data_byte)

Data_byte = Create_data(0 , 0 , 4)
Call Set_to_reg(mes_reg , Data_byte)

Data_byte = Create_data(0 , 1 , 9)
Call Set_to_reg(god_reg , Data_byte)

I2csend Addressw_dt , Start_convert

Do

   Wait 1

   Ss = Create_data_print(sec_reg)
   Mm = Create_data_print(min_reg)
   Hh = Create_data_print(hour_reg)

   I2csend Addressw_dt , Read_temp
   I2creceive Addressr_dt , The_temp

   Locate 1 , 1
   Lcd "Time = "
   Lcd Hex(hh)
   Lcd ":"
   Lcd Hex(mm)
   Lcd ":"
   Lcd Hex(ss)
   Locate 2 , 1
   Lcd "Temp = "
   Lcd The_temp

   Print "Time = " ; Hex(hh) ; ":" ; Hex(mm) ; ":" ; Hex(ss)
   Print "Temp = " ; The_temp
   Print "---------------"

Loop

Sub Set_to_reg(byval Reg As Byte , Byval Value As Byte)

   I2cstart
   I2cwbyte Addressw_cl
   I2cwbyte Reg
   I2cwbyte Value
   I2cstop

End Sub

Function Create_data(byval Ch As Byte , Byval H As Byte , Byval L As Byte)

   Local Tmp As Byte
   H = H * 16
   H.7 = Ch
   Tmp = H
   Tmp = Tmp Or L

   Create_data = Tmp

End Function

Function Create_data_print(byval Reg As Byte) As Byte

   Local Value As Byte
   I2cstart
   I2cwbyte Addressw_cl
   I2cwbyte Reg
   I2cstart
   I2cwbyte Addressr_cl
   I2crbyte Value , Nack
   I2cstop



   Create_data_print = Value

End Function