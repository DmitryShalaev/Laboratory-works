$regfile = "M8def.dat"
$crystal = 8000000
$baud = 19200

dim A as integer, B as integer, C as integer, D as integer, F as integer,X1 as integer,X2 as integer

do
input "A = ", A
input "B = ", B
input "C = ", C
F = B^2
D = 4*A
D = D*C
D = F - D
if D < 0 then
print "Error 404"
else
D = sqr(D)
X1 = -B + D
F = 2*A
X1 = X1 / F
X2 = -B - D
X2 = X2 / F
print "X1 = ";X1;" X2 = ";X2
endif
loop
end
