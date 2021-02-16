.include "Constants.inc"
.include "variables.inc"
.feature force_range
.segment "BANK_00"

.export Music
.export PUZZLE_CHR


PUZZLE_CHR:
.incbin "Puzzle.chr"

ScoreTable:
.word SONG1_SQ1
.word SONG1_SQ2
.word SONG1_TRI

.word SONG2_SQ1
.word SONG2_SQ2
.word SONG2_TRI

.word SONG3_SQ1
.word SONG3_SQ2
.word SONG3_TRI

.word SONG4_SQ1
.word SONG4_SQ2
.word SONG4_TRI

.word SONG5_SQ1
.word SONG5_SQ2
.word SONG5_TRI

.word SONG6_SQ1
.word SONG6_SQ2
.word SONG6_TRI


SONG1_SQ1:
SONG1_SQ2:
SONG1_TRI:

SONG2_SQ1:
SONG2_SQ2:
SONG2_TRI:

SONG3_SQ1:
SONG3_SQ2:
SONG3_TRI:

SONG4_SQ1:
SONG4_SQ2:
SONG4_TRI:

SONG5_SQ1:
SONG5_SQ2:
SONG5_TRI:

SONG6_SQ1:
SONG6_SQ2:
SONG6_TRI:











NewSong:
    AND #$7F
    STA music_track
    SEC
    SBC #1

    LDX #$50
    LDY #0
   @ClearChannels:
    STY channels, X
    DEX
    BPL @ClearChannels

    LDY #$30
    STY $4000
    STY $4004
    STY $4008
    STY $400C

    ASL A
    CLC
    ADC music_track
    SEC
    SBC #1
    ASL A
    TAX
    LDA ScoreTable, X
    STA sq1_pointer
    LDA ScoreTable+1, X
    STA sq1_pointer+1
    LDA ScoreTable+2, X
    STA sq2_pointer
    LDA ScoreTable+3, X
    STA sq2_pointer+1
    LDA ScoreTable+4, X
    STA tri_pointer
    LDA ScoreTable+5, X
    STA tri_pointer+1

    LDA #01
    STA sq1_length
    STA sq2_length
    STA tri_length

    LDA #0
    STA sq1_length+1
    STA sq2_length+1
    STA tri_length+1    

    JSR UpdateScore_Sq1
    JSR UpdateScore_Sq2
    JSR UpdateScore_Tri

    LDA #$1F
    STA $4015        ; enable all audio
    RTS

EndSong:
    LDA #$70
    STA $4000
    STA $4004
    STA $4008
    STA $400C
    RTS

Music:
    LDA music_track
    BEQ EndSong
    BPL Play
    JMP NewSong      ; if high bit is set, start a new song

Play:
    LDA #$1F
    STA $4015        ; enable all audio

   @Square1:
    LDA sq1_freq+1
    BMI :+

    STA $4003
    ORA #$80
    STA sq1_freq+1

  : LDY sq1_freq
    STY $4002
    LDA sq1_vol
    ORA #$30          ; set constant length counter and volume
    STA $4000
    LDA #$3F
    STA $4001         ; no sweep

   @Square2:
    LDA sq2_freq+1
    BMI :+

    LDY sq2_freq
    STY $4006
    STA $4007
    ORA #$80
    STA sq2_freq+1

  : LDA sq2_vol
    ORA #$30          ; set constant length counter and volume
    STA $4004
    LDA #$3F
    STA $4005         ; no sweep

   @Triangle:
    LDA tri_freq+1
    BMI :+

    LDY tri_freq
    STY $400A
    STA $400B

    LDA #$8F          ; keep linear counter audible
    BNE @SetTriangleVolume

  : AND #$80          ; or else silence the triangle
   @SetTriangleVolume:
    STA $4008

    LDA tri_vol
    BMI @HushTriangle ; if high bit set, hush; else raise volume back to normal

    LDA DPCM
    BEQ @UpdateScore  ; skip if its 0

    DEC DPCM          ; else, its not 0, so subtract 1
    JMP :+

   @HushTriangle:
    LDA DPCM
    CMP #$7F          ; will be $7F if DPCM is at max volume
    BEQ @UpdateScore
    INC DPCM          ; if not, increase its volume (hushing the triangle)
  : LDA DPCM
    STA $4011

   @UpdateScore: 
    JSR UpdateScore_Sq1
    JSR UpdateScore_Sq2
    JMP UpdateScore_Tri


UpdateScore_Sq1:
    LDX #SQUARE1
    BNE UpdateChannel

UpdateScore_Sq2:
    LDX #SQUARE2
    BNE UpdateChannel

UpdateScore_Tri:
    LDX #TRIANGLE

UpdateChannel:
    STX channel
    LDA M_POINTER, X
    STA score
    LDA M_POINTER+1, X
    STA score+1

   @NoteLength:
    DEC LENGTH, X
    BEQ @CheckHighLength
    LDA LENGTH, X
    CMP #$FF
    BNE @EnvelopeSpeed
        LDA LENGTH+1, X
        BEQ @EnvelopeSpeed  ; don't decrement if its at 0
        DEC LENGTH+1, X
        JMP @EnvelopeSpeed
      
   @CheckHighLength:
    LDA LENGTH+1, X
    BNE @EnvelopeSpeed      ; if high btye is not 0, then keep going

    JSR UpdateScore         ; else, low and high = 0, so get the next note
   
   @EnvelopeSpeed:
    DEC ENVELOPE, X
    BNE @Vibrato
    
    ; and get the next byte of volume+duty stuff
    
   @UpdateEnvelope: 
    LDA INST, X   
    AND #$1F
    ASL A
    TAY
    LDA InstrumentTable, Y
    STA instrument
    LDA InstrumentTable+1, Y
    STA instrument+1
    
    LDY ENV_POS, X
    LDA (instrument), Y
    CMP #$FF            ; $FF = return to start of instrument
    BEQ @LoopEnvelope
    CMP #$FE            ; $FE = make no changes, but set Envelope to $FE
    BEQ @LongTime
    STA VOL, X          ; else, its a good volume+duty byte
    INC ENV_POS, X

    LDA ENV_SPEED, X
   @LongTime:  
    STA ENVELOPE, X     ; and reset the envelope length
 
   @Vibrato: 
    LDA VOL, X
    AND #$30
    BNE @DoVibrato
   
   @Next:
    RTS
    
   @LoopEnvelope:  
    STA ENV_POS, X      ; save as $FF
    INC ENV_POS, X      ; then increment to $00
    BEQ @UpdateEnvelope   

   @DoVibrato:
    LSR A
    LSR A
    LSR A
    LSR A
    STA vibrato_speed 
    DEC vibrato_speed ; 0 = every frame, 1 = every 2 frames, 2 = every 4 frames
    BEQ @StartVibrato
    
    LDA vibrato_speed
    CMP #01
    BNE :+
    
    LDA gametime
    AND #$01
    CMP vibrato_speed
    BNE @Next
    BEQ @StartVibrato
    
  : LDA gametime
    AND #$03
    CMP vibrato_speed
    BNE @Next
    
   @StartVibrato: 
    LDA VIBRATO_SAFE, X
    STA safezone
    
    LDA VIBRATO, X
    BMI @Lower
    
   @Higher: 
    AND #$0F
    CMP VIBRATO_SAFE, x
    BEQ @Reverse
   
    INC VIBRATO, X
    INC FREQ, X
    RTS    
   
   @Lower:
    LDA safezone
    EOR #$0F
    STA safezone
    INC safezone
    
    LDA VIBRATO, X
    AND #$0F
    CMP safezone
    BEQ @Reverse
   
    SEC
    SBC #1
    ORA #$80
    STA VIBRATO, X
    DEC FREQ, X   
    RTS
   
   @Reverse:    
    LDA VIBRATO, X
    EOR #$80
    STA VIBRATO, X
    RTS
    
UpdateScore_Increment:
    CLC
    ADC score
    STA score
    LDA score+1
    ADC #0
    STA score+1
    
UpdateScore:
    LDY #0
    LDA (score), Y
    CMP #$C0                
    BCS Control_Codes       
       JMP Music_Note        
    
Control_Codes:
    CMP #LOOP_FOREVER       ; if below, its a rest
    BCS :+
        JMP Music_Rest

  : CMP #LOOP_SWITCH        ; if below, its a standard loop
    BCS :+
        JMP Music_LoopCode
  
  : CMP #LOOP_SWITCH
    BNE :+
        JMP Music_LoopSwitch
  
  : CMP #INSTRUMENT
    BNE :+
        JMP Music_SetInstrument
        
  : CMP #SCORE_GOTO         ; if below, its an octave select
    BCS :+
        JMP Music_SetOctave

  : BNE :+
        JMP Music_GOTO
        
  : CMP #SCORE_RETURN
    BNE :+
        JMP Music_RETURN
        
  : CMP #SPEED
    BNE :+
        JMP Music_SetEnvSpeed
   
  : CMP #TEMPO
    BNE :+
        JMP Music_SetTempo

    ;; eles, it's $FF, or something unexpected : End the song
  : LDA #$00          
    STA music_track   
    RTS               
    
    
Music_LoopCode:
    AND #$0F
    BEQ ResumeLoop
    
    STA music_loop
    LDA LOOP, X
    AND #$0F
    BEQ @StartLoop
    
    DEC LOOP, X
    LDA LOOP, X
    AND #$0F
    BNE ResumeLoop
    
   @StartLoop:
    LDA LOOP, X
    ORA music_loop
    STA LOOP, X
    
    
ResumeLoop:
    INY
    LDA (score), Y
    STA M_POINTER, X
    PHA
    INY
    LDA (score), Y
    STA M_POINTER+1, X
    STA score+1
    PLA
    STA score
    JMP UpdateScore


Music_LoopSwitch:
    LDA LOOP, X
    AND #$80
    BEQ @StartLoop
    
    LDA LOOP, X
    AND #$7F
    STA LOOP, X
    DEC LOOP, X
    JMP ResumeLoop
    
   @StartLoop:
    LDA LOOP, X
    ORA #$80
    STA LOOP, X
    LDA #03
    JMP UpdateScore_Increment
    
    
Music_GOTO:
    LDA M_POINTER, X
    CLC
    ADC #3
    STA M_RETURN, X        
    LDA M_POINTER, X    
    ADC #0
    STA M_POINTER+1, X
    JMP ResumeLoop          


Music_RETURN:
    LDA M_RETURN, X    
    STA M_POINTER, X   
    STA score
    LDA M_RETURN+1, X  
    STA M_POINTER+1, X 
    STA score+1     
    JMP UpdateScore


Music_SetTempo:
    INY
    LDA (score), Y
    ASL A
    ASL A
    ASL A
    ASL A
    STA tempo
    LDA #02
    JMP UpdateScore_Increment
    
    
Music_SetInstrument:
    INY
    LDA (score), Y
    STA m_tmp
    LDA INST, X
    AND #$E0
    ORA m_tmp
    STA INST, X
    LDA #02
    JMP UpdateScore_Increment


Music_SetEnvSpeed:
    INY
    LDA (score), Y
    STA ENV_SPEED, X
    LDA #02
    JMP UpdateScore_Increment


Music_SetOctave:
    AND #$0F
    SEC
    SBC #1
    ASL A
    ASL A
    ASL A
    ASL A
    ASL A
    STA m_tmp
    LDA OCTAVE, X
    AND #$1F
    ORA m_tmp
    STA OCTAVE, X
    LDA #01
    JMP UpdateScore_Increment

    
Music_Note:     ; $95
    PHA
    AND #$F0
    LSR A
    LSR A
    LSR A
    PHA
    PHA
    LDA OCTAVE, X
    LSR A
    LSR A
    LSR A
    LSR A
    LSR A
    TAY
    LDA Octaves, Y
    STA m_tmp
    CLC
    ADC #<Notes
    STA music_notes
    LDA #>Notes
    ADC #0
    STA music_notes+1
    PLA
    TAY
    LDA (music_notes), Y
    STA FREQ, X
    INY
    LDA (music_notes), Y
    STA FREQ+1, X

    LDA #0
    STA ENV_POS, X
    STA VIBRATO, X
    
    LDA m_tmp
    LSR A
    ;LDA VibOctaves, Y
    CLC
    ADC #<VibratoSafe
    STA music_vibrato
    LDA #>VibratoSafe
    STA music_vibrato+1
    PLA
    LSR A
    TAY
    LDA (music_vibrato), Y
    STA VIBRATO_SAFE, X
    PLA
    
Music_SetNoteLength:
    AND #$0F
    ASL A
    TAY
    
    LDA tempo
    CLC
    ADC #<Lengths
    STA music_length
    LDA #>Lengths
    ADC #0
    STA music_length+1
    
    LDA (music_length), Y
    STA LENGTH, X
    INY
    LDA (music_length), Y
    STA LENGTH+1, X

    LDY #1
    STY ENVELOPE, X

UpdateScore_Done:
    LDA score
    CLC                 
    ADC #1
    STA M_POINTER, X
    LDA score+1
    ADC #0
    STA M_POINTER+1, X
    RTS           

Music_Rest:        
    JSR Music_SetNoteLength
    CPX #TRIANGLE
    BNE UpdateScore_Done
    
    LDA #$80
    STA tri_freq+1    
    BMI UpdateScore_Done
    
    
    
    
    
    
    
    
    
InstrumentTable:
    .word Instrument0
    .word Instrument1
    .word Instrument2
    .word Instrument3
    .word Instrument4
    .word Instrument5
    .word Instrument6
    .word Instrument7    

;; Duty: 
;; %50 = $8x
;; %25 = $4x
;; %12 = $0x
;; %75 = $Cx ?

Instrument0:
.byte $20,$FE

Instrument1:
Instrument2:
Instrument3:
Instrument4:
Instrument5:
.byte $9C,$9C,$9B,$9B,$9A,$9A,$99,$99,$98,$98,$97,$97,$96,$96,$95,$95
.byte $94,$94,$95,$95,$96,$96,$97,$97,$98,$98,$99,$99,$9A,$9A,$9B,$9B,$FE
Instrument6:
.byte $48,$48,$47,$47,$46,$46,$45,$45,$44,$44,$43,$43,$42,$42,$41,$41
.byte $41,$41,$42,$42,$43,$43,$44,$44,$45,$45,$46,$46,$47,$47,$48,$48,$FE
Instrument7:

.align $100
    
Lengths: ; frames to play a note
;     0      1     2     3        4    5        6    7         8    9          A    B    C    D     E    F
;     2/1   1.5/1  1/1   1/2+1/4  1/2  1/4+1/8  1/4  1/8+1/16  1/8  1/16+1/32  1/16 1/32 
.word 240,  180,   120,  90,      60,  45,      30,  22,       15,  11,        7,   4,    4,   3,    2,   1 ; 120 bpm
.word 240,  180,   120,  90,      60,  45,      30,  22,       15,  11,        7,   4,    4,   3,    2,   1 ; 110 bpm
.word 240,  180,   120,  90,      60,  45,      30,  22,       15,  11,        7,   4,    4,   3,    2,   1 ; 100 bpm
.word 240,  180,   120,  90,      60,  45,      30,  22,       15,  11,        7,   4,    4,   3,    2,   1 ; 90  bpm
.word 240,  180,   120,  90,      60,  45,      30,  22,       15,  11,        7,   4,    4,   3,    2,   1 ; 80  bpm 
;.word 240,  180,   120,  90,      60,  45,      30,  22,       15,  11,        7,   4,    4,   3,    2,   1 ; 70  bpm

VibratoSafe:
   ;     C   C#  D   D#  E   F   F#  G   G#  A   A#  B    
  .byte $07,$07,$06,$06,$06,$01,$05,$05,$05,$05,$05,$05 ; 0 octaves
  .byte $04,$04,$04,$04,$04,$04,$04,$04,$04,$03,$04,$04 ; 1 
  .byte $03,$03,$03,$03,$03,$03,$03,$03,$03,$01,$03,$03 ; 2
  .byte $03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03 ; 3 
  .byte $03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03 ; 4
  .byte $02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$01 ; 5

;VibOctaves:
;.byte 0, 12, 24, 36, 48, 60

Octaves:
.byte 0, 24, 48, 72, 96, 120

Notes:   ;C     C#    D    D#     E     F    F#     G    G#     A    A#     B 
.word $06AC,$064C,$05F2,$059E,$054C,$0501,$04B8,$0474,$0434,$03F8,$03BE,$0388 ; Bass
.word $0356,$0326,$02F9,$02CF,$02A6,$0280,$025C,$023A,$021A,$01FC,$01DF,$01C4 ; Low
.word $01AB,$0193,$017C,$0167,$0153,$0140,$012E,$011D,$010D,$00FE,$00EF,$00E2 ; Mid
.word $00D5,$00C9,$00BE,$00B3,$00A9,$00A0,$0097,$008E,$0086,$007E,$0077,$0071 ; High
.word $006A,$0064,$005F,$0059,$0054,$0050,$004B,$0047,$0043,$003F,$003B,$0038 ; Highest
.word $0035,$0032,$002F,$002C,$002A,$0028,$0026,$0024,$0022,$0020,$001E,$001C ; Too High




.byte "END OF BANK 00"