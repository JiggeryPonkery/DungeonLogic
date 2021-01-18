RIGHT             = $01
LEFT              = $02
DOWN              = $04
UP                = $08
START             = $10


;            ; for 112.5 bpm, 4/4:
; C    = $0x ; $x0 = 128, whole note   
; Cs   = $1x ; $x1 = 96, half + quarter
; D    = $2x ; $x2 = 64, half note
; Eb   = $3x ; $x3 = 48, quarter + eighth    
; E    = $4x ; $x4 = 32, quarter note
; F    = $5x ; $x5 = 24  eighth + sixteenth  
; Fs   = $6x ; $x6 = 16, eighth note   
; G    = $7x ; $x7 = 12   
; Ab   = $8x ; $x8 = 8,  sixteenth note
; A    = $9x ; $x9 = 6
; Bb   = $Ax ; $xA = 4
; B    = $Bx ; $xB = 2   
; REST = $Cx ; $xC = 3
;            ; $xD = 5 
;            ; $xE = 1 
;            ; $xF = 192, whole + half

LOOP_FOREVER = $D0
LOOP_1       = $D1 ; 1 = amount of times to loop
LOOP_2       = $D2
LOOP_3       = $D3
LOOP_4       = $D4
LOOP_5       = $D5
LOOP_6       = $D6
LOOP_7       = $D7
OCTAVE_1     = $D8 ; dark_blue
OCTAVE_2     = $D9 ; light blue
OCTAVE_3     = $DA ; white
OCTAVE_4     = $DB ; yellow
OCTAVE_5     = $DC ; orange
OCTAVE_UP    = $DD
OCTAVE_DOWN  = $DE
LOOP_SWITCH  = $DF
INSTRUMENT_0 = $E0 ; gradual decay from F
INSTRUMENT_1 = $E1 ; gradual decay from C
INSTRUMENT_2 = $E2 ; gradual decay from 8
INSTRUMENT_3 = $E3 ; gradual decay from 4
INSTRUMENT_4 = $E4 ; fade from F->8->F
INSTRUMENT_5 = $E5 ; fade from C->4->B
INSTRUMENT_6 = $E6 ; fade from 8->1->8
INSTRUMENT_7 = $E7 ; hold, then decay from F
INSTRUMENT_8 = $E8 ; hold, then decay from C
INSTRUMENT_9 = $E9 ; hold, then decay from 4
INSTRUMENT_A = $EA ; fade from 8->F->8
INSTRUMENT_B = $EB ; fade from 4->C->4
INSTRUMENT_C = $EC ; decay from F with tremolo
INSTRUMENT_D = $ED ; decay from C with tremolo
INSTRUMENT_E = $EE ; fade C->4->B with tremolo
INSTRUMENT_F = $EF ; fade from 1->C->4->9->1
SCORE_GOTO   = $F0
SCORE_RETURN = $F1
VOLUME_MINUS = $F2 ; next byte is amount to subtract ($00 to $0F)
VOLUME_QRTR  = $F3
VOLUME_HALF  = $F4
DUTY_12      = $F5
DUTY_25      = $F6
DUTY_50      = $F7
SPEED_SET    = $F8
TEMPO_1      = $F9
TEMPO_2      = $FA
TEMPO_3      = $FB ; 75 bpm
TEMPO_4      = $FC ; 90 bpm
TEMPO_5      = $FD ; 99 bom
TEMPO_6      = $FE ; 112.5 bpm
END_SONG     = $FF