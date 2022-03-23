$regfile = "M8def.dat"
$crystal = 4000000
config portB = output, portC = output
dim I as byte

do
for I = 0 to 11

portC = I

if I = 0 then
portB = &B00000001
waitms 1000
endif

if I = 3 then
portB = &B00000010
waitms 1000
endif

if I = 6 then
portB = &B00000100
waitms 1000
endif

if I = 9 then
portB = &B00001000
waitms 1000
endif

portB = &B00000000

waitms 500

next I
loop
end