CONST ValueOfDivision = 5

CONST Shift_Y = 225
CONST Shift_X = 125

RANDOMIZE TIMER

CLS: SCREEN 12

DIM SHARED Graph(1940), CopyGraph(1220), Num0(15), Num1(15), Num2(15), Num3(15), Num4(15), Num5(15), Num6(15), Num7(15), Num8(15), Num9(15), Dot(15), StrSensor(75), StrLastC(75), StrMinC(65), StrMaxC(65), SensorData(9), SensorDataMin(9), SensorDataMax(9), ArrayOutput(9)

'StartLoading------------------------------------------------------

FOR I = 0 TO 9
    SensorDataMin(I) = ValueOfDivision * 10
    SensorDataMax(I) = 0
NEXT I

'Numbers-----------------------------------------------------------

'0
DATA 00,15,15,15,15,15,00
DATA 15,15,15,15,15,15,15
DATA 15,15,00,00,00,15,15
DATA 15,15,00,00,15,15,15
DATA 15,15,00,15,15,15,15
DATA 15,15,15,15,00,15,15
DATA 15,15,15,00,00,15,15
DATA 15,15,00,00,00,15,15
DATA 15,15,15,15,15,15,15
DATA 00,15,15,15,15,15,00

FOR I = 0 TO 9
    FOR J = 0 TO 6
        READ Num
        PSET (J, I), Num
    NEXT J
NEXT I

GET (0, 0)-(6, 9), Num0(): CLS
'1
DATA 00,00,15,15,00,00,00
DATA 00,15,15,15,00,00,00
DATA 15,15,15,15,00,00,00
DATA 15,15,15,15,00,00,00
DATA 00,00,15,15,00,00,00
DATA 00,00,15,15,00,00,00
DATA 00,00,15,15,00,00,00
DATA 00,00,15,15,00,00,00
DATA 15,15,15,15,15,15,00
DATA 15,15,15,15,15,15,00

FOR I = 0 TO 9
    FOR J = 0 TO 6
        READ Num
        PSET (J, I), Num
    NEXT J
NEXT I

GET (0, 0)-(6, 9), Num1(): CLS
'2
DATA 00,15,15,15,15,00,00
DATA 15,15,15,15,15,15,00
DATA 15,15,00,00,15,15,00
DATA 00,00,00,00,15,15,00
DATA 00,00,00,15,15,00,00
DATA 00,00,15,15,00,00,00
DATA 00,15,15,00,00,00,00
DATA 15,15,00,00,00,00,00
DATA 15,15,15,15,15,15,00
DATA 15,15,15,15,15,15,00

FOR I = 0 TO 9
    FOR J = 0 TO 6
        READ Num
        PSET (J, I), Num
    NEXT J
NEXT I

GET (0, 0)-(6, 9), Num2(): CLS
'3
DATA 00,15,15,15,15,15,00
DATA 15,15,15,15,15,15,15
DATA 15,15,00,00,00,15,15
DATA 00,00,00,00,00,15,15
DATA 00,00,00,15,15,15,00
DATA 00,00,00,15,15,15,00
DATA 00,00,00,00,00,15,15
DATA 15,15,00,00,00,15,15
DATA 15,15,15,15,15,15,15
DATA 00,15,15,15,15,15,00

FOR I = 0 TO 9
    FOR J = 0 TO 6
        READ Num
        PSET (J, I), Num
    NEXT J
NEXT I

GET (0, 0)-(6, 9), Num3(): CLS
'4
DATA 00,00,00,00,15,15,00
DATA 00,00,00,15,15,15,00
DATA 00,00,15,15,15,15,00
DATA 00,15,15,00,15,15,00
DATA 15,15,00,00,15,15,00
DATA 15,15,15,15,15,15,15
DATA 15,15,15,15,15,15,15
DATA 00,00,00,00,15,15,00
DATA 00,00,00,00,15,15,00
DATA 00,00,00,00,15,15,00

FOR I = 0 TO 9
    FOR J = 0 TO 6
        READ Num
        PSET (J, I), Num
    NEXT J
NEXT I

GET (0, 0)-(6, 9), Num4(): CLS
'5
DATA 15,15,15,15,15,15,15
DATA 15,15,15,15,15,15,15
DATA 15,15,00,00,00,00,00
DATA 15,15,15,15,15,15,00
DATA 15,15,15,15,15,15,15
DATA 00,00,00,00,00,15,15
DATA 00,00,00,00,00,15,15
DATA 15,15,00,00,00,15,15
DATA 15,15,15,15,15,15,15
DATA 00,15,15,15,15,15,00

FOR I = 0 TO 9
    FOR J = 0 TO 6
        READ Num
        PSET (J, I), Num
    NEXT J
NEXT I

GET (0, 0)-(6, 9), Num5(): CLS
'6
DATA 00,15,15,15,15,15,00
DATA 15,15,15,15,15,15,15
DATA 15,15,00,00,00,15,15
DATA 15,15,00,00,00,00,00
DATA 15,15,15,15,15,15,00
DATA 15,15,15,15,15,15,15
DATA 15,15,00,00,00,15,15
DATA 15,15,00,00,00,15,15
DATA 15,15,15,15,15,15,15
DATA 00,15,15,15,15,15,00

FOR I = 0 TO 9
    FOR J = 0 TO 6
        READ Num
        PSET (J, I), Num
    NEXT J
NEXT I

GET (0, 0)-(6, 9), Num6(): CLS
'7
DATA 15,15,15,15,15,15,15
DATA 15,15,15,15,15,15,15
DATA 00,00,00,00,00,15,15
DATA 00,00,00,00,00,15,15
DATA 00,00,00,00,15,15,00
DATA 00,00,00,15,15,00,00
DATA 00,00,15,15,00,00,00
DATA 00,00,15,15,00,00,00
DATA 00,00,15,15,00,00,00
DATA 00,00,15,15,00,00,00

FOR I = 0 TO 9
    FOR J = 0 TO 6
        READ Num
        PSET (J, I), Num
    NEXT J
NEXT I

GET (0, 0)-(6, 9), Num7(): CLS
'8
DATA 00,15,15,15,15,15,00
DATA 15,15,15,15,15,15,15
DATA 15,15,00,00,00,15,15
DATA 15,15,00,00,00,15,15
DATA 15,15,15,15,15,15,00
DATA 00,15,15,15,15,15,15
DATA 15,15,00,00,00,15,15
DATA 15,15,00,00,00,15,15
DATA 15,15,15,15,15,15,15
DATA 00,15,15,15,15,15,00

FOR I = 0 TO 9
    FOR J = 0 TO 6
        READ Num
        PSET (J, I), Num
    NEXT J
NEXT I

GET (0, 0)-(6, 9), Num8(): CLS
'9
DATA 00,15,15,15,15,15,00
DATA 15,15,15,15,15,15,15
DATA 15,15,00,00,00,15,15
DATA 15,15,00,00,00,15,15
DATA 15,15,15,15,15,15,15
DATA 00,15,15,15,15,15,15
DATA 00,00,00,00,00,15,15
DATA 15,15,00,00,00,15,15
DATA 15,15,15,15,15,15,15
DATA 00,15,15,15,15,15,00

FOR I = 0 TO 9
    FOR J = 0 TO 6
        READ Num
        PSET (J, I), Num
    NEXT J
NEXT I

GET (0, 0)-(6, 9), Num9(): CLS
'Dot
DATA 00,00,00,00,00,00,00
DATA 00,00,00,00,00,00,00
DATA 00,00,00,00,00,00,00
DATA 00,00,00,00,00,00,00
DATA 00,00,00,00,00,00,00
DATA 00,00,00,00,00,00,00
DATA 00,00,00,00,00,00,00
DATA 15,15,15,00,00,00,00
DATA 15,15,15,00,00,00,00
DATA 15,15,15,00,00,00,00

FOR I = 0 TO 9
    FOR J = 0 TO 6
        READ Char
        PSET (J, I), Char
    NEXT J
NEXT I

GET (0, 0)-(6, 9), Dot(): CLS

'EndNumbers--------------------------------------------------------
'CaptionSensor-----------------------------------------------------

DATA 00,15,15,15,15,00,00,00,15,15,15,15,15,15,00,00,15,15,00,00,15,15,00,00,00,15,15,15,15,00,00,00,00,15,15,15,15,00,00,00,15,15,15,15,15,00,00,00,00,00,00
DATA 15,15,15,15,15,15,00,00,15,15,15,15,15,15,00,00,15,15,00,00,15,15,00,00,15,15,15,15,15,15,00,00,15,15,15,15,15,15,00,00,15,15,15,15,15,15,00,00,15,15,15
DATA 15,15,00,00,15,15,00,00,15,15,00,00,00,00,00,00,15,15,00,00,15,15,00,00,15,15,00,00,15,15,00,00,15,15,00,00,15,15,00,00,15,15,00,00,15,15,00,00,15,15,15
DATA 15,15,00,00,00,00,00,00,15,15,00,00,00,00,00,00,15,15,15,00,15,15,00,00,15,15,00,00,00,00,00,00,15,15,00,00,15,15,00,00,15,15,00,00,15,15,00,00,15,15,15
DATA 15,15,15,15,15,00,00,00,15,15,15,15,15,00,00,00,15,15,15,00,15,15,00,00,15,15,15,15,15,00,00,00,15,15,00,00,15,15,00,00,15,15,15,15,15,00,00,00,00,00,00
DATA 00,15,15,15,15,15,00,00,15,15,15,15,15,00,00,00,15,15,00,15,15,15,00,00,00,15,15,15,15,15,00,00,15,15,00,00,15,15,00,00,15,15,15,15,15,15,00,00,00,00,00
DATA 00,00,00,00,15,15,00,00,15,15,00,00,00,00,00,00,15,15,00,15,15,15,00,00,00,00,00,00,15,15,00,00,15,15,00,00,15,15,00,00,15,15,00,00,15,15,00,00,15,15,15
DATA 15,15,00,00,15,15,00,00,15,15,00,00,00,00,00,00,15,15,00,00,15,15,00,00,15,15,00,00,15,15,00,00,15,15,00,00,15,15,00,00,15,15,00,00,15,15,00,00,15,15,15
DATA 15,15,15,15,15,15,00,00,15,15,15,15,15,15,00,00,15,15,00,00,15,15,00,00,15,15,15,15,15,15,00,00,15,15,15,15,15,15,00,00,15,15,00,00,15,15,00,00,15,15,15
DATA 00,15,15,15,15,00,00,00,15,15,15,15,15,15,00,00,15,15,00,00,15,15,00,00,00,15,15,15,15,00,00,00,00,15,15,15,15,00,00,00,15,15,00,00,15,15,00,00,00,00,00

FOR I = 0 TO 9
    FOR J = 0 TO 50
        READ Str
        PSET (J, I), Str
    NEXT J
NEXT I

GET (0, 0)-(50, 9), StrSensor(): CLS

'EndCaptionSensor--------------------------------------------------
'LastC-------------------------------------------------------------

DATA 15,15,00,00,00,00,00,00,00,00,15,15,00,00,00,00,00,15,15,15,15,00,00,00,15,15,15,15,15,15,00,00,00,00,15,15,15,00,00,15,15,15,15,15,00,00,00,00,00,00
DATA 15,15,00,00,00,00,00,00,00,15,15,15,15,00,00,00,15,15,15,15,15,15,00,00,15,15,15,15,15,15,00,00,00,00,15,00,15,00,15,15,15,15,15,15,15,00,00,15,15,15
DATA 15,15,00,00,00,00,00,00,15,15,15,15,15,15,00,00,15,15,00,00,15,15,00,00,00,00,15,15,00,00,00,00,00,00,15,15,15,00,15,15,00,00,00,15,15,00,00,15,15,15
DATA 15,15,00,00,00,00,00,00,15,15,00,00,15,15,00,00,15,15,00,00,00,00,00,00,00,00,15,15,00,00,00,00,00,00,00,00,00,00,15,15,00,00,00,00,00,00,00,15,15,15
DATA 15,15,00,00,00,00,00,00,15,15,00,00,15,15,00,00,15,15,15,15,15,00,00,00,00,00,15,15,00,00,00,00,00,00,00,00,00,00,15,15,00,00,00,00,00,00,00,00,00,00
DATA 15,15,00,00,00,00,00,00,15,15,15,15,15,15,00,00,00,15,15,15,15,15,00,00,00,00,15,15,00,00,00,00,00,00,00,00,00,00,15,15,00,00,00,00,00,00,00,00,00,00
DATA 15,15,00,00,00,00,00,00,15,15,15,15,15,15,00,00,00,00,00,00,15,15,00,00,00,00,15,15,00,00,00,00,00,00,00,00,00,00,15,15,00,00,00,00,00,00,00,15,15,15
DATA 15,15,00,00,00,00,00,00,15,15,00,00,15,15,00,00,15,15,00,00,15,15,00,00,00,00,15,15,00,00,00,00,00,00,00,00,00,00,15,15,00,00,00,15,15,00,00,15,15,15
DATA 15,15,15,15,15,15,00,00,15,15,00,00,15,15,00,00,15,15,15,15,15,15,00,00,00,00,15,15,00,00,00,00,00,00,00,00,00,00,15,15,15,15,15,15,15,00,00,15,15,15
DATA 15,15,15,15,15,15,00,00,15,15,00,00,15,15,00,00,00,15,15,15,15,00,00,00,00,00,15,15,00,00,00,00,00,00,00,00,00,00,00,15,15,15,15,15,00,00,00,00,00,00

FOR I = 0 TO 9
    FOR J = 0 TO 49
        READ Str
        PSET (J, I), Str
    NEXT J
NEXT I

GET (0, 0)-(49, 9), StrLastC(): CLS

'EndLastC----------------------------------------------------------
'MinC--------------------------------------------------------------

DATA 15,15,00,00,00,15,15,00,00,15,15,15,15,15,15,00,00,15,15,00,00,15,15,00,00,00,00,15,15,15,00,00,15,15,15,15,15,00,00,00,00,00,00
DATA 15,15,00,00,00,15,15,00,00,15,15,15,15,15,15,00,00,15,15,00,00,15,15,00,00,00,00,15,00,15,00,15,15,15,15,15,15,15,00,00,15,15,15
DATA 15,15,15,00,15,15,15,00,00,00,00,15,15,00,00,00,00,15,15,00,00,15,15,00,00,00,00,15,15,15,00,15,15,00,00,00,15,15,00,00,15,15,15
DATA 15,15,15,15,15,15,15,00,00,00,00,15,15,00,00,00,00,15,15,15,00,15,15,00,00,00,00,00,00,00,00,15,15,00,00,00,00,00,00,00,15,15,15
DATA 15,15,00,15,00,15,15,00,00,00,00,15,15,00,00,00,00,15,15,15,00,15,15,00,00,00,00,00,00,00,00,15,15,00,00,00,00,00,00,00,00,00,00
DATA 15,15,00,00,00,15,15,00,00,00,00,15,15,00,00,00,00,15,15,00,15,15,15,00,00,00,00,00,00,00,00,15,15,00,00,00,00,00,00,00,00,00,00
DATA 15,15,00,00,00,15,15,00,00,00,00,15,15,00,00,00,00,15,15,00,15,15,15,00,00,00,00,00,00,00,00,15,15,00,00,00,00,00,00,00,15,15,15
DATA 15,15,00,00,00,15,15,00,00,00,00,15,15,00,00,00,00,15,15,00,00,15,15,00,00,00,00,00,00,00,00,15,15,00,00,00,15,15,00,00,15,15,15
DATA 15,15,00,00,00,15,15,00,00,15,15,15,15,15,15,00,00,15,15,00,00,15,15,00,00,00,00,00,00,00,00,15,15,15,15,15,15,15,00,00,15,15,15
DATA 15,15,00,00,00,15,15,00,00,15,15,15,15,15,15,00,00,15,15,00,00,15,15,00,00,00,00,00,00,00,00,00,15,15,15,15,15,00,00,00,00,00,00

FOR I = 0 TO 9
    FOR J = 0 TO 42
        READ Str
        PSET (J, I), Str
    NEXT J
NEXT I

GET (0, 0)-(42, 9), StrMinC(): CLS

'EndMinC-----------------------------------------------------------
'MaxC--------------------------------------------------------------

DATA 15,15,00,00,00,15,15,00,00,00,00,15,15,00,00,00,00,15,15,00,00,15,15,00,00,00,00,15,15,15,00,00,15,15,15,15,15,00,00,00,00,00,00
DATA 15,15,00,00,00,15,15,00,00,00,15,15,15,15,00,00,00,15,15,00,00,15,15,00,00,00,00,15,00,15,00,15,15,15,15,15,15,15,00,00,15,15,15
DATA 15,15,15,00,15,15,15,00,00,15,15,15,15,15,15,00,00,00,15,15,15,15,00,00,00,00,00,15,15,15,00,15,15,00,00,00,15,15,00,00,15,15,15
DATA 15,15,15,15,15,15,15,00,00,15,15,00,00,15,15,00,00,00,15,15,15,15,00,00,00,00,00,00,00,00,00,15,15,00,00,00,00,00,00,00,15,15,15
DATA 15,15,00,15,00,15,15,00,00,15,15,00,00,15,15,00,00,00,00,15,15,00,00,00,00,00,00,00,00,00,00,15,15,00,00,00,00,00,00,00,00,00,00
DATA 15,15,00,00,00,15,15,00,00,15,15,15,15,15,15,00,00,00,00,15,15,00,00,00,00,00,00,00,00,00,00,15,15,00,00,00,00,00,00,00,00,00,00
DATA 15,15,00,00,00,15,15,00,00,15,15,15,15,15,15,00,00,00,15,15,15,15,00,00,00,00,00,00,00,00,00,15,15,00,00,00,00,00,00,00,15,15,15
DATA 15,15,00,00,00,15,15,00,00,15,15,00,00,15,15,00,00,00,15,15,15,15,00,00,00,00,00,00,00,00,00,15,15,00,00,00,15,15,00,00,15,15,15
DATA 15,15,00,00,00,15,15,00,00,15,15,00,00,15,15,00,00,15,15,00,00,15,15,00,00,00,00,00,00,00,00,15,15,15,15,15,15,15,00,00,15,15,15
DATA 15,15,00,00,00,15,15,00,00,15,15,00,00,15,15,00,00,15,15,00,00,15,15,00,00,00,00,00,00,00,00,00,15,15,15,15,15,00,00,00,00,00,00

FOR I = 0 TO 9
    FOR J = 0 TO 42
        READ Str
        PSET (J, I), Str
    NEXT J
NEXT I

GET (0, 0)-(42, 9), StrMaxC(): CLS

'EndMaxC-----------------------------------------------------------
'CreatingWindow----------------------------------------------------

LINE (0, 0)-(120, 120), 8, BF

'Y
LINE (5, 5)-(5, 115), 0
'Segmentation Y
FOR Y = 105 TO 15 STEP -10
    LINE (7, Y)-(3, Y), 0
NEXT Y
'Arrow Y
LINE (5, 5)-(3, 7), 0
LINE (5, 5)-(7, 7), 0

'X
LINE (5, 115)-(115, 115), 0
'Segmentation X
FOR X = 15 TO 110 STEP 10
    LINE (X, 113)-(X, 117), 0
NEXT X
'Arrow X
LINE (115, 115)-(113, 113), 0
LINE (115, 115)-(113, 117), 0

'AxisY  C
DATA 0,0,8,8,0,0,8
DATA 0,0,8,0,8,8,0
DATA 8,8,8,0,8,8,8
DATA 8,8,8,0,8,8,8
DATA 8,8,8,0,8,8,0
DATA 8,8,8,8,0,0,8

FOR Y = 1 TO 6
    FOR X = 7 TO 13
        READ AxisY
        PSET (X, Y), AxisY
    NEXT X
NEXT Y

'AxisX t
DATA 8,0,8,8
DATA 8,0,8,8
DATA 0,0,0,8
DATA 8,0,8,8
DATA 8,0,8,8
DATA 8,8,0,0

FOR Y = 107 TO 112
    FOR X = 113 TO 116
        READ AxisX
        PSET (X, Y), AxisX
    NEXT X
NEXT Y

'Copy window
GET (0, 0)-(120, 120), Graph()

CLS
'EndWindowCreation-------------------------------------------------

'EndLoading--------------------------------------------------------

'StartDrawing------------------------------------------------------

'Paste windows
Num = 1
FOR Y = 8 TO Shift_Y + 8 STEP Shift_Y
    FOR X = 9 TO 509 STEP Shift_X

        PUT (X, Y), Graph(), PSET

        PUT (X + 6, Y + 123), StrSensor(), PSET

        CALL PrintNumber(Num, X + 60, Y + 123)
        Num = Num + 1

        PUT (X + 6, Y + 140), StrLastC(), PSET

        PUT (X + 6, Y + 157), StrMinC(), PSET

        PUT (X + 6, Y + 172), StrMaxC(), PSET

    NEXT X
NEXT Y

'EndDrawing--------------------------------------------------------

'MAIN------------------------------------------------------------------------
UpdateNum = 1

DO

    SLEEP 1

    FOR I = 0 TO 9
        SensorData(I) = RND * 50 + 0.1
    NEXT I

    GOSUB GraphUpdate

    GOSUB LastC
    GOSUB MinC
    GOSUB MaxC

LOOP WHILE INKEY$ <> CHR$(27)

'END MAIN--------------------------------------------------------------------
END

LastC:

FOR I = 0 TO 9
    ArrayOutput(I) = SensorData(I)
NEXT I

DigitOutput_X = 60
DigitOutput_Y = 148

EraseLast_X = 66
EraseLast_Y = 146

GOSUB DigitOutput

RETURN

MinC:

FOR I = 0 TO 9
    IF SensorData(I) < SensorDataMin(I) THEN
        SensorDataMin(I) = SensorData(I)
    END IF
    ArrayOutput(I) = SensorDataMin(I)
NEXT I

DigitOutput_X = 53
DigitOutput_Y = 165

EraseLast_X = 60
EraseLast_Y = 162

GOSUB DigitOutput

RETURN

MaxC:

FOR I = 0 TO 9
    IF SensorData(I) > SensorDataMax(I) THEN
        SensorDataMax(I) = SensorData(I)
    END IF
    ArrayOutput(I) = SensorDataMax(I)
NEXT I

DigitOutput_X = 53
DigitOutput_Y = 180

EraseLast_X = 60
EraseLast_Y = 177

GOSUB DigitOutput

RETURN

DigitOutput:

WindowNum = 0
OutputOrder = 0

FOR I = 0 TO 1
    FOR J = 0 TO 4

        LINE (EraseLast_X + Shift_X * J, EraseLast_Y + Shift_Y * I)-(120 + Shift_X * J, EraseLast_Y + 14 + Shift_Y * I), 0, BF

        StrNumber$ = LTRIM$(STR$(ArrayOutput(WindowNum)))

        IF MID$(StrNumber$, 1, 1) = "." THEN
            Length = LEN(StrNumber$) + 1
        ELSE
            Length = LEN(StrNumber$)
        END IF

        FOR F = 1 TO Length

            IF F - 1 < 5 THEN

                OutputOrder = OutputOrder + 1

                IF MID$(StrNumber$, F, 1) = "." THEN

                    IF F = 1 THEN
                        CALL PrintNumber(0, DigitOutput_X + Shift_X * J + 8 * F, DigitOutput_Y + Shift_Y * I)
                        F = F + 1
                    END IF

                    PUT (DigitOutput_X + Shift_X * J + 8 * F, DigitOutput_Y + Shift_Y * I), Dot(), PSET
                    DotShift = 4

                ELSE

                    CALL PrintNumber(VAL(MID$(StrNumber$, OutputOrder, 1)), DigitOutput_X + Shift_X * J + 8 * F - DotShift, DigitOutput_Y + Shift_Y * I)

                END IF

            END IF

        NEXT F

        OutputOrder = 0
        DotShift = 0
        WindowNum = WindowNum + 1

    NEXT J
NEXT I

RETURN

GraphUpdate:

IF UpdateNum <= 10 THEN

    FOR I = 0 TO 9

        CALL Histogram(I, UpdateNum, SensorData(I))

    NEXT I

ELSE

    FOR Y = 0 TO 1
        FOR X = 0 TO 4

            GET (25 + Shift_X * X, 123 + Shift_Y * Y)-(115 + Shift_X * X, 23 + Shift_Y * Y), CopyGraph()

            LINE (105 + Shift_X * X, 122 + Shift_Y * Y)-(113 + Shift_X * X, 123 + Shift_Y * Y - 100), 8, BF

            PUT (15 + Shift_X * X, 23 + Shift_Y * Y), CopyGraph(), PSET

        NEXT X
    NEXT Y

    UpdateNum = UpdateNum - 1

    FOR I = 0 TO 9

        CALL Histogram(I, UpdateNum, SensorData(I))

    NEXT I

END IF

UpdateNum = UpdateNum + 1

RETURN

SUB PrintNumber (Number, DigitPosX, DigitPosY)

    SELECT CASE Number
        CASE 0
            PUT (DigitPosX, DigitPosY), Num0(), PSET
        CASE 1
            PUT (DigitPosX, DigitPosY), Num1(), PSET
        CASE 2
            PUT (DigitPosX, DigitPosY), Num2(), PSET
        CASE 3
            PUT (DigitPosX, DigitPosY), Num3(), PSET
        CASE 4
            PUT (DigitPosX, DigitPosY), Num4(), PSET
        CASE 5
            PUT (DigitPosX, DigitPosY), Num5(), PSET
        CASE 6
            PUT (DigitPosX, DigitPosY), Num6(), PSET
        CASE 7
            PUT (DigitPosX, DigitPosY), Num7(), PSET
        CASE 8
            PUT (DigitPosX, DigitPosY), Num8(), PSET
        CASE 9
            PUT (DigitPosX, DigitPosY), Num9(), PSET
        CASE 10
            PUT (DigitPosX, DigitPosY), Num1(), PSET
            PUT (DigitPosX + 7, DigitPosY), Num0(), PSET
    END SELECT

END SUB

SUB Histogram (WindowNum, HistogramX, HistogramY)

    SELECT CASE WindowNum
        CASE 0
            WindowX = 0: WindowY = 0
        CASE 1
            WindowX = 1: WindowY = 0
        CASE 2
            WindowX = 2: WindowY = 0
        CASE 3
            WindowX = 3: WindowY = 0
        CASE 4
            WindowX = 4: WindowY = 0
        CASE 5
            WindowX = 0: WindowY = 1
        CASE 6
            WindowX = 1: WindowY = 1
        CASE 7
            WindowX = 2: WindowY = 1
        CASE 8
            WindowX = 3: WindowY = 1
        CASE 9
            WindowX = 4: WindowY = 1
    END SELECT

    LINE (5 + 10 * HistogramX + Shift_X * WindowX, 122 + Shift_Y * WindowY)-(13 + 10 * HistogramX + Shift_X * WindowX, 123 + Shift_Y * WindowY - 10 / ValueOfDivision * HistogramY), 4, BF

    'X
    LINE (14 + Shift_X * WindowX, 123 + Shift_Y * WindowY)-(120 + Shift_X * WindowX, 123 + Shift_Y * WindowY), 0

    'Y
    LINE (14 + Shift_X * WindowX, 13 + Shift_Y * WindowY)-(14 + Shift_X * WindowX, 123 + Shift_Y * WindowY), 0

    FOR D = 113 TO 23 STEP -10
        LINE (16 + Shift_X * WindowX, D + Shift_Y * WindowY)-(12 + Shift_X * WindowX, D + Shift_Y * WindowY), 0
    NEXT D

END SUB
