.include "Constants.inc"
.include "variables.inc"
.feature force_range
.segment "BANK_0F"

CHR:
.incbin "Puzzle.chr"

TITLE_CHR:
.incbin "Title.chr"

TITLE_DOOR:
	.byte $41,$41,$42,$43,$44,$45,$46,$47,$48,$49,$4a,$4b,$F4
	.byte $50,$51,$52,$53,$54,$55,$56,$57,$58,$59,$5a,$5b,$F4
	.byte $60,$61,$62,$63,$64,$65,$66,$65,$68,$69,$6a,$6b,$F4
	.byte $70,$71,$72,$73,$74,$75,$76,$77,$78,$79,$7a,$7b,$F4
	.byte $80,$81,$72,$73,$74,$75,$76,$77,$78,$79,$8a,$8b,$F4
	.byte $90,$91,$72,$73,$74,$75,$76,$77,$78,$79,$9a,$9b,$F4
	.byte $a0,$81,$40,$94,$94,$95,$96,$97,$98,$99,$81,$ab,$F4
	.byte $90,$91,$92,$93,$81,$81,$81,$81,$81,$81,$9a,$9b,$F4
	.byte $a0,$a1,$a2,$a3,$a4,$a5,$a6,$a7,$a8,$a9,$aa,$ab,$F4
	.byte $b0,$b1,$b2,$b3,$b4,$b5,$b6,$b7,$b8,$b9,$ba,$bb,$F4
	.byte $c0,$c1,$c2,$c3,$c4,$c5,$c6,$c7,$c8,$c9,$ca,$cb,$F4
	.byte $d0,$d1,$d2,$d3,$d4,$d5,$d6,$d7,$d8,$d9,$da,$db,$F4
	.byte $70,$71,$55,$55,$55,$55,$55,$55,$55,$55,$7a,$7b,$F4
	.byte $80,$81,$55,$55,$55,$55,$55,$55,$55,$55,$8a,$8b,$F4
    .byte $80,$81,$55,$55,$55,$55,$55,$55,$55,$55,$8a,$8b,$F4
    .byte $80,$81,$55,$55,$55,$55,$55,$55,$55,$55,$8a,$8b,$F4
    .byte $80,$81,$55,$55,$55,$55,$55,$55,$55,$55,$8a,$8b,$00

RNG_DATA:

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;
;;          TEXT STRINGS
;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

TextStrings:
.word PAUSED        ; 0
.word P_NO          ; 1
.word POSSIBILITIES ; 2
.word OPTIONS       ; 3
.word ON            ; 4
.word OFF           ; 5 - SFX
.word OFF           ; 6 - Music
.word GIVEUP        ; 7
.word STARTMENU     ; 8
.word HELP          ; 9
.word COPYRIGHT     ; 10
.word GAMEOVER      ; 11
.word WINNER        ; 12
.word STORY         ; 13
.word PUZZLE_NO     ; 14

TextPositions:
.word $2AEF ; 0
.word $2052 ; 1
.word $20B2 ; 2
.word $2111 ; 3
.word $213C ; 4 - SFX ON
.word $213C ; 5 - SFX OFF
.word $215C ; 6 - Music OFF
.word $2132 ; 7
.word $2113 ; 8
.word $2044 ; 9
.word $2326 ; 10
.word $2064 ; 11
.word $2064 ; 12
.word $2064 ; 13
.word $2253 ; 14

PAUSED:
.byte $67,$16,$10,$1C,$14,$FF
.byte $1F,$10,$24,$22,$14,$13,$00

P_NO:
.byte $1F,$0D,$00

POSSIBILITIES:
.byte $1F,$1E,$22,$22,$18,$11,$18,$1B,$18,$23,$18,$14,$22,$0C,$FF
.byte $FF
.byte $01,$0E,$0A,$00

OPTIONS:
.byte $09,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$FF
.byte $04,$67,$22,$1E,$24,$1D,$13,$67,$15,$27,$67,$FF
.byte $04,$67,$1C,$24,$22,$18,$12,$01,$04,$FF
.byte $04,$67,$11,$1E,$21,$13,$14,$21,$01,$04,$FF
.byte $04,$01,$09,$FF
.byte $04,$67,$10,$11,$10,$1D,$13,$1E,$1D,$67,$16,$10,$1C,$14,$00

ON:
.byte $67,$1E,$1D,$67,$00

OFF:
.byte $1E,$15,$15,$67,$00

GIVEUP:
.byte $16,$18,$25,$14,$67,$24,$1F,$67,$22,$10,$25,$18,$1D,$16,$FF
.byte $67,$23,$17,$14,$67,$10,$13,$1E,$21,$10,$11,$1B,$14,$FF
.byte $1B,$18,$0B,$1B,$67,$12,$21,$18,$23,$23,$14,$21,$22,$0E,$FF
.byte $01,$06,$28,$14,$22,$FF
.byte $01,$06,$1D,$1E,$FE,$01,$05,$00

STARTMENU:
.byte $67,$1F,$1B,$10,$28,$67,$16,$10,$1C,$14,$FF,$FF
.byte $67,$12,$1B,$24,$14,$67,$17,$14,$1B,$1F,$FF,$FF
.byte $67,$14,$27,$18,$23,$67,$16,$10,$1C,$14,$FF,$FF
.byte $67,$67,$67,$22,$23,$1E,$21,$28,$00

PUZZLE_NO:
.byte $1F,$24,$29,$29,$1B,$14,$0D,$67,$30,$30,$31,$00

HELP:
.byte $C6,$C7,$8C,$8D,$C6,$C7,$67,$23,$17,$14,$67,$12,$10,$21,$10,$25,$10,$1D,$67,$1C,$24,$22,$23,$67,$11,$14,$FF
.byte $D6,$D7,$9C,$9D,$D6,$D7,$67,$1D,$14,$27,$23,$67,$23,$1E,$67,$23,$17,$14,$67,$13,$1E,$1E,$21,$67,$1E,$1D,$FF
.byte $01,$07,$14,$18,$23,$17,$14,$21,$67,$22,$18,$13,$14,$0F,$FF,$FF

.byte $88,$89,$86,$87,$88,$89,$67,$23,$17,$14,$67,$22,$1A,$24,$1B,$1B,$67,$12,$10,$1D,$1D,$1E,$23,$67,$11,$14,$FF
.byte $98,$99,$96,$97,$98,$99,$67,$1D,$14,$27,$23,$67,$23,$1E,$67,$23,$17,$14,$67,$1B,$10,$13,$13,$14,$21,$FE,$FF,$FF

.byte $E8,$E9,$67,$67,$8A,$8B,$67,$23,$17,$14,$67,$11,$18,$21,$13,$67,$1C,$24,$22,$23,$67,$11,$14,$67,$23,$1E,$FF
.byte $F8,$F9,$67,$67,$9A,$9B,$67,$23,$17,$14,$67,$1B,$14,$15,$23,$67,$1E,$15,$67,$23,$17,$14,$67,$1A,$14,$28,$0F,$FF
.byte $67,$11,$24,$23,$67,$23,$17,$14,$28,$67,$12,$10,$1D,$67,$11,$14,$67,$15,$10,$21,$67,$10,$1F,$10,$21,$23,$0F,$FF,$FF

.byte $EC,$ED,$4C,$4D,$82,$83,$67,$23,$17,$14,$22,$14,$67,$23,$18,$1B,$14,$22,$67,$1C,$24,$22,$23,$67,$11,$14,$FF
.byte $FC,$FD,$5C,$5D,$92,$93,$67,$18,$1D,$67,$10,$67,$21,$1E,$26,$0F,$0F,$0F,$11,$24,$23,$67,$23,$17,$14,$28,$FF
.byte $67,$67,$12,$1E,$24,$1B,$13,$67,$11,$14,$67,$18,$1D,$67,$14,$18,$23,$17,$14,$21,$67,$1E,$21,$13,$14,$21,$0F,$FF,$FF

.byte $C2,$C3,$A6,$A7,$C4,$C5,$67,$23,$17,$14,$67,$16,$21,$10,$25,$14,$67,$12,$10,$1D,$1D,$1E,$23,$67,$11,$14,$FF
.byte $D2,$D3,$B6,$B7,$D4,$D5,$67,$11,$14,$23,$26,$14,$14,$1D,$67,$23,$17,$14,$22,$14,$0F,$0F,$0F,$11,$24,$23,$FF
.byte $67,$23,$17,$14,$28,$67,$1C,$24,$22,$23,$67,$17,$10,$25,$14,$67,$1E,$1D,$14,$67,$12,$1E,$1B,$24,$1C,$1D,$FF
.byte $67,$11,$14,$23,$26,$14,$14,$1D,$67,$23,$17,$14,$1C,$0F,$67,$23,$17,$14,$67,$10,$18,$21,$22,$17,$18,$1F,$FF
.byte $67,$67,$12,$1E,$24,$1B,$13,$67,$11,$14,$67,$23,$1E,$67,$23,$17,$14,$67,$1B,$14,$15,$23,$67,$1E,$21,$FF
.byte $67,$23,$17,$14,$67,$21,$18,$16,$17,$23,$67,$1E,$15,$67,$23,$17,$14,$67,$12,$10,$21,$21,$18,$10,$16,$14,$FE,$FF,$FF

.byte $A0,$A1,$67,$23,$17,$14,$67,$23,$21,$14,$14,$67,$10,$1D,$13,$67,$21,$10,$23,$67,$10,$21,$14,$67,$E4,$E5,$FF
.byte $B0,$B1,$67,$67,$18,$1D,$67,$23,$17,$14,$67,$22,$10,$1C,$14,$67,$12,$1E,$1B,$24,$1C,$1D,$0F,$67,$F4,$F5,$FF
.byte $E6,$E7,$67,$26,$17,$18,$1B,$14,$67,$23,$17,$14,$67,$26,$14,$10,$22,$14,$1B,$67,$10,$1D,$13,$67,$68,$69,$FF
.byte $F6,$F7,$67,$67,$23,$17,$14,$67,$17,$10,$1C,$1C,$14,$21,$67,$10,$21,$14,$67,$1D,$1E,$23,$FE,$67,$78,$79,$00

COPYRIGHT:
.byte $DF,$67,$32,$30,$32,$31,$67,$19,$18,$16,$16,$14,$21,$28,$DE,$1F,$1E,$1D,$1A,$14,$21,$28,$00

GAMEOVER:
.byte $13,$14,$22,$1F,$18,$23,$14,$67,$23,$10,$1A,$18,$1D,$16,$67,$67,$0C,$67,$67,$0C,$FF
.byte $67,$28,$1E,$24,$67,$15,$10,$18,$1B,$14,$13,$67,$23,$1E,$67,$21,$14,$22,$12,$24,$14,$FF
.byte $67,$23,$17,$14,$67,$10,$1D,$18,$1C,$10,$1B,$22,$67,$15,$21,$1E,$1C,$67,$23,$17,$14,$FF
.byte $25,$18,$1B,$14,$67,$13,$24,$1D,$16,$14,$1E,$1D,$22,$67,$1E,$15,$67,$1B,$1E,$16,$18,$12,$0F,$FF
.byte $67,$23,$17,$18,$22,$67,$22,$17,$10,$1C,$14,$67,$1C,$10,$28,$67,$17,$10,$24,$1D,$23,$FF
.byte $67,$67,$28,$1E,$24,$21,$67,$22,$1E,$24,$1B,$67,$15,$1E,$21,$67,$23,$17,$14,$FF
.byte $67,$67,$21,$14,$22,$23,$67,$1E,$15,$67,$28,$1E,$24,$21,$67,$13,$10,$28,$22,$0F,$FF
.byte $01,$06,$1E,$21,$67,$1D,$1E,$23,$0F,$FF
.byte $01,$04,$14,$18,$23,$17,$14,$21,$67,$26,$10,$28,$0F,$0F,$0F,$FF
.byte $67,$23,$17,$14,$67,$20,$24,$14,$14,$1D,$67,$26,$18,$1B,$1B,$67,$15,$14,$10,$22,$23,$0F,$00

WINNER:
.byte $67,$26,$18,$23,$17,$67,$28,$1E,$24,$21,$67,$1C,$18,$16,$17,$23,$28,$67,$11,$21,$10,$18,$1D,$FF
.byte $1F,$1E,$26,$14,$21,$22,$67,$28,$1E,$24,$67,$26,$14,$21,$14,$67,$10,$11,$1B,$14,$67,$23,$1E,$FF
.byte $67,$67,$21,$14,$1B,$14,$10,$22,$14,$67,$23,$17,$14,$67,$12,$10,$1F,$23,$24,$21,$14,$13,$FF
.byte $01,$03,$12,$21,$18,$23,$23,$14,$21,$22,$67,$11,$10,$12,$1A,$67,$18,$1D,$23,$1E,$FF
.byte $01,$07,$23,$17,$14,$67,$26,$18,$1B,$13,$FE,$FF
.byte $FF
.byte $67,$23,$17,$14,$28,$67,$26,$14,$21,$14,$67,$25,$14,$21,$28,$67,$17,$10,$1F,$1F,$28,$FE,$FF
.byte $67,$67,$1E,$1D,$14,$67,$1E,$15,$67,$23,$17,$14,$1C,$67,$11,$18,$23,$67,$28,$1E,$24,$FF
.byte $01,$05,$11,$24,$23,$67,$18,$23,$22,$67,$1E,$1A,$10,$28,$0F,$FF
.byte $FF
.byte $01,$04,$24,$1D,$15,$1E,$21,$23,$24,$1D,$10,$23,$14,$1B,$28,$0F,$0F,$0F,$FF
.byte $23,$17,$14,$28,$67,$26,$14,$21,$14,$67,$12,$10,$1F,$23,$24,$21,$14,$13,$67,$10,$16,$10,$18,$1D,$0F,$FF
.byte $FF
.byte $01,$05,$1D,$14,$27,$23,$67,$1F,$24,$29,$29,$1B,$14,$0E,$00

STORY:
.byte $67,$23,$17,$14,$67,$14,$25,$18,$1B,$67,$20,$24,$14,$14,$1D,$67,$1C,$14,$12,$17,$10,$1D,$18,$12,$10,$FF,$FF
.byte $17,$10,$22,$67,$22,$23,$1E,$1B,$14,$1D,$67,$10,$26,$10,$28,$67,$23,$17,$14,$67,$1B,$18,$23,$23,$1B,$14,$FF,$FF
.byte $01,$03,$10,$1D,$18,$1C,$10,$1B,$22,$67,$1E,$15,$67,$23,$17,$14,$67,$26,$1E,$1E,$13,$22,$0F,$FF,$FF
.byte $01,$03,$23,$17,$14,$28,$67,$22,$24,$15,$15,$14,$21,$67,$18,$1D,$67,$12,$10,$16,$14,$22,$FF,$FF
.byte $67,$1B,$1E,$12,$1A,$14,$13,$67,$11,$28,$67,$1B,$1E,$16,$18,$12,$67,$1F,$24,$29,$29,$1B,$14,$22,$0F,$FF,$FF
.byte $67,$23,$17,$14,$67,$22,$14,$25,$14,$1D,$67,$17,$14,$21,$1E,$14,$22,$67,$21,$14,$20,$24,$18,$21,$14,$FF,$FF
.byte $67,$10,$1D,$67,$10,$24,$13,$10,$12,$18,$1E,$24,$22,$67,$1B,$1E,$16,$18,$12,$18,$10,$1D,$67,$23,$1E,$FF,$FF
.byte $67,$67,$16,$24,$18,$13,$14,$67,$23,$17,$14,$1C,$67,$23,$17,$21,$1E,$24,$16,$17,$67,$17,$14,$21,$FF,$FF
.byte $01,$03,$13,$24,$1D,$16,$14,$1E,$1D,$22,$67,$23,$1E,$67,$15,$21,$14,$14,$67,$23,$17,$14,$FF,$FF
.byte $67,$1F,$1E,$1E,$21,$67,$12,$21,$18,$23,$23,$14,$21,$22,$67,$11,$14,$15,$1E,$21,$14,$67,$23,$17,$14,$FF,$FF
.byte $20,$24,$14,$14,$1D,$0B,$22,$67,$26,$18,$1B,$13,$67,$15,$14,$10,$22,$23,$67,$11,$14,$16,$18,$1D,$22,$0F,$FF,$FF,$FF
.byte $01,$F08,$10,$21,$14,$1D,$0B,$23,$67,$28,$1E,$24,$0E,$00


















;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;
;;          PALETTES
;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

.align $100

GamePalette:
.byte $3F,$01,$21,$30
.byte $3F,$17,$28,$30
.byte $3F,$06,$0A,$36
.byte $3F,$04,$15,$30

;; sprites
.byte $3F,$0A,$1A,$2A
.byte $3F,$01,$11,$21
.byte $3F,$0C,$1C,$2C
.byte $3F,$06,$16,$26


MenuPalette:
.byte $3F,$2D,$10,$30
.byte $3F,$17,$28,$30
.byte $3F,$06,$0A,$36
.byte $3F,$04,$15,$30

;; sprites
.byte $3F,$0A,$1A,$2A
.byte $3F,$17,$28,$30
.byte $3F,$06,$0A,$36
.byte $3F,$04,$15,$30

BorderPalettes:
.byte $01,$21 ; 
.byte $02,$22 ; 
.byte $03,$23 ; 
.byte $04,$24 ; 
.byte $05,$25 ; 
.byte $06,$26 ; 
.byte $07,$27 ; 
.byte $08,$28 ; 
.byte $09,$29 ; 
.byte $0A,$2A ; 
.byte $0B,$2B ; 
.byte $0C,$2C ; 
.byte $00,$3D ; 
.byte $2D,$10 ; 
.byte $01,$11 ; 
.byte $02,$12 ; 
.byte $03,$13 ; 
.byte $04,$14 ; 
.byte $05,$15 ; 
.byte $06,$16 ; 
.byte $07,$17 ; 
.byte $08,$18 ; 
.byte $09,$19 ; 
.byte $0A,$1A ; 
.byte $0B,$1B ; 
.byte $0C,$1C ; 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;
;;          RESET / GAME START / INIT CODE
;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


OnReset:
    SEI            ; Set Interrupt flag (prevent IRQs from occuring)
    CLD            ; disable decimal mode
    LDX #$40
    STX $4017      ; disable APU frame IRQ
    LDX #$00
    STX $2000
    STX soft2000
    STX $2001
    STX soft2001
    STX $4010      ; disble DMC IRQs
    STX $4015      ; turn off all sound channels

    BIT $2002

   @RevUpPPU:
    BIT $2002      ;  This is necessary because the PPU requires some time to "warm up"
    BPL @RevUpPPU  ;  failure to do this will result in the PPU basically not working

   @ClearRAM:
    LDA #$00
    STA $0000, X
    STA $0100, X
    STA $0300, X
    STA $0400, X
    STA $0500, X
    STA $0600, X
    STA $0700, X
    LDA #$FF
    STA $0200, X   ; clear OAM
    INX
    BNE @ClearRAM

    ;; Mapper 28 stuff

    LDX #$81
    STX $5000
    LDA #$FF       ; Set outer bank
    STA $8000      ; this write will get NOPped out when the multicart is built
    DEX
    STX $5000
    LDA #$1F       ; $10: 64 KiB; $0C: fixed C000; the rest = horizontal mirroring
    STA $8000
    LDX #$01
    STX $5000      ; bit 4: which nametable to use; bits 1-0: PRG bank
    
    STX puzzle     ; and set starting puzzle number to 1

    LDY #$00       ; swap to bank 0
    JSR Swap


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;
;;          DRAW TITLE SCREEN
;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

MainMenu:
    LDX #$FF      ; set stack pointer! 
    TXS           
    
    JSR TurnOffScreen

    ; load palettes
    LDA #<MenuPalette-$E0 ; slight trickery here...
    STA tmp_pointer
    LDA #>MenuPalette-$01
    STA tmp_pointer+1
    LDY #$E0          ; start with Y = 0 - $20

    LDA #$3F
    LDX #$00
    JSR SetPPUAddress
    
    INX               ; X = #01 to make sure the loop exits
    JSR Load_CHR_Loop

    ; load title
    LDA #<TITLE_CHR
    STA tmp_pointer
    LDA #>TITLE_CHR
    STA tmp_pointer+1

    LDA #$00
    TAX
    JSR SetPPUAddress

    TAY
    LDX #$10
    JSR Load_CHR_Loop

    ; load sprites
    LDA #<CHR
    STA tmp_pointer
    LDA #>CHR
    STA tmp_pointer+1

    LDX #$10
    JSR Load_CHR_Loop

    ;; Clear nametables and attributes
    JSR ClearNametable
    JSR ClearSpriteBuffer
    
    LDA #<TITLE_DOOR
    STA tmp_pointer
    LDA #>TITLE_DOOR
    STA tmp_pointer+1  

    LDA #$20
    LDX #$84
    JSR SetPPUAddress
    
    JSR Decompress_Loop

    LDA #1
    STA game_over    ; mark as "in menu"
    STA update_attr
    STA cursor_dot

    JSR ClearButtons ; clear cursor variables
    STA cursor_dot_y
    STA music_track    
    
    LDA #10 
    JSR DrawBox
    LDA #8
    JSR Print
    LDA #10
    JSR Print
    LDA #14
    JSR Print
    
    LDA #$1E        ; turn on screen/clear emphasis
    STA soft2001    
    
    JMP MenuFrame

MenuList:
    .word LoadGame
    .word ViewHelp
    .word QuitGame
    .word ViewStory    

QuitGame:
    ;; return to Action 52 menu somehow
    JSR TurnOffScreen        
    STX $2000
    STX soft2000
    STX $2001
    STX soft2001    
    JMP OnIRQ

ViewHelp:
    JSR StaticScreen_Setup
    JSR LoadGamePalette    
    LDA #$23
    LDX #$C1
    JSR SetPPUAddress
    DEC game_over      ; do not animate sprites
    
    ;; this only-used-once code decompresses a string to the attributes
    ;; I think it takes 27 bytes
    ;; the compressed version is 16
    ;; the full table would be 56 bytes
    ;; and the simplest loop would be 11
    ;; sometimes only-used-once code is good!
    
    LDX #$00
   @AttriLoop: 
    LDA StaticScreen_HELP_Attributes, X
    CMP #$0F
    BCS @Normal
    
    TAY
    LDA #$00
   @Blanks:
    DEY 
    STA $2007
    BNE @Blanks
    
   @Normal: 
    STA $2007
    INX
    CPX #16
    BNE @AttriLoop

    LDX #$13
   @Sprites:
    LDA StaticScreen_HELP_Sprites, X
    STA spritebuffer, X
    DEX
    BPL @Sprites
    LDA #9
    BNE StaticScreen_Start        
    
ViewStory:
    JSR StaticScreen_Setup
    LDX #$0F
   @Sprites:
    LDA StaticScreen_STORY_Sprites, X
    STA spritebuffer, X
    DEX
    BPL @Sprites
    LDA #13
    
StaticScreen_Start:
    JSR Print
    LDA #$1E
    STA soft2001    
    JMP StaticFrame
    
StaticScreen_Setup:
    JSR TurnOffScreen            
    JSR ClearNametable
    JSR LoadPuzzleTiles    
    JMP ClearButtons    

StaticScreen_STORY_Sprites:
;Sprite ID, X,  Y, 
.byte $04,$20,$C7,$00
.byte $0C,$40,$C7,$00
.byte $0A,$B8,$C7,$00
.byte $0E,$D8,$C7,$00

StaticScreen_HELP_Sprites:
;Sprite ID, X,  Y 
.byte $02,$28,$37,$00
.byte $02,$28,$8F,$00
.byte $02,$D8,$CB,$00
.byte $01,$28,$4A,$00
.byte $03,$28,$70,$00

;.byte $02,$28,$2F,$00
;.byte $02,$28,$87,$00
;.byte $02,$D8,$C7,$00
;.byte $01,$28,$4A,$00
;.byte $03,$28,$70,$00

StaticScreen_HELP_Attributes:
.byte $55,$10,$05,$80,$06,$11,$06,$DD
.byte $11,$05,$55,$11,$0D,$12,$04,$12


GameOver:
    JSR TurnOffScreen     

GameWon:   
    JSR TurnOffScreen     
    
    
LoadGame:
    JSR TurnOffScreen
    JSR LoadGamePalette
    JSR LoadPuzzleTiles
    JSR ClearNametable

    LDA #9
    STA box_counter
   @BoxLoop:
    LDA box_counter
    JSR DrawBox
    DEC box_counter
    BPL @BoxLoop

    LDA #$2E
    STA drawtile
    LDA #0
    STA cursor_y
    STA cursor_x

    ;; draw the blank puzzle spaces
   @ClearPuzzleLoop:
    LDA #$80
    STA drawjob
    JSR Draw_NewTile
    INC cursor_x
    LDA cursor_x
    CMP #$07
    BNE @ClearPuzzleLoop
    LDA #0
    STA cursor_x
    INC cursor_y
    LDA cursor_y
    CMP #$06
    BNE @ClearPuzzleLoop

    ;; draw game area text
    LDA #3
    STA tmp
   @PrintLoop:
    LDA tmp
    JSR Print
    DEC tmp
    BPL @PrintLoop

   @PrintPuzzleNumber:
    LDA #>$2054
    LDX #<$2054
    JSR PrintPuzzleNumber
    ;; ^ this also sets the scroll

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;
;;          BEGIN PUZZLE FORMING
;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


Generate_Puzzle:    ; this code is very volatile...? Or it was, once.
    LDA #$06
    STA tmp+9       ; row counter
    LDX #48-1
    STX tmp+8       ; loop counter

    LDA #<RNG_DATA
    STA tmp_pointer
    LDA #>RNG_DATA
    STA tmp_pointer+1

   @Clear_Used:     ; clear the temp space with $FF
    LDA #$FF
    STA tmp+1
    STA tmp+2
    STA tmp+3
    STA tmp+4
    STA tmp+5
    STA tmp+6
    STA tmp+7

   @Loop:
    LDY puzzle      ; use puzzle ID as starting point
    LDA (tmp_pointer), Y
    INC tmp_pointer
    BNE :+
      INC tmp_pointer+1
  : AND #$07
    BEQ @Loop       ; if it is 0, try again - need a value between 1 and 7

    STA tmp
    DEC tmp         ; turn the tile's value to 0-based
    LDX #$07
   @Check_Used:
    LDA tmp, X      ; get the value in this slot
    CMP #$FF
    BEQ @Write      ; if the value is still $FF, then its not been written yet
    CMP tmp
    BEQ @Loop       ; if it is equal, then this value has been written already; get a new value
    DEX
    BNE @Check_Used

   @Write:
    LDA tmp
    STA tmp, X      ; save the temp row value
    LDY tmp+8       ; then save in the total solved-puzzle string!
    STA solved-1, Y
    DEC tmp+8
    DEX             ; X = 0 when its the last tile in the row
    BNE @Loop
    DEC tmp+8       ; skip the 8th byte
    DEC tmp+9       ; decrement row counter
    BNE @Clear_Used

    ;; JIGS - and just realized I've been using 1 through 7 for the solved puzzle...
    ;; while using single bits for the rest. Oops.

    LDY #$30
   @Convert:
    LDA solved-1, Y
    TAX
    LDA BIT_LUT, X
    STA solved-1, Y
    DEY
    BNE @Convert
   
    STY row1_solved+7 ;; clear these out to 0
    STY row2_solved+7
    STY row3_solved+7
    STY row4_solved+7
    STY row5_solved+7
    STY row6_solved+7


GameStart:
    LDA #1
    STA drawjob      ; immediately update possibilities
    STA update_attr  ; and their attributes
    STA music_track
    STA options      ; mark as needing values updated on screen

    JSR ClearButtons ; then clear cursor variables
    STA game_over    ; mark as "in game"
    STA cursor
    STA cursor_x
    STA cursor_y
    STA cursor2_x
    STA cursor2_y
    STA cursor_dot
    STA cursor_dot_y
    STA gametime
    STA gametime+1
    STA gametime+2
    STA gametime+3

    LDA options
    ORA #$20
    STA options      ; toggle options to be drawn
    JSR UpdateOptionText

    LDA #$FE         ; set each game area tile's possible tile list
    LDX #48
   @ClearPuzzle:
    STA unsolved-1, X
    DEX
    BNE @ClearPuzzle

    LDA #$1E        ; turn on screen/clear emphasis
    STA soft2001


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;
;;          FRAME LOGIC
;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

GameFrame:
    JSR WaitForVBlank
    LDA #>oam
    STA $4014
    JSR Update_Gametime
    JSR Draw_NewTile
    JSR Load_Possibilities
    JSR UpdateOptionText
    JSR Print_Gametime_Play
    JSR SetScroll
    JSR ClearOAM
    JSR DrawSprite0
    JSR DrawCursor
    JSR UpdateJoy
    JSR MoveGameCursor
    JSR PlayerInput_Game
    JMP GameFrame

GameFrame_Printing:
    JSR Update_Gametime
    JSR Print_Gametime_Play 
    JSR SetScroll
    JSR ClearOAM
    JSR DrawSprite0
    JSR DrawCursor
    JMP WaitForVBlank

StaticFrame:
    JSR WaitForVBlank
    LDA #>oam
    STA $4014    
    JSR SetScroll
    JSR ClearOAM    
    JSR Update_Gametime
    JSR AnimateAnimals
    JSR DrawAllSprites
    JSR UpdateJoy
    JSR PlayerInput_Other
    JMP StaticFrame

MenuFrame:
    JSR WaitForVBlank
    LDA #>oam
    STA $4014
    LDA drawjob
    BEQ :+
        LDA #>$225C
        LDX #<$225C
        JSR PrintPuzzleNumber

  : JSR SetScroll
    JSR ClearOAM
    JSR DrawMenuCursor
    JSR UpdateJoy
    JSR MoveMenuCursor
    JSR PlayerInput_Menu
    JMP MenuFrame

PauseGame:
    LDA #$30
    STA $4000      ; set square and noise volume to 0
    STA $4004      ; clear triangle linear counter
    STA $4008
    STA $400C

    LDA clues
    ORA #$80
    STA clues      ; set the pause toggle

    LDA #%11111110 ; set all colour emphasis, keep PPU on, no greyscale
    STA soft2001

    JSR ClearButtons

   @PauseLoop:
    JSR WaitForVBlank
    LDA #>oam
    STA $4014
    JSR SetScroll
    JSR ClearOAM
    JSR DrawSprite0
    JSR UpdateJoy  ; keep checking if start is pressed again
    LDA joy_start
    BEQ @PauseLoop

    LDA clues      ; remove the pause toggle
    AND #$7F
    STA clues
    
    LDA #$1E       ; turn on screen/clear emphasis
    STA soft2001
    RTS


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;
;;          CONTROLLER INPUT
;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


ClearButtons:
    LDA #$00
    STA joy_select
    STA joy_start
    STA joy_a
    STA joy_b
    RTS

UpdateJoy:
    LDA #$01
    STA $4016       ; strobe joypad (refreshes the latch with up to date joy data)
    LDA #$0
    STA $4016
    LDX #$08        ; loop 8 times (have to read each of the 8 buttons 1 at a time)
   @Loop:
    LDA $4016       ; get button state
    AND #$03        ; get both bits
    CMP #$01        ; set carry if either bit is set
    ROL joy         ; rotate carry into total value
    DEX
    BNE @Loop

    LDA joy         ; get total joypad values
    AND #$03        ; check left/right
    BEQ :+
      LDX #$03      ; if either is pressed, then X = 3
  : STX joy_dir     ; will be 0 or 3 now

    LDA joy
    AND #$0C        ; check up/down
    BEQ :+
      TXA
      ORA #$0C      ; combine with previous value
      STA joy_dir

  : LDA joy
    EOR joy_ignore  ; invert it with all the buttons to ignore
    AND joy_dir     ; mask out the directional buttons to keep
    EOR joy_ignore  ; and re-invert, restoring ALL buttons *except* the directions to keep
    STA joy_ignore  ; write back to ignore for next time
    EOR joy         ; EOR again with current joy data
    TAY             ; back it up in Y

    LDX #$03
   @CheckButtons:
    LDA JoyData, X  ; get button value from mini table
    STA joy_tmp     ; save it for doing stuff with
    TYA             ; restore transition byte
    AND joy_tmp     ; see if button has transitioned (if so, some people would say this is a lucky button)
    BEQ @Nope       ; if not, skip it
    LDA joy
    AND joy_tmp     ; see if it is being pressed (else, its being released)
    BEQ :+
      INC joy_a, X  ; if it is, increment the button's RAM value
  : LDA joy_ignore  ; then toggle the ignore value
    EOR joy_tmp
    STA joy_ignore

   @Nope:
    DEX
    BPL @CheckButtons
    RTS

JoyData:
    .byte $80, $40, $20, $10 ; A, B, Select, Start
    

PlayerInput_Game:
    LDA cursor_dot
    BNE PlayerInput_Options

    LDA joy_b
    BEQ @Check_A
        LDA cursor
        BPL :+
            LDA #$00
            STA cursor
            BEQ @Done

      : LDA clues
        EOR #$01
        STA clues
        JMP @Done

   @Check_A:
    LDA joy_a
    BEQ @Check_Select
        LDA cursor
        BPL :+
           JSR Choose_Possibility
           JMP @Done

      : LDA #$81
        STA cursor
        BNE @Done

   @Check_Select:
    LDA joy_select
    BEQ @Check_Start
        INC cursor_dot
        BNE @Done

   @Check_Start:
    LDA joy_start
    BEQ @Done
        JSR PauseGame

   @Done:
    JMP ClearButtons


PlayerInput_Options:
    LDA joy_b
    ORA joy_select
    BEQ @Check_A
        LDA abandon
        BEQ :+
       
       @RestoreOptions:
        LDA #$80
        STA abandon
        BNE @Done
        
      : DEC cursor_dot
        BEQ @Done

   @Check_A:
    LDA joy_a
    BEQ @Check_Start
        LDA abandon
        BEQ :+
            LDA cursor_dot_y
            BNE @RestoreOptions
            LDA #$00
            STA abandon
            JMP MainMenu
        
      : LDA #$01
        JSR ChangeOptions
        JMP ClearButtons
   
   @Check_Start:
    LDA joy_start
    BEQ @Done
        JSR PauseGame

   @Done:
    JMP ClearButtons
    
    

PlayerInput_Menu:
    LDA joy_b
    BEQ @Check_A
        INC puzzle
        INC drawjob
        BNE @Done

   @Check_A:
    LDA joy_a
    ORA joy_start
    ORA joy_select
    BEQ @Done
        LDA cursor_dot_y
        ASL A
        TAX
        LDA MenuList, X
        STA tmp_pointer
        LDA MenuList+1, X
        STA tmp_pointer+1
        PLA
        PLA
        JMP (tmp_pointer)

   @Done:
    JMP ClearButtons


PlayerInput_GameWon:
    LDA joy_b
    BEQ @Check_A
        JMP MainMenu
    
   @Check_A:
    LDA joy_a
    ORA joy_start
    ORA joy_select
    BEQ @Done
    INC puzzle
    PLA
    PLA
    JMP LoadGame
  
   @Done:
    JMP ClearButtons  


PlayerInput_Other:
    LDA joy_b
    ORA joy_a
    ORA joy_start
    ORA joy_select
    BEQ @Done
        JMP MainMenu
    
   @Done:
    JMP ClearButtons 




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;
;;          OPTIONS
;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


ChangeOptions_LeftRight:
    LDX cursor_dot_y
    CPX #$03
    BNE ChangeOptions
    RTS
    
    ;; do nothing if trying to abandon game by pressing left/right

ChangeOptions:
    LDX cursor_dot_y
    BEQ ChangeOptions_SFX
    
    CPX #$01
    BEQ ChangeOptions_Music
    
    CPX #$02
    BEQ ChangeOptions_Border
    
ChangeOptions_AbandonGame:
    INC abandon
    DEC cursor_dot_y
    DEC cursor_dot_y
    RTS
    
ChangeOptions_SFX:
    LDA options
    EOR #$40   
    STA options
    INC options
    RTS
    
ChangeOptions_Music:
    LSR A
    BCC @MusicDown
    
   @MusicUp:
    INC music_track
    LDA music_track
    CMP #$0F
    BNE ChangeOptions_Done
    
    LDA #$00
    STA music_track
    BEQ ChangeOptions_Done
    
   @MusicDown:
    DEC music_track
    BPL ChangeOptions_Done
    LDA #$0E
    STA music_track

ChangeOptions_Done: 
    INC options
    RTS
    
ChangeOptions_Border: 
    LSR A
    BCC @BorderDown
    
   @BorderUp:
    INC border
    LDA border
    CMP #$1A
    BNE @UpdatePalette
    
    LDA #$00
    STA border
    BEQ @UpdatePalette
    
   @BorderDown:
    DEC border
    BPL @UpdatePalette
    LDA #$19
    STA border
   
   @UpdatePalette:
    LDA border
    ORA #$80
    STA border
    BMI ChangeOptions_Done
    

UpdateOptionText:
    LDA abandon
    BEQ :+
    BMI @RestoreOptions
    CMP #$02
    BEQ :+
   
   @ShowQuitText:
    INC abandon       ; set to 2, so it skips updating text every frame
    LDA #7
    JMP Print

   @RestoreOptions:    
    LDA #$00
    STA abandon
    STA cursor_dot_y
    STA cursor_dot
    LDA #3
    JSR Print
    INC options

  : LDA border
    BPL :+
    
    AND #$7F
    STA border
    ASL A
    TAY
    LDA #$3F
    LDX #$01
    JSR SetPPUAddress
    LDA BorderPalettes, Y
    STA $2007
    LDA BorderPalettes+1, Y
    STA $2007

  : LDA options
    AND #$01
    BNE @MusicOn
    RTS

   @MusicOn:
    LDA music_track
    BEQ @MusicOff
    
    LDA #$21
    LDX #$5C
    JSR SetPPUAddress
    LDA music_track
    JSR Convert_Number
    LDX #$67
    STX $2007
    STY $2007
    STA $2007
    BNE @SFX    

   @MusicOff:
    LDA #6
    JSR Print
   
   @SFX:
    LDA options
    AND #$40
    BNE @SFXOff

   @SFXOn:
    LDA #4
    JSR Print
    BEQ @Border

   @SFXOff:
    LDA #5
    JSR Print

   @Border:
    LDA #$21
    LDX #$7D
    JSR SetPPUAddress
    LDA border
    CLC
    ADC #$01
    JSR Convert_Number
    STY $2007
    STA $2007
    LDA #$67
    STA $2007

   @Done:
    DEC options
    RTS




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;
;;          TILE SELECTION
;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


BIT_LUT:
.byte $80, $40, $20, $10, $08, $04, $02, $01

TileOffset_LUT:
.byte $40, $60, $80, $A0, $C0, $E0

Load_Possibilities:
    LDA drawjob
    AND #$7F
    BEQ @Attributes

    LDA #0
    LDX #$06
   @Clear:
    STA possibilities, X
    DEX
    BPL @Clear      ; clear out the list of tiles

    LDA cursor_y
    TAX
    LDA TileOffset_LUT, X
    STA tmp

    LDA cursor_y    ; get the tile position
    ASL A
    ASL A
    ASL A           ; times 8
    CLC
    ADC cursor_x
    TAX
    LDA unsolved, X
    STA total       ; and this is all possible tiles it can be

    LDX #$06        ; unroll it into the possibilities list
    LSR A
   @Loop:
    LSR A
    BCC @NothingThere

    PHA
    TXA
    ASL A           ; X * 2 + TileOffseT_LUT value =
    ORA tmp         ; the tile graphic for this slot
    STA possibilities, X
    PLA

   @NothingThere:
    DEX
    BPL @Loop

    LDA #$01
    STA tmp         ; tmp will be loop counter

    LDA #>$20D2
    LDX #<$20D2
    STA $2006
    STX $2006

    LDX #$00
   @GetTile:
    LDA possibilities, X
    BNE @Draw

   @NoTile:
    LDA #$67        ; $67 = blank tile
    STA $2007
    STA $2007
    BNE @Next

   @Draw:
    TAY
    ORA #$10        ; overwrite the old value with the bottom half of the tile
    STA possibilities, X

    STY $2007
    INY
    STY $2007

   @Next:
    INX
    CPX #$07
    BNE @GetTile

    LDA #>$20F2     ; on the second row of tiles
    LDX #<$20F2     ; change the write address
    STA $2006
    STX $2006

    DEC tmp         ; decrement the loop counter
    LDX tmp         ; so it will = 0, then put in X
    BEQ @GetTile    ; for the next loop!

    LDA drawjob     ; remove low bit from drawjob
    EOR #$01
    STA drawjob

   @Attributes:
    LDA update_attr
    BEQ @Done
    
    DEC update_attr
    LDA cursor_y
    ASL A
    ASL A
    TAY
    LDA #$23
    LDX #$CC
    JSR SetPPUAddress
    
    LDX #$00
   @AttriLoop:
    LDA Possibilities_Attributes, Y
    STA $2007
    INY
    INX
    CPX #$04
    BNE @AttriLoop
    
   @Done: 
    RTS



Swap_Possibility:
    LDA cursor_y
    ASL A
    ASL A
    ASL A
    STA row             ; save start of row
    ADC cursor_x
    STA position

    LDX cursor2_x
    LDA BIT_LUT, X      ; now get the tile's ID bit
    STA newtile

    LDY position
    LDA unsolved, Y
    AND newtile
    BEQ @RemoveFromRemoved
    
   @AddToRemoved:
    LDA removed, Y
    ORA newtile
    BNE @Done
    
   @RemoveFromRemoved: 
    LDA removed, Y
    AND newtile
    EOR removed, Y
    
   @Done:    
    STA removed, Y
    LDA unsolved, Y
    EOR newtile
    STA unsolved, Y
    INC drawjob         ; and mark possibilities to be updated on screen
    RTS


Choose_Possibility:
    LDA cursor_y
    ASL A
    ASL A
    ASL A
    STA row             ; save start of row
    ADC cursor_x
    TAY
    STY position        ; save position

    LDX cursor2_x
    LDA possibilities, X; so get the tile image ID from the possibilities list
    BEQ @Done           ; but if its 0, then do nothing!

    AND #~$10           ; undo the +$10 to done to the tile ID when loading
    STA drawtile        ; then save as the tile ID to draw

    LDA BIT_LUT, X      ; now get the tile's ID bit
    STA newtile
    
    LDA selected, Y
    BEQ @SetTileNormal

   @ReplaceTile:        ; a tile must be replaced first!
    STA oldtile         ; save the tile ID to replace
    CMP newtile         ; and see if its the same as the new tile
    BEQ @RemoveTile     ; in which case, it needs to be removed

    JSR SetOldTile      ; add the old tile to all positions

   @SetTileNormal:     
    LDY position
    LDA newtile         ; nothing to replace here, so just set the new tile in its position
    STA selected, Y    
    STA unsolved, Y
    JSR PreviouslySet   ; then see if this tile was set elsewhere    
    JSR UnsetNewTile    ; and clear it from the other bytes 
    BMI @TileSet        ; always branches
    
   @RemoveTile:
    LDA #$00
    STA selected, Y
    STA unsolved, Y
    JSR SetOldTile      ; so add the removed tile back into possibilities for all bytes (except when removed by player)
    JSR Refill_Possibility
    LDY position
    STY old_position
    EOR #$FE
    EOR removed, Y
    STA unsolved, Y     ; and refill this byte's possibilities
    LDA cursor_x
    STA oldtile         ; save the X position for the tile-drawing routine
    INC drawtile        ; tells the tile drawing routine to remove the old tile!
   
   @TileSet: 
    LDA #$81
    STA drawjob         ; mark "draw tile" and "update possibilities" jobs as "to do"
    LDA #$00
    STA cursor        
   @Done:
    RTS 





PreviouslySet:    
    LDY row
    LDX #6
   @Loop:
    LDA selected, Y
    CMP newtile
    BEQ @Found
   @Next: 
    INY
    DEX
    BPL @Loop
    RTS

   @Found: 
    CPY position    ; new tile was found as set, but its because we JUST SET IT
    BEQ @Next       ; so keep looking!
   
    LDA #$00
    STA selected, Y
    STA unsolved, Y  ; remove the data from this byte
    STY old_position ; backup Y
    JSR Refill_Possibility
    LDY old_position
    EOR #$FE
    EOR removed, Y
    ORA oldtile
    STA unsolved, Y ; put the new possibilities back
    TYA
    AND #$07
    STA oldtile     ; save the X position for the tile-drawing routine
    INC drawtile    ; mark this to be undrawn
    RTS
    
    
SetOldTile:         ; adds the previous tile into all unsolved positions
    LDY row
    LDX #6
    
  @Loop:
    LDA removed, Y
    AND oldtile
    BNE @Next
    
    LDA unsolved, Y
    ORA oldtile
    STA unsolved, Y

   @Next: 
    INY
    DEX
    BPL @Loop
    
   @Done:
    RTS

UnsetNewTile:        ; removes the selected tile from all unsolved positions
    LDY row
    LDX #6
   @Loop:
    CPY position
    BEQ @Next
    LDA unsolved, Y
    AND newtile
    EOR unsolved, Y
    STA unsolved, Y
   @Next: 
    INY
    DEX
    BPL @Loop    
    RTS
    
Refill_Possibility:  ; refreshes a byte with all possible tiles that haven't been selected yet
    LDY row
    LDX #6
    LDA #$00
    STA tmp+2
   @Loop:
    LDA selected, Y
    ORA tmp+2
    STA tmp+2
    INY
    DEX
    BPL @Loop
    RTS    
    
    
    
    
    


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;
;;         TILE ATTRIBUTES
;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



Possibilities_Attributes: ;; drawn to 23CC
.byte $80,$70,$60,$E0 ; heroes
.byte $40,$70,$70,$E0 ; weapons
.byte $40,$90,$20,$40 ; dungeon
.byte $80,$40,$90,$80 ; town
.byte $80,$50,$90,$80 ; travel
.byte $40,$90,$50,$60 ; critters


;; what palette each tile in each row uses
TileAttribute_LUT:
; tile  1,   2,   3,   4,   5,   6,   7,  xx
.byte $02, $03, $01, $02, $01, $02, $03, $00 ; heroes   : scoundrel, bard, healer, spy, barbarian, dragon, priestess 
.byte $01, $03, $01, $03, $01, $02, $03, $00 ; weapons  : bow, sword, staff, knife, hammer, shield, rod
.byte $01, $01, $02, $02, $00, $00, $01, $00 ; dungeon  : chest, opened chest, torch, ladder, skull, key, door
.byte $02, $00, $01, $01, $02, $00, $02, $00 ; town     : tree, fence, weeds, grave, sign, fountain, inn
.byte $02, $01, $01, $01, $02, $00, $02, $00 ; travel   : boat, airship, carriage, caravan, canoe, sub, boots 
.byte $01, $01, $02, $01, $01, $02, $01, $00 ; critters : squirrel, bun, weasel, rat, bird, frog, snake

Attribute_Position_LUT:
.byte $C0, LR, $C1, LL, $C1, LR, $C2, LL, $C2, LR, $C3, LL, $C3, LR, $00, $00
.byte $C8, UR, $C9, UL, $C9, UR, $CA, UL, $CA, UR, $CB, UL, $CB, UR, $00, $00
.byte $C8, LR, $C9, LL, $C9, LR, $CA, LL, $CA, LR, $CB, LL, $CB, LR, $00, $00
.byte $D0, UR, $D1, UL, $D1, UR, $D2, UL, $D2, UR, $D3, UL, $D3, UR, $00, $00
.byte $D0, LR, $D1, LL, $D1, LR, $D2, LL, $D2, LR, $D3, LL, $D3, LR, $00, $00
.byte $D8, UR, $D9, UL, $D9, UR, $DA, UL, $DA, UR, $DB, UL, $DB, UR, $00, $00

;; 11 00 00 00 ; lower right
;; 00 11 00 00 ; lower left
;; 00 00 11 00 ; upper right
;; 00 00 00 11 ; upper left

MaskLUT:
;       0    1    2    3    4    5    6
.byte $FC, $00, $F3, $00, $CF, $00, $3F
;     $03       $0C       $30       $C0
; AND with this byte will delete the 2 bits in the 3s and Cs

UpdateTileAttribute:
    LDA drawtile
    AND #$FE
    CMP #$2E
    BNE :+
      LDA #$00
      BEQ @SaveAttr
    
  : LSR A        
    STA tile_attr
    AND #$07     
    ADC tile_attr
    LSR A
    ADC #$F0
    ;; with thanks to tepples for this awesome math!
    
    TAY
    LDA TileAttribute_LUT, Y
    
   @SaveAttr: 
    STA tile_attr
    
    LDA position
    ASL A
    TAY
    
    LDX Attribute_Position_LUT, Y
    LDA #$23
    STA dest
    STX dest+1
    JSR SetPPUAddress
    
    LDA tile_attr
    LDX Attribute_Position_LUT+1, Y    
    BEQ @NoShift
   
   @Loop:
    ASL A
    DEX
    BNE @Loop
    
   @NoShift: 
    STA tile_attr
    LDX Attribute_Position_LUT+1, Y    
    
    LDA $2007
    LDA $2007
    AND MaskLUT, X
    ORA tile_attr
    TAY
    LDA dest
    LDX dest+1
    JSR SetPPUAddress
    STY $2007 
    
    LDA old_position
    STA position    
    RTS
    
    

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;
;;          CURSOR MOVEMENT
;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


MoveMenuCursor:
;    LDA #$05 
;    BNE :+

MoveOptionCursor:
    LDA abandon
    BNE :+

    LDA #$04
  : STA cursor_y_max

    LDA joy
    AND #$0F
    CMP joy_prev
    BEQ @Done

    STA joy_prev
    CMP #$00
    BEQ @Done

    CMP #DOWN
    BEQ @Down
    CMP #UP
    BEQ @Up
    
    LDX game_over
    BNE @ChangePuzzle
    
    JMP ChangeOptions_LeftRight

   @Up:
    DEC cursor_dot_y
    BPL @Done
    LDA cursor_y_max
    STA cursor_dot_y
    DEC cursor_dot_y
   @Done:
    RTS

   @Down:
    INC cursor_dot_y
    LDA cursor_dot_y
    CMP cursor_y_max
    BNE @Done

    LDA #0
    STA cursor_dot_y
    RTS
    
   @ChangePuzzle:
    LSR A 
    BCC @Decrease
    
   @Increase:
    INC puzzle
    INC puzzle
    
   @Decrease:
    DEC puzzle
    INC drawjob
    RTS
    


MoveGameCursor:
    LDA cursor_dot
    BNE MoveOptionCursor

    LDA cursor
    AND #$7F
    TAX
    LDA CursorMaxY, X
    STA cursor_y_max
    LDA CursorMaxX, X
    STA cursor_x_max

    LDA joy
    AND #$0F
    CMP joy_prev
    BEQ @Done

    STA joy_prev
    CMP #$00
    BEQ @Done

    ;; see what cursor type it is
    LDX cursor
    BMI @Cursor2

    INC drawjob
    LSR A
    BCS @Right
    LSR A
    BCS @Left
    LSR A
    BCS @Down

   @Up:
    INC update_attr
    DEC cursor_y
    BPL @Done
    LDA cursor_y_max
    STA cursor_y
    DEC cursor_y
   @Done:
    RTS

   @Right:
    INC cursor_x
    LDA cursor_x
    CMP cursor_x_max
    BNE @Done

    LDA #0
    STA cursor_x
    RTS

   @Left:
    DEC cursor_x
    BPL @Done
    LDA cursor_x_max
    STA cursor_x
    DEC cursor_x
    RTS

   @Down:
    INC update_attr
    INC cursor_y
    LDA cursor_y
    CMP cursor_y_max
    BNE @Done

    LDA #0
    STA cursor_y
    RTS

   @Cursor2:
    LSR A
    BCS @Right_2
    LSR A
    BCS @Left_2
    JMP Swap_Possibility ; else, it was up/down

   @Right_2:
    INC cursor2_x
    LDA cursor2_x
    CMP cursor_x_max
    BNE @Done

    LDA #0
    STA cursor2_x
    RTS

   @Left_2:
    DEC cursor2_x
    BPL @Done
    LDA cursor_x_max
    STA cursor2_x
    DEC cursor2_x
    RTS

CursorMaxY:
    .byte $06 ; 01 Game
    .byte $00 ; 04 Possibilities

CursorMaxX:
    .byte $07 ; 01 Game
    .byte $07 ; 04 Possibilities


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;
;;          CURSOR DRAWING
;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



DrawCursor:
    LDA cursor_dot
    BEQ @Normal
      JSR DrawOptionsDot

      LDA gametime ; causes main 2 cursors to flicker if in options menu
      AND #$01
      BEQ @Normal
      RTS

   @Normal:
    JSR DrawMainCursor
    JMP DrawSecondCursor

DrawMainCursor:
    LDX #$04
    LDA #$C0       ; attributes ; palette and flipping
    STA oam+2, X
    LDA #$40
    STA oam+6, X
    LDA #$80
    STA oam+10, X
    LDA #$00
    STA oam+14, X

    LDY cursor_y
    LDA Cursor_Game_Y, Y
    PHA
    LDY cursor_x
    LDA Cursor_Game_X, Y
    TAY
    PLA
    JMP DrawCursor_SetCoords

DrawSecondCursor:
    LDA cursor
    BMI :+
        RTS
  : LDX #$14
    LDA #$C1       ; attributes ; palette and flipping
    STA oam+2, X
    LDA #$41
    STA oam+6, X
    LDA #$81
    STA oam+10, X
    LDA #$01
    STA oam+14, X

    LDY cursor2_x
    LDA Cursor_Possibilities_X, Y
    TAY
    LDA #$2F       ; flow into...

DrawCursor_SetCoords: ; get Y coordinate and write to all 4 subtiles
    STA oam, X
    STA oam+8, X
    CLC
    ADC #$08
    STA oam+4, X
    STA oam+12, X

    LDA #$FF       ; tile ID
    STA oam+1, X
    STA oam+5, X
    STA oam+9, X
    STA oam+13, X

    TYA            ; get X coordinate and write to all 4 subtiles
    STA oam+3, X
    STA oam+7, X
    CLC
    ADC #$08
    STA oam+11, X
    STA oam+15, X
    RTS

DrawMenuCursor:
    LDY cursor_dot_y
    LDA Cursor_MainMenu_Y, Y
    PHA
    LDA Cursor_MainMenu_X, Y
    TAY
    PLA    
    BNE :+

DrawOptionsDot:
    LDA cursor_dot
    BEQ @Done

    LDY cursor_dot_y 

    LDA abandon
    BEQ @Normal

    LDA Cursor_Options_Abandon_Y, Y
    LDY #$B0
    BNE :+

   @Normal:
    LDA Cursor_Options_Y, Y
    LDY #$88

  : LDX #$FC
    STA oam, X    ; Y position
    LDA #$00
    STA oam+1, X  ; tile ID
    STA oam+2, X  ; attributes
    TYA
    STA oam+3, X  ; X position

   @Done:
    RTS

Cursor_Game_Y:
    .byte $0F, $1F, $2F, $3F, $4F, $5F
Cursor_Game_X:
    .byte $08, $18, $28, $38, $48, $58, $68

Cursor_Possibilities_X:
    .byte $88, $98, $A8, $B8, $C8, $D8, $E8

Cursor_Options_Abandon_Y:
    .byte $5E, $66
Cursor_Options_Y:
    .byte $46, $4E, $56, $66
    
Cursor_MainMenu_Y:
    .byte $3E, $4E, $5E, $6E
Cursor_MainMenu_X:
    .byte $90, $90, $90, $A0


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;
;;          SPRITE DRAWING
;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
ClearOAM:
    LDX #$80
    LDA #$FF
   @Loop:
    STA $0200-1, X
    STA $0280-1, X
    DEX
    BNE @Loop

    ;; sprite index starts at $25 since the curors are hard-coded
    LDA #$24
    STA sprite
    RTS
    
ClearSpriteBuffer:
    LDA #$00
    TAX
   @Loop:
    STA spritebuffer, X
    DEX
    BNE @Loop
    RTS

DrawAllSprites:
    LDX #$00
    STX sprite_loop
   @Loop:
    LDX sprite_loop
    LDA spritebuffer, X
    BEQ @Done
    
    TAY
    DEY
    LDA sprite_anim
    BPL @Frame1
    
   @Frame2:
    INY
    
   @Frame1: 
    LDA spritebuffer+1, X
    STA sprite_x
    LDA spritebuffer+2, X
    STA sprite_y        
    TYA
    JSR DrawSprite
    
    LDA sprite_loop
    CLC
    ADC #$04
    STA sprite_loop
    BNE @Loop
    
   @Done:
    RTS   

DrawSprite:
    ASL A
    ASL A    
    ASL A
    TAY

    LDX sprite    
    LDA SpriteTable, Y
    STA sprite_shape   
    LDA SpriteTable+1, Y
    STA sprite_attr    ; sprite attributes
    
    JSR @QuickSprite    ; draw upper left
    JSR SpriteXInc  
    JSR @QuickSprite    ; draw upper right

    LDA sprite_shape   ; see if drawing 2 arrows or a square tile
    BMI @Done
    
   @Square: 
    LDA sprite_x
    SEC
    SBC #$08
    STA sprite_x
    LDA sprite_y
    CLC
    ADC #$08
    STA sprite_y

    JSR @QuickSprite    ; draw lower left
    JSR SpriteXInc    
 
   @QuickSprite:           ; then draw lower right, or third arrow
    INY
    LDA SpriteTable+1, Y
    STA oam+1, X      ; tile ID
    LDA sprite_y
    STA oam, X        ; Y pos
    LDA sprite_attr
    STA oam+2, X      ; attributes
    LDA sprite_x
    STA oam+3, X      ; X pos

    INX
    INX
    INX
    INX
    STX sprite
   @Done: 
    RTS

SpriteXInc:
    LDA sprite_x
    CLC
    ADC #$08
    STA sprite_x
    RTS

SpriteTable:
;     tile shape
;      |   attributes
;      |   |  tile IDs
.byte $80,$02,$2C,$2D,$00,$00,$00,$00 ; 0: <.?.>
.byte $80,$03,$EE,$EF,$00,$00,$00,$00 ; 1: NO
;.byte $00,$03,$2A,$2B,$3A,$3B,$00,$00 ; 1: NO
.byte $80,$00,$3C,$3D,$00,$00,$00,$00 ; 2: <-->   

.byte $00,$01,$E0,$E1,$F0,$F1,$00,$00 ; 3: squirrel
.byte $00,$01,$6E,$6F,$F0,$F1,$00,$00 ; 4: squirrel bob

.byte $00,$01,$E2,$E3,$F2,$F3,$00,$00 ; 5: rabbit
.byte $00,$01,$AE,$E3,$BE,$F3,$00,$00 ; 6: rabbit headbang

.byte $00,$02,$E4,$E5,$F4,$F5,$00,$00 ; 7: weasel
.byte $00,$02,$CE,$CF,$DE,$DF,$00,$00 ; 8: weasel flip

.byte $00,$01,$E6,$E7,$F6,$F7,$00,$00 ; 9: rat 
.byte $00,$01,$AF,$E7,$BF,$F7,$00,$00 ; 10: rat bop

.byte $00,$01,$E8,$E9,$F8,$F9,$00,$00 ; 11: bird
.byte $00,$01,$7E,$7F,$F8,$F9,$00,$00 ; 12: bird bob

.byte $00,$02,$EA,$EB,$FA,$FB,$00,$00 ; 13: frog
.byte $00,$02,$8E,$8F,$FA,$FB,$00,$00 ; 14: frog croak

.byte $00,$01,$EC,$ED,$FC,$FD,$00,$00 ; 15: snake
.byte $00,$01,$EC,$ED,$9E,$9F,$00,$00 ; 16: snake twitch

    
DrawSprite0:
    LDA #$F4  ; x pos
    STA oam+3
    LDA #$74  
    STA oam   ; y pos
    STA oam+1 ; tile ID - same! :D
    LDA #$20  ; attributes - behind background
    STA oam+2 
    RTS
    
AnimateAnimals:
    LDA game_over
    BEQ @NoAnimation

    LDA gametime
    CMP #30
    BCC @Frame1
   
   @Frame2:
    LDA #$80
    STA sprite_anim
    RTS
    
   @Frame1:
    LDA #$01
    STA sprite_anim
   @NoAnimation: 
    RTS
    
    
    
    
    
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;
;;          TIMER STUFF
;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;    
    

Update_Gametime:
    INC gametime   ; frames
    LDA gametime
    CMP #60
    BCC :+

    LDA #0         ; seconds
    STA gametime
    INC gametime+1
    LDA gametime+1
    CMP #60
    BCC :+

    LDA #0         ; minutes
    STA gametime+1
    INC gametime+2
    LDA gametime+2
    CMP #60
    BCC :+

    LDA #0          ; hours
    STA gametime+2
    INC gametime+3
    LDA gametime+3
    CMP #10
    BCC :+
    LDA #9
    STA gametime+3 ; cap at 9 hours

  : RTS

Print_Gametime_Play:
    LDA #>$2059
    LDX #<$2059
    JSR SetPPUAddress
    BNE Print_Gametime

Print_Gametime_GameOver:
    LDA #>$2059        ; for the game over screen
    LDX #<$2059        ; these coordinates will need to be updated!
    JSR SetPPUAddress
    BNE Print_Gametime

Print_Gametime_GameWon:
    LDA #>$2059        ; for the game won screen
    LDX #<$2059        ; these coordinates will need to be updated!
    JSR SetPPUAddress

Print_Gametime:
    LDX #$0C ; : tile

    LDA gametime+3 ; hours
    ORA #$30
    STA $2007
    STX $2007

    LDA gametime+2 ; minutes
    JSR Convert_Number
    STY $2007
    STA $2007
    STX $2007

    LDA gametime+1 ; seconds
    JSR Convert_Number
    STY $2007
    STA $2007
    RTS

PrintPuzzleNumber:
    JSR SetPPUAddress
    LDA puzzle
    LDX #$00
    JSR Convert_LargeNumber
    PHA
    TXA
    ORA #$30
    STA $2007
    PLA
    STY $2007
    STA $2007
    JMP SetScroll

Convert_LargeNumber: ; up to 255
    CMP #100
    BCC Convert_Number

    SBC #100
    INX
    BNE Convert_LargeNumber

Convert_Number: ; up to 99
    LDY #$00

   @Loop:
    CMP #10
    BCC @Under10

    SBC #10
    INY
    BNE @Loop

   @Under10:
    ORA #$30
    PHA
    TYA
    ORA #$30
    TAY
    PLA
    RTS

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;
;;          SCREEN DRAWING ROUTINES
;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;   

ClearNametable:
    LDA #$20
    LDX #$00
    JSR SetPPUAddress

    JSR @Clear

    LDA #$28
    JSR SetPPUAddress

   @Clear:
    LDA #$67
    LDY #$04

   @OuterLoop:
    LDX #$F0
   @Loop:
    STA $2007
    DEX
    BNE @Loop
    DEY
    BNE @OuterLoop

    TYA
    LDX #$40
   @NameTable:
    STA $2007
    DEX
    BNE @NameTable
    RTS


LoadGamePalette:
   ; load palettes
    JSR WaitForVBlank
    LDA #<GamePalette-$E0 ; slight trickery here...
    STA tmp_pointer
    LDA #>GamePalette-$01
    STA tmp_pointer+1
    LDY #$E0          ; start with Y = 0 - $20

    LDA #$3F
    LDX #$00
    JSR SetPPUAddress

    INX               ; X = #01 to make sure the loop exits
    BNE Load_CHR_Loop

LoadPuzzleTiles:
    LDA #<CHR
    STA tmp_pointer
    LDA #>CHR
    STA tmp_pointer+1

    LDA #$00
    TAX
    JSR SetPPUAddress

    TAY
    LDX #$10

Load_CHR_Loop:
    LDA (tmp_pointer), Y
    STA $2007
    INY
    BNE Load_CHR_Loop
    INC tmp_pointer+1
    DEX
    BNE Load_CHR_Loop
    RTS

Decompress_Loop:
    LDA (tmp_pointer), Y
    BEQ @Done
    BPL @Write
    
    CMP #$F0
    BCC @Write
    
    AND #$1F      ; remove high bit
    ;PHA
 ;   INY
 ;   BNE :+
 ;    INC tmp_pointer+1
 ; : ;LDA (tmp_pointer), Y
    TAX
    ;PLA
    LDA #$67
    DEX

   @WriteLoop:
    STA $2007
    DEX
    BNE @WriteLoop

   @Write:
    STA $2007
    INY
    BNE Decompress_Loop
    INC tmp_pointer+1
    JMP Decompress_Loop

   @Done:
    RTS



DrawBox:
    ASL A
    ASL A
    TAY
    LDA #$00
    STA box_overdraw

    LDA BoxList+3, Y
    STA box_height
    LDA BoxList+2, Y
    STA box_width
    LDX BoxList+1, Y
    STX dest+1
    LDA BoxList, Y
    BPL :+
        INC box_overdraw
    AND #$7F
  : STA dest

    JSR SetPPUAddress

    LDY #$FF
   @Top:
    JSR @Row

   @Middle:
    LDY #2
    JSR @Row
    DEC box_height
    BNE @Middle

   @Row:
    INY
    LDX box_width
    JSR @DrawTile
    INY

    LDA BoxTiles, Y
   @RowLoop:
    STA $2007
    DEX
    BNE @RowLoop

    LDA box_overdraw
    BEQ @NoOverdraw

    ;; box is going to draw this next tile in the wrong place, so...
    LDA dest
    STA $2006
    LDA dest+1
    SEC
    SBC #$20
    ADC box_width
    CMP #$FF
    BNE @Fix
    ADC #0

   @Fix:
    STA $2006

   @NoOverdraw:
    INY
    JSR @DrawTile

    LDA dest+1
    CLC
    ADC #$20
    STA dest+1
    TAX
    LDA dest
    ADC #0
    STA dest
    JMP SetPPUAddress

   @DrawTile:
    LDA BoxTiles, Y
    STA $2007
    RTS

BoxTiles:
    .byte $01, $02, $03
    .byte $04, $67, $05
    .byte $06, $07, $08

BoxList:
    ;; start address, width, height
    ;; high bit set in first byte of start address if the box crosses the nametable edge
    .byte $20, $21, 14, 12  ; 0 game area
    .byte $20, $31, 5,  1   ; 1 puzzle #
    .byte $A0, $38, 7,  1   ; 2 timer
    .byte $A0, $91, 14, 9   ; 3 possibilites/options
    .byte $21, $E1, 6,  12  ; 4 vert. clues
    .byte $21, $E9, 6,  12  ; 5
    .byte $21, $F1, 6,  12  ; 6
    .byte $A1, $F9, 6,  12  ; 7
    .byte $A8, $21, 30, 4   ; 8 horz. clues
    .byte $A8, $E1, 30, 4   ; 9
    .byte $22, $12, 11, 3   ; 10 title puzzle number


NewTile_LUT:
.byte $04, $08, $0C, $10, $14, $18

Draw_NewTile:
    LDA drawjob
    BMI :+               ; do nothing if the high bit isn't set
        RTS

  : AND #$7F
    STA drawjob          ; remove high bit and save, marking the job as done

    LDA #$02             ; highest byte will always be $2x
    STA dest              

    LDY cursor_y
    LDA NewTile_LUT, Y   ; use cursor Y position to get this value

    ASL A                ; this turns $04 into $2040, and $18 into $2180
    ROL dest
    ASL A
    ROL dest
    ASL A
    ROL dest
    ASL A
    ROL dest

    STA tmp+1            ; save for later calculations

    LDA cursor_x         ; but the low bit still needs an offset!
RemoveOldTile_EntryPoint:    
    ASL A
    ADC #$02             ; double the cursor X position and add +2, then combine with tmp+2
    ORA tmp+1
    STA dest+1            ; dest and dest+1 are now $2x, $xx: a PPU address for the tile to draw to

    LDY dest
    STY $2006
    STA $2006

DrawStaticTile:
    LDA drawtile
    AND #$FE             ; tile IDs will never have a low bit set, as they always use the upper left corner
    TAY
    INY                  ; add 1 to the tile ID to draw the upper right corner
    STA $2007
    STY $2007

    LDA dest             ; re-write high byte of address
    STA $2006
    LDA dest+1            ; but add $20 to low byte to draw one row lower
    CLC
    ADC #$20
    STA $2006

    LDA drawtile         ; same as before but...
    AND #$FE
    ORA #$10             ; ORA $10 to get the bottom two tiles!
    TAY
    INY
    STA $2007
    STY $2007

    LDA game_over
    BNE :+               ; skip attributes if not in gameplay
    
    JSR UpdateTileAttribute

  : LDA drawtile         ; now see if the drawtile value had the low bit set
    AND #$01
    BEQ @Done
    
    ; if so, need to remove the tile that was just drawn from another spot
    LDA oldtile          ; instead of using cursor_x, use the value saved here when the dupe was found
    LDY #$2E             ; empty "+" tile ID
    STY drawtile         ; also removes the trigger for doing this!
    BNE RemoveOldTile_EntryPoint

   @Done:
    RTS

Print:
    ASL A
    TAX
    LDA TextStrings, X
    STA text
    LDA TextStrings+1, X
    STA text+1

    LDA TextPositions+1, X
    STA dest
    LDA TextPositions, X
    STA dest+1
    DEC text+1
    ;; this will be incremented before drawing

    LDA #1
    STA row
    LDY #$FF

   @Newline:
    LDA dest
    LDX dest+1
    JSR SetPPUAddress

   @Loop:
    INY
    BNE :+
    INC text+1
  : LDA (text), Y
    BEQ @Done
    CMP #$FF
    BEQ @NextLine
    CMP #$01
    BEQ @SpaceLine
    
   @Draw:
    STA $2007
    JMP @Loop
   
   @SpaceLine:
    INY
    BNE :+
    INC text+1
  : LDA (text), Y
    TAX
    LDA #$67
   @Spaces:
    STA $2007
    DEX
    BNE @Spaces
    JMP @Loop

   @NextLine:
    LDA dest+1
    CLC
    ADC #$20
    STA dest+1
    BCC :+
        LDA dest
        ADC #$00
        STA dest
    
  : LDA soft2001
    BEQ @Newline
        INC row
        LDA row
        AND #$04
        BEQ @Newline
        TYA
        PHA
        JSR GameFrame_Printing
        LDA #>oam
        STA $4014        
        LDA #01
        STA row
        PLA
        TAY
    JMP @Newline

   @Done:
    RTS

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;
;;          MISC NES STUFF
;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


TurnOffScreen:
    JSR ClearOAM  ; clear OAM for when the menu is returned to after gameplay
    STX soft2001
    JSR WaitForVBlank
    ;; turn off screen and wait for VBlank for drawing palettes
    LDA #>oam
    STA $4014     
    RTS

MultiplyXA:
;; Using Tepples' first method from - https://wiki.nesdev.com/w/index.php/8-bit_Multiply
;; Because I would probably have figured it out on my own after a few days and written
;; something basically almost exactly the same... so just saving a few days.
    LSR A
    STA mult_A
    STX mult_X
    LDA #0
    LDX #8

   @Loop:
    BCC @Next
    CLC
    ADC mult_X

   @Next:
    ROR A
    ROR mult_A
    DEX
    BNE @Loop

    TAX
    LDA mult_A
    RTS

SetPPUAddress:
    STA $2006
    STX $2006
    RTS

.align $100

;; [18:46] Fiskbit: This is not a good way to wait for vblank, FYI. It works, but it can miss frames altogether, causing you to wait longer.
;; [18:47] Fiskbit: The reliable way is to have NMI enabled, have the NMI set a variable, and wait in a loop outside the NMI for that variable to change.
;; [18:48] Fiskbit: For example, maybe you have a frame_counter variable that is incremented by the NMI each frame. Then you can do this:
;;   LDA frame_counter
;;  -
;;   CMP frame_counter
;;   BEQ -
;; [18:49] Fiskbit: Once the NMI increments the counter, this will be able to escape the loop.
;; [18:55] Jiggers: It doesn't matter what the variable's value actually is?
;; [18:56] Fiskbit: The example code compares the variable to itself. Therefore, it only matters when the variable changes to any other value.
;; [18:59] Jiggers: And is the frame_counter variable automatic... or is that something I'd have to set myself?
;; [19:00] Fiskbit: Your NMI would have to increment the variable every time it runs.

;; JIGS - gotta look into this, the cursor sometimes blips when its in flickering mode

WaitForVBlank:
    LDA $2002      ; check VBlank flag
    BMI @Wait

    LDA #0
   @Loop:
    SEC
    SBC #$01
    BNE @Loop

   @Wait:
    LDA soft2000   ; Load desired PPU state
    ORA #$80       ; flip on the Enable NMI bit
    STA $2000      ; and write it to PPU status reg

   @ClueCheck:
    LDA clues
    BMI @Paused
    AND #$7F
    BEQ OnIRQ      ; normal view

   @ClueSwap:      ; secondary clues view
    LDA $2002
    BEQ @ClueSwap

    LDY #$08
    LDA #$21
    LDX #$2C       ; waits a few scanlines for H-blank so as not to draw weird dots on the screen
  : DEX
    BNE :-

    STX $2001
    STY $2006
    STA $2006
    LDA #$1E
    STA $2001      ; turn on screen
    BNE OnIRQ
    
   @Paused:
    LDA $2002
    BEQ @Paused

    LDY #$0A
    LDA #$C1
    LDX #$2C       ; waits a few scanlines for H-blank so as not to draw weird dots on the screen
  : DEX
    BNE :-

    STX $2001
    STY $2006
    STA $2006
    LDA #$1E
    STA $2001      ; turn on screen
    
    LDY #$03
   @NoScreen:
    DEX
    BNE @NoScreen
    DEY
    BNE @NoScreen
    STX $2001
    

OnIRQ:
    JMP OnIRQ

OnNMI:
    LDA soft2000
    STA $2000      ; set the PPU state
    LDA $2002      ; clear VBlank flag and reset 2005/2006 toggle
    LDA soft2001
    STA $2001
    PLA
    PLA
    PLA            ; pull the RTI return info off the stack
    RTS            ; return to the game


SetScroll:
    LDA #$08   ; shifted by 1 tile
    STA $2005
    LDA #$00
    STA $2005
    RTS


Banks:              ; Write to this table to switch banks.
   .byte $00, $01, $02, $03, $04, $05, $06

Swap:
    STY current_bank      ; save the current bank in RAM so the NMI handler can restore it

Swap_NoSave:
    LDA Banks, Y      ; read a byte from the banktable
    STA Banks, Y      ; and write it back, switching banks
    RTS


.segment "VECTORS"

  .WORD OnNMI
  .WORD OnReset
  .WORD OnIRQ     ;IRQ vector points to an infinite loop (IRQs should never occur)