.include "Constants.inc"
.include "variables.inc"
.feature force_range
.segment "BANK_0F"

CHR:
.incbin "Puzzle.chr"

RNG_DATA:


TextStrings:
.word START         ; #0
.word GAME          ; #1
.word PAUSED        ; #2
.word P_NO          ; #3
.word POSSIBILITIES ; #4
.word OPTIONS       ; #5
.word PUZZLE_NO     ; #6
.word ON            ; #7
.word OFF           ; #8
.word OFF           ; #9
.word GIVEUP        ; #10
.word GAMEOVER      ; #11
.word WINNER        ; #12
.word STORY         ; #13

TextPositions:
.word $0000 ; 0
.word $2AEF ; 1
.word $2B0E ; 2
.word $2052 ; 3
.word $20B2 ; 4
.word $2111 ; 5
.word $0000 ; 6
.word $213C ; 7 - SFX ON
.word $213C ; 8 - SFX OFF
.word $215C ; 9 - Music OFF
.word $2132 ; 10
.word $0000 ; 11
.word $0000 ; 12
.word $0000 ; 13


START:
.byte $22,$23,$10,$21,$23,$67 ;; flows into GAME to print "START GAME"

GAME:
.byte $16,$10,$1C,$14,$FF

PAUSED:
.byte $1F,$10,$24,$22,$14,$13,$FF

P_NO:
.byte $1F,$0D,$FF

POSSIBILITIES:
.byte $1F,$1E,$22,$22,$18,$11,$18,$1B,$18,$23,$18,$14,$22,$0C,$FE
.byte $FE
.byte $8E,$0A,$FF

OPTIONS:
.byte $09,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$FE
.byte $04,$67,$22,$1E,$24,$1D,$13,$67,$15,$27,$67,$FE
.byte $04,$67,$1C,$24,$22,$18,$12,$84,$FE
.byte $04,$67,$11,$1E,$21,$13,$14,$21,$84,$FE
.byte $04,$89,$FE
.byte $04,$67,$10,$11,$10,$1D,$13,$1E,$1D,$67,$16,$10,$1C,$14,$FF

PUZZLE_NO:
.byte $1F,$24,$29,$29,$1B,$14,$67,$0D,$0C,$FF

ON:
.byte $67,$1E,$1D,$67,$FF

OFF:
.byte $1E,$15,$15,$67,$FF

GIVEUP:
.byte $16,$18,$25,$14,$67,$24,$1F,$67,$22,$10,$25,$18,$1D,$16,$FE
.byte $67,$23,$17,$14,$67,$10,$13,$1E,$21,$10,$11,$1B,$14,$FE
.byte $1B,$18,$0B,$1B,$67,$12,$21,$18,$23,$23,$14,$21,$22,$0E,$FE
.byte $86,$28,$14,$22,$FE
.byte $86,$1D,$1E,$EF,$85,$FF

GAMEOVER:
.byte $13,$14,$22,$1F,$18,$23,$14,$67,$23,$10,$1A,$18,$1D,$16,$82,$0C,$82,$0C,$FE
.byte $67,$28,$1E,$24,$67,$15,$10,$18,$1B,$14,$13,$67,$23,$1E,$67,$21,$14,$22,$12,$24,$14,$FE
.byte $67,$23,$17,$14,$67,$10,$1D,$18,$1C,$10,$1B,$22,$67,$15,$21,$1E,$1C,$67,$23,$17,$14,$FE
.byte $25,$18,$1B,$14,$67,$13,$24,$1D,$16,$14,$1E,$1D,$22,$67,$1E,$15,$67,$1B,$1E,$16,$18,$12,$0F,$FE
.byte $67,$23,$17,$18,$22,$67,$22,$17,$10,$1C,$14,$67,$1C,$10,$28,$67,$17,$10,$24,$1D,$23,$FE
.byte $82,$28,$1E,$24,$21,$67,$22,$1E,$24,$1B,$67,$15,$1E,$21,$67,$23,$17,$14,$FE
.byte $82,$21,$14,$22,$23,$67,$1E,$15,$67,$28,$1E,$24,$21,$67,$13,$10,$28,$22,$0F,$FE
.byte $86,$1E,$21,$67,$1D,$1E,$23,$0F,$FE
.byte $84,$14,$18,$23,$17,$14,$21,$67,$26,$10,$28,$0F,$0F,$0F,$FE
.byte $67,$23,$17,$14,$67,$20,$24,$14,$14,$1D,$67,$26,$18,$1B,$1B,$67,$15,$14,$10,$22,$23,$0F,$FF

WINNER:
.byte $67,$26,$18,$23,$17,$67,$28,$1E,$24,$21,$67,$1C,$18,$16,$17,$23,$28,$67,$11,$21,$10,$18,$1D,$FE
.byte $1F,$1E,$26,$14,$21,$22,$67,$28,$1E,$24,$67,$26,$14,$21,$14,$67,$10,$11,$1B,$14,$67,$23,$1E,$FE
.byte $82,$21,$14,$1B,$14,$10,$22,$14,$67,$23,$17,$14,$67,$12,$10,$1F,$23,$24,$21,$14,$13,$FE
.byte $83,$12,$21,$18,$23,$23,$14,$21,$22,$67,$11,$10,$12,$1A,$67,$18,$1D,$23,$1E,$FE
.byte $87,$23,$17,$14,$67,$26,$18,$1B,$13,$EF,$FE
.byte $FE
.byte $67,$23,$17,$14,$28,$67,$26,$14,$21,$14,$67,$25,$14,$21,$28,$67,$17,$10,$1F,$1F,$28,$EF,$FE
.byte $82,$1E,$1D,$14,$67,$1E,$15,$67,$23,$17,$14,$1C,$67,$11,$18,$23,$67,$28,$1E,$24,$FE
.byte $85,$11,$24,$23,$67,$18,$23,$22,$67,$1E,$1A,$10,$28,$0F,$FE
.byte $FE
.byte $84,$24,$1D,$15,$1E,$21,$23,$24,$1D,$10,$23,$14,$1B,$28,$0F,$0F,$0F,$FE
.byte $23,$17,$14,$28,$67,$26,$14,$21,$14,$67,$12,$10,$1F,$23,$24,$21,$14,$13,$67,$10,$16,$10,$18,$1D,$0F,$FE
.byte $FE
.byte $85,$1D,$14,$27,$23,$67,$1F,$24,$29,$29,$1B,$14,$0E,$FF

STORY:
.byte $14,$25,$18,$1B,$67,$20,$24,$14,$14,$1D,$67,$1C,$14,$12,$17,$10,$1D,$18,$12,$10,$67,$17,$10,$22,$FE
.byte $67,$22,$23,$1E,$1B,$14,$1D,$67,$10,$26,$10,$28,$67,$23,$17,$14,$67,$22,$1C,$10,$1B,$1B,$FE
.byte $67,$10,$1D,$18,$1C,$10,$1B,$22,$67,$1E,$15,$67,$23,$17,$14,$67,$26,$1E,$1E,$13,$22,$0F,$FE
.byte $23,$17,$14,$28,$67,$22,$24,$15,$15,$14,$21,$67,$18,$1D,$67,$12,$10,$16,$14,$22,$FE
.byte $1B,$1E,$12,$1A,$14,$13,$67,$11,$28,$67,$1B,$1E,$16,$18,$12,$67,$1F,$24,$29,$29,$1B,$14,$22,$0F,$FE
.byte $23,$17,$14,$67,$22,$14,$25,$14,$1D,$67,$17,$14,$21,$1E,$14,$22,$67,$22,$14,$14,$1A,$FE
.byte $1E,$1D,$14,$67,$1E,$15,$67,$22,$1C,$10,$21,$23,$14,$22,$23,$67,$11,$21,$10,$18,$1D,$FE
.byte $1F,$1E,$26,$14,$21,$22,$67,$23,$1E,$67,$16,$24,$18,$13,$14,$67,$23,$17,$14,$1C,$FE
.byte $23,$17,$21,$1E,$24,$16,$17,$67,$17,$14,$21,$67,$13,$24,$1D,$16,$14,$1E,$1D,$22,$67,$10,$1D,$13,$FE
.byte $15,$21,$14,$14,$67,$23,$17,$14,$67,$1F,$1E,$1E,$21,$67,$12,$21,$18,$23,$23,$14,$21,$22,$FE
.byte $11,$14,$15,$1E,$21,$14,$67,$23,$17,$14,$67,$20,$24,$14,$14,$1D,$67,$13,$14,$25,$1E,$24,$21,$22,$FE
.byte $23,$17,$14,$1C,$67,$10,$23,$67,$17,$14,$21,$67,$26,$18,$1B,$13,$67,$15,$14,$10,$22,$23,$EF
.byte $FE
.byte $FE
.byte $86,$10,$21,$14,$1D,$23,$67,$28,$1E,$24,$0E,$FF


;; This uses some RLE:
;; High bit set = remove high bit, that's your tile ID
;; then do it by the NEXT tile's amount!
;; No high bit = just print that one tile.

;; Title screen will go here.


GamePalette:
.byte $3F,$2D,$10,$30
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
.byte $3F,$01,$11,$21
.byte $3F,$0C,$1C,$2C
.byte $3F,$06,$16,$26

BorderPalettes:
.byte $2D,$10 ; 00
.byte $00,$3D ; 01
.byte $01,$21 ; 02
.byte $02,$22 ; 03
.byte $03,$23 ; 04
.byte $04,$24 ; 05
.byte $05,$25 ; 06
.byte $06,$26 ; 07
.byte $07,$27 ; 08
.byte $08,$28 ; 09
.byte $09,$29 ; 0A
.byte $0A,$2A ; 0B
.byte $0B,$2B ; 0C
.byte $0C,$2C ; 0D
.byte $01,$11 ; 0E
.byte $02,$12 ; 0F
.byte $03,$13 ; 10
.byte $04,$14 ; 11
.byte $05,$15 ; 12
.byte $06,$16 ; 13
.byte $07,$17 ; 14
.byte $08,$18 ; 15
.byte $09,$19 ; 16
.byte $0A,$1A ; 17
.byte $0B,$1B ; 18
.byte $0C,$1C ; 19

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

    TAX
    TXS            ; transfer $FF to X and set stack pointer

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

    LDY #$00       ; swap to bank 0
    JSR Swap

MainMenu:
    LDA #$01
    STA options
    STA puzzle

LoadGame:
    LDA #$00
    STA soft2001
    JSR WaitForVBlank
    ;; turn off screen and wait for VBlank for drawing palettes

    ; load palettes
    LDA #<GamePalette-$E0 ; slight trickery here...
    STA tmp_pointer
    LDA #>GamePalette-$01
    STA tmp_pointer+1
    LDY #$E0          ; start with Y = 0 - $20

    LDA #$3F
    LDX #$00
    JSR SetPPUAddress

    INX               ; X = #01 to make sure the loop exits
    JSR Load_CHR_Loop

    ; load background tiles
    LDA #<CHR
    STA tmp_pointer
    LDA #>CHR
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

    LDA #9
    STA tmp
   @BoxLoop:
    LDA tmp
    JSR DrawBox
    DEC tmp
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
    LDA #$01
    STA tmp
   @PrintLoop:
    JSR Print
    INC tmp
    LDA tmp
    CMP #$06
    BNE @PrintLoop

   @PrintPuzzleNumber:
    LDA #>$2054
    LDX #<$2054
    JSR PrintPuzzleNumber
    ;; ^ this also sets the scroll

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
    STA update_attr

    LDA #$00         ; clear cursor variables
    STA cursor
    STA cursor_x
    STA cursor_y
    STA cursor2_x
    STA cursor2_y
    STA cursor_dot
    STA cursor_dot_y
    
    STA music_track

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
    

MenuFrame:
    JSR WaitForVBlank
    LDA #>oam
    STA $4014
    LDA drawjob
    BEQ :+
        LDA #>$2022
        LDX #<$2022
        JSR PrintPuzzleNumber

  : JSR ClearOAM
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
    LDA #10
    JMP Print

   @RestoreOptions:    
    LDA #$00
    STA abandon
    STA cursor_dot_y
    STA cursor_dot
    LDA #5
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
    LDA #$09
    JSR Print
   
   @SFX:
    LDA options
    AND #$40
    BNE @SFXOff

   @SFXOn:
    LDA #$07
    JSR Print
    BEQ @Border

   @SFXOff:
    LDA #$08
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
        JMP MainMenu

   @Check_A:
    LDA joy_a
    BEQ @Check_Select
        LDA game_over
        BMI @NextPuzzle ; puzzle won, load next puzzle
        BEQ @ReloadMenu ; puzzle lost, return to menu

        LDA cursor_dot_y
        ASL A           ; else, in main menu, jump to chosen option
        TAX
        LDA MenuList, X
        STA tmp_pointer
        LDA MenuList+1, X
        STA tmp_pointer+1
        PLA
        PLA
        JMP tmp_pointer

   @Check_Select:
    LDA joy_select
    BEQ @Check_Start
        INC puzzle
        INC drawjob
        BNE @Done

   @Check_Start:
    LDA joy_start
    BEQ @Done
        JMP PauseGame

   @Done:
    JMP ClearButtons

   @ReloadMenu:
    PLA
    PLA
    JMP MainMenu

   @NextPuzzle:
    INC puzzle
    PLA
    PLA
    JMP LoadGame

MenuList:
    .word LoadGame
    .word ViewStory
    .word ViewCredits
    .word QuitGame

QuitGame:
ViewStory:
ViewCredits:







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
    CLC
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


Refill_Possibility:
    LDY row
    LDX #$06
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



Choose_Possibility:
    LDA #$00
    STA oldtile

    LDA cursor_y
    ASL A
    ASL A
    ASL A
    STA row             ; save start of row
    CLC
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
    BEQ @NothingToReplace
    
    STA oldtile

   @NothingToReplace:
    LDY row             ; Y = start of the row
    LDX #$06

   @BitLoop:           
    LDA selected, Y     ; if the chosen tile was already set, it needs to be unset first
    CMP newtile
    BNE @NoMatch        ; if they don't match, continue on...

    INC drawtile        ; tells the tile drawing routine to remove the old tile!
    STY tmp
    STX tmp+1
    JSR Refill_Possibility
    LDY tmp
    LDX tmp+1
    EOR #$FE            ; swap the values 
    EOR removed, Y      ; then swap out the removed bits
    ORA oldtile         ; and swap in the old tile
    STA unsolved, Y     ; hopefully...
    JMP @Next
    
   @NoMatch: 
    CMP #$00            ;     
    BNE @Next           ; if it was set, don't change this byte
    
    LDA removed, Y      ; see if the player removed the old tile from this position's list
    CMP oldtile
    BEQ @SetNew         ; if they did, don't want to add it back
    
    LDA unsolved, Y     ; else, add it back! 
    ORA oldtile
    STA unsolved, Y
    
   @SetNew:
    LDA unsolved, Y
    AND newtile
    EOR unsolved, Y     ; finally, remove the chosen bit from the possibilities
    STA unsolved, Y     ; this should ONLY remove the bit, never add it back in

   @Next:
    INY
    DEX
    BPL @BitLoop

    LDY position
    LDA newtile
    STA selected, Y     ; and save it to the tile in the player selected puzzle RAM
    STA unsolved, Y     ; and the unsolved version, removing other tile images from the possibilities

    LDA tmp             ; location of tile to undraw
    AND #$07            ; get x coordinate
    STA position
    LDA #$81
    STA drawjob         ; mark "draw tile" and "update possibilities" jobs as "to do"
    LDA #$00
    STA cursor    

   @Done:
    RTS





Possibilities_Attributes: ;; drawn to 23C8
;.byte %10 00 00 00, %01 11 00 00, %00 10 00 00, %11 10 00 00
.byte $80,$70,$60,$E0 ; heroes
.byte $40,$70,$70,$E0 ; weapons
.byte $40,$90,$20,$40 ; dungeon
.byte $80,$40,$90,$40 ; town
.byte $80,$50,$90,$40 ; travel
.byte $40,$90,$50,$60 ; critters


;; what palette each tile in each row uses
Attribute_LUT:
; tile  1,   2,   3,   4,   5,   6,   7,  xx
.byte $02, $03, $01, $02, $01, $02, $03, $00 ; heroes   : scoundrel, bard, healer, spy, barbarian, dragon, priestess 
.byte $01, $03, $01, $03, $01, $02, $03, $00 ; weapons  : bow, sword, staff, knife, hammer, shield, rod
.byte $01, $01, $02, $02, $00, $00, $01, $00 ; dungeon  : chest, opened chest, torch, ladder, skull, key, door
.byte $02, $00, $01, $01, $02, $00, $01, $00 ; town     : tree, fence, weeds, grave, sign, fountain, inn
.byte $02, $01, $01, $01, $02, $00, $02, $00 ; travel   : boat, airship, carriage, caravan, canoe, sub, boots 
.byte $01, $01, $02, $01, $01, $02, $01, $00 ; critters : squirrel, bun, weasel, rat, bird, frog, snake



Attribute_Position_LUT:
.byte $C0, HIGH_LEFT,  $C1, LOW_LEFT, $C1, LOW_LEFT, $C2, LOW_LEFT, $C2, LOW_LEFT, $C2, LOW_LEFT, $C3, LOW_LEFT, $00, $00
.byte $C8, HIGH_RIGHT, $C1, LOW_LEFT, $C1, LOW_LEFT, $C2, LOW_LEFT, $C2, LOW_LEFT, $C2, LOW_LEFT, $C3, LOW_LEFT, $00, $00
.byte $C8, HIGH_LEFT,  $C1, LOW_LEFT, $C1, LOW_LEFT, $C2, LOW_LEFT, $C2, LOW_LEFT, $C2, LOW_LEFT, $C3, LOW_LEFT, $00, $00
.byte $D0, HIGH_RIGHT, $C1, LOW_LEFT, $C1, LOW_LEFT, $C2, LOW_LEFT, $C2, LOW_LEFT, $C2, LOW_LEFT, $C3, LOW_LEFT, $00, $00
.byte $D0, HIGH_LEFT,  $C1, LOW_LEFT, $C1, LOW_LEFT, $C2, LOW_LEFT, $C2, LOW_LEFT, $C2, LOW_LEFT, $C3, LOW_LEFT, $00, $00
.byte $D8, HIGH_RIGHT, $C1, LOW_LEFT, $C1, LOW_LEFT, $C2, LOW_LEFT, $C2, LOW_LEFT, $C2, LOW_LEFT, $C3, LOW_LEFT, $00, $00


UpdateAttributes:

































MoveMenuCursor:
; Start Game
; Help
; Story
; Quit Game

MoveOptionCursor:
    LDA abandon
    BEQ :+
    
    LDY #$02 
    BNE @SaveMax

  : LDA #$04
   @SaveMax:
    STA cursor_y_max

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
    BNE @Done
    
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
    LDA Cursor_MainMenu_Y
    LDY #$88
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
    .byte $5F, $67
Cursor_Options_Y:
    .byte $47, $4F, $57, $67
Cursor_MainMenu_Y:
    .byte $50, $60, $70, $80

DrawSprite0:
    LDA #$F4  ; x pos
    STA oam+3
    LDA #$74  
    STA oam   ; tile ID
    STA oam+1 ; y pos - same! :D
    LDA #$20  ; attributes - behind background
    STA oam+2 
    RTS

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

ClearOAM:
    LDX #$80
    LDA #$FF
   @Loop:
    STA $0200-1, X
    STA $0280-1, X
    DEX
    BNE @Loop

    ;; sprite index starts at $25 since the curors are hard-coded
    LDA #$25
    STA sprite
    RTS

ClearNametable:
    LDA #$20
    LDX #$00
    JSR SetPPUAddress

    JSR @Clear

    LDA #$28
    ;LDX #$00
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





SetScroll:
    LDA #$08   ; shifted by 1 tile
    STA $2005
    LDA #$00
    STA $2005
    RTS


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
    BPL @Write

    ;; else, the high bit is set
    CMP #$FF
    BEQ @Done

    AND #$7F      ; remove high bit
    PHA
    INY
    BNE :+
     INC tmp_pointer+1
  : LDA (tmp_pointer), Y
    TAX
    PLA
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
    ;; starting address
    ;; width
    ;; height
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


NewTile_LUT:
.byte $04, $08, $0C, $10, $14, $18

Draw_NewTile:
    LDA drawjob
    BPL @Done            ; do nothing if the high bit isn't set

    AND #$7F
    STA drawjob          ; remove high bit and save, marking the job as done

    LDA #$02             ; highest byte will always be $2x
    STA tmp              

    LDY cursor_y
    LDA NewTile_LUT, Y   ; use cursor Y position to get this value

    ASL A                ; this turns $04 into $2040, and $18 into $2180
    ROL tmp
    ASL A
    ROL tmp
    ASL A
    ROL tmp
    ASL A
    ROL tmp

    STA tmp+2            ; save for later calculations

    LDA cursor_x         ; but the low bit still needs an offset!
   @RemoveOldTile_EntryPoint:    
    ASL A
    ADC #$02             ; double the cursor X position and add +2, then combine with tmp+2
    ORA tmp+2
    STA tmp+1            ; tmp and tmp+1 are now $2x, $xx, a PPU address for the tile to draw to

    LDY tmp
    STY $2006
    STA $2006

    LDA drawtile
    AND #$FE             ; tile IDs will never have a low bit set, as they always use the upper left corner
    TAY
    INY                  ; add 1 to the tile ID to draw the upper right corner
    STA $2007
    STY $2007

    LDA tmp              ; re-write high byte of address
    STA $2006
    LDA tmp+1            ; but add $20 to low byte to draw one row lower
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

    LDA drawtile         ; now see if the drawtile value had the low bit set
    AND #$01
    BEQ @Done
    
    ; if so, need to remove the tile that was just drawn from another spot
    LDA position         ; instead of using cursor_x, use the value saved here when the dupe was found
    LDY #$2E             ; empty "+" tile ID
    STY drawtile         ; also removes the trigger for doing this!
    BNE @RemoveOldTile_EntryPoint

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
    BMI @ControlCode
   @Draw:
    STA $2007
    JMP @Loop

   @ControlCode:
    CMP #$FF
    BEQ @Done
    CMP #$FE
    BEQ @NextLine
    CMP #$EF
    BEQ @Draw

    AND #$1F
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
    LDA soft2001
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

Banks:              ; Write to this table to switch banks.
   .byte $00, $01, $02, $03, $04, $05, $06

Swap:
    STY current_bank      ; save the current bank in RAM so the NMI handler can restore it

Swap_NoSave:
    LDA Banks, Y      ; read a byte from the banktable
    STA Banks, Y      ; and write it back, switching banks
    RTS

.byte "END OF BANK 0F"

.segment "VECTORS"

  .WORD OnNMI
  .WORD OnReset
  .WORD OnIRQ     ;IRQ vector points to an infinite loop (IRQs should never occur)