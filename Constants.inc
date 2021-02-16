RIGHT      = $01 ; joypad directions
LEFT       = $02
DOWN       = $04
UP         = $08

LR         = $06 ; for attribute ORAing
LL         = $04
UR         = $02
UL         = $00

BLANK      = $3B ; blank tile

LOOP       = $00 ; one-byte music data
VOL        = $01
OCTAVE     = $02
INST       = $02
ENV_POS    = $03
ENV_SPEED  = $04
ENVELOPE   = $05 
VIBRATO    = $06
VIBRATO_SAFE = $07
FREQ       = $08 ; two-byte music data
LENGTH     = $0A
M_POINTER  = $0C
M_RETURN   = $0E

SQUARE1    = $C0
SQUARE2    = $D0
TRIANGLE   = $E0
NOISE      = $F0


; C    = $0x ; $x0 = 2/1
; Cs   = $1x ; $x1 = 1.5/1
; D    = $2x ; $x2 = 1/1
; Eb   = $3x ; $x3 = 1/2 dotted
; E    = $4x ; $x4 = 1/2
; F    = $5x ; $x5 = 1/4 dotted
; Fs   = $6x ; $x6 = 1/2 triplet
; G    = $7x ; $x7 = 1/4
; Ab   = $8x ; $x8 = 1/8 dotted
; A    = $9x ; $x9 = 1/4 triplet
; Bb   = $Ax ; $xA = 1/8
; B    = $Bx ; $xB = 1/8 triplet
; REST = $Cx ; $xC = 1/16
;            ; $xD = 1/16 triplet
;            ; $xE = 1/32 
;            ; $xF = 1 frame 

LOOP_FOREVER = $D0
LOOP_1       = $D1 ; amount of times to loop
LOOP_2       = $D2
LOOP_3       = $D3
LOOP_4       = $D4
LOOP_5       = $D5
LOOP_6       = $D6
LOOP_7       = $D7
LOOP_8       = $D8
LOOP_9       = $D9
LOOP_10      = $DA
LOOP_11      = $DB
LOOP_12      = $DC
LOOP_13      = $DD
LOOP_14      = $DE
LOOP_SWITCH  = $DF

INSTRUMENT   = $E0 ; followed by instrument #
OCTAVE_1     = $E1 ; dark_blue
OCTAVE_2     = $E2 ; light blue
OCTAVE_3     = $E3 ; white
OCTAVE_4     = $E4 ; yellow
OCTAVE_5     = $E5 ; orange
OCTAVE_6     = $E6 ; red

SCORE_GOTO   = $F0
SCORE_RETURN = $F1
SPEED        = $F2 ; followed by speed # 
TEMPO        = $F3 ; followed by tempo # in high bits
END_SONG     = $FF