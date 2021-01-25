.include "Constants.inc"
.include "variables.inc"
.feature force_range
.segment "BANK_0F"

CHR:
.incbin "Puzzle.chr"




TextStrings:
.word START         ; #0
.word GAME          ; #1
.word PAUSED        ; #2
.word PUZZLE_NO     ; #3
.word POSSIBILITIES ; #4
.word OPTIONS       ; #5
.word ON            ; #6
.word OFF           ; #7
.word GIVEUP        ; #8
.word GAMEOVER      ; #9
.word WINNER        ; #10
.word STORY         ; #11

START:
.byte $22,$23,$10,$21,$23,$49

GAME:
.byte $16,$10,$1C,$14,$FF

PAUSED:
.byte $1F,$10,$24,$22,$14,$13,$FF

PUZZLE_NO:
.byte $1F,$24,$29,$29,$1B,$14,$49,$0D,$0C,$FF

POSSIBILITIES:
.byte $1F,$1E,$22,$22,$18,$11,$18,$1B,$18,$23,$18,$14,$22,$0C,$FF

OPTIONS:
.byte $1C,$24,$22,$18,$12,$0C,$FE
.byte $22,$15,$27,$0C,$FE
.byte $11,$1E,$21,$13,$14,$21,$0C,$FE
.byte $FE
.byte $10,$11,$10,$1D,$13,$1E,$1D,$49,$16,$10,$1C,$14,$FF

ON:
.byte $1E,$1D,$FF

OFF:
.byte $1E,$15,$15,$FF

GIVEUP:
.byte $16,$18,$25,$14,$49,$24,$1F,$49,$22,$10,$25,$18,$1D,$16,$FE
.byte $49,$23,$17,$14,$49,$10,$13,$1E,$21,$10,$11,$1B,$14,$FE
.byte $49,$1B,$18,$1B,$49,$10,$1D,$18,$1C,$10,$1B,$22,$0E,$FE
.byte $F6,$28,$14,$22,$FE
.byte $F6,$1D,$1E,$EF,$FF

GAMEOVER:
.byte $13,$14,$22,$1F,$18,$23,$14,$49,$23,$10,$1A,$18,$1D,$16,$F2,$0C,$F2,$0C,$F2,$FE
.byte $49,$28,$1E,$24,$49,$15,$10,$18,$1B,$14,$13,$49,$23,$1E,$49,$21,$14,$22,$12,$24,$14,$FE
.byte $49,$23,$17,$14,$49,$10,$1D,$18,$1C,$10,$1B,$22,$49,$15,$21,$1E,$1C,$49,$23,$17,$14,$FE
.byte $25,$18,$1B,$14,$49,$13,$24,$1D,$16,$14,$1E,$1D,$22,$49,$1E,$15,$49,$1B,$1E,$16,$18,$12,$0F,$FE
.byte $49,$23,$17,$18,$22,$49,$22,$17,$10,$1C,$14,$49,$1C,$10,$28,$49,$17,$10,$24,$1D,$23,$FE
.byte $F2,$28,$1E,$24,$21,$49,$22,$1E,$24,$1B,$49,$15,$1E,$21,$49,$23,$17,$14,$FE
.byte $F2,$21,$14,$22,$23,$49,$1E,$15,$49,$28,$1E,$24,$21,$49,$13,$10,$28,$22,$0F,$FE
.byte $F6,$1E,$21,$49,$1D,$1E,$23,$0F,$FE
.byte $F4,$14,$18,$23,$17,$14,$21,$49,$26,$10,$28,$0F,$0F,$0F,$FE
.byte $49,$23,$17,$14,$49,$20,$24,$14,$14,$1D,$49,$26,$18,$1B,$1B,$49,$15,$14,$10,$22,$23,$0F,$FF

WINNER:
.byte $49,$26,$18,$23,$17,$49,$28,$1E,$24,$21,$49,$1C,$18,$16,$17,$23,$28,$49,$11,$21,$10,$18,$1D,$FE
.byte $1F,$1E,$26,$14,$21,$22,$49,$28,$1E,$24,$49,$26,$14,$21,$14,$49,$10,$11,$1B,$14,$49,$23,$1E,$FE
.byte $F2,$21,$14,$1B,$14,$10,$22,$14,$49,$23,$17,$14,$49,$12,$10,$1F,$23,$24,$21,$14,$13,$FE
.byte $F3,$12,$21,$18,$23,$23,$14,$21,$22,$49,$11,$10,$12,$1A,$49,$18,$1D,$23,$1E,$FE
.byte $F7,$23,$17,$14,$49,$26,$18,$1B,$13,$EF,$FE
.byte $FE
.byte $49,$23,$17,$14,$28,$49,$26,$14,$21,$14,$49,$25,$14,$21,$28,$49,$17,$10,$1F,$1F,$28,$EF,$FE
.byte $F2,$1E,$1D,$14,$49,$1E,$15,$49,$23,$17,$14,$1C,$49,$11,$18,$23,$49,$28,$1E,$24,$FE
.byte $F5,$11,$24,$23,$49,$18,$23,$22,$49,$1E,$1A,$10,$28,$0F,$FE
.byte $FE
.byte $F4,$24,$1D,$15,$1E,$21,$23,$24,$1D,$10,$23,$14,$1B,$28,$0F,$0F,$0F,$FE
.byte $23,$17,$14,$28,$49,$26,$14,$21,$14,$49,$12,$10,$1F,$23,$24,$21,$14,$13,$49,$10,$16,$10,$18,$1D,$0F,$FE
.byte $FE
.byte $F5,$1D,$14,$27,$23,$49,$1F,$24,$29,$29,$1B,$14,$0E,$FF

STORY:
.byte $14,$25,$18,$1B,$49,$20,$24,$14,$14,$1D,$49,$1C,$14,$12,$17,$10,$1D,$18,$12,$10,$49,$17,$10,$22,$FE
.byte $49,$22,$23,$1E,$1B,$14,$1D,$49,$10,$26,$10,$28,$49,$23,$17,$14,$49,$22,$1C,$10,$1B,$1B,$FE
.byte $49,$10,$1D,$18,$1C,$10,$1B,$22,$49,$1E,$15,$49,$23,$17,$14,$49,$26,$1E,$1E,$13,$22,$0F,$FE
.byte $23,$17,$14,$28,$49,$22,$24,$15,$15,$14,$21,$49,$18,$1D,$49,$12,$10,$16,$14,$22,$FE
.byte $1B,$1E,$12,$1A,$14,$13,$49,$11,$28,$49,$1B,$1E,$16,$18,$12,$49,$1F,$24,$29,$29,$1B,$14,$22,$0F,$FE
.byte $23,$17,$14,$49,$22,$14,$25,$14,$1D,$49,$17,$14,$21,$1E,$14,$22,$49,$22,$14,$14,$1A,$FE
.byte $1E,$1D,$14,$49,$1E,$15,$49,$22,$1C,$10,$21,$23,$14,$22,$23,$49,$11,$21,$10,$18,$1D,$FE
.byte $1F,$1E,$26,$14,$21,$22,$49,$23,$1E,$49,$16,$24,$18,$13,$14,$49,$23,$17,$14,$1C,$FE
.byte $23,$17,$21,$1E,$24,$16,$17,$49,$17,$14,$21,$49,$13,$24,$1D,$16,$14,$1E,$1D,$22,$49,$10,$1D,$13,$FE
.byte $15,$21,$14,$14,$49,$23,$17,$14,$49,$1F,$1E,$1E,$21,$49,$12,$21,$18,$23,$23,$14,$21,$22,$FE
.byte $11,$14,$15,$1E,$21,$14,$49,$23,$17,$14,$49,$20,$24,$14,$14,$1D,$49,$13,$14,$25,$1E,$24,$21,$22,$FE
.byte $23,$17,$14,$1C,$49,$10,$23,$49,$17,$14,$21,$49,$26,$18,$1B,$13,$49,$15,$14,$10,$22,$23,$EF
.byte $FE
.byte $FE
.byte $F6,$10,$21,$14,$1D,$23,$49,$28,$1E,$24,$0E,$FF














;; This uses some RLE:
;; High bit set = remove high bit, that's your tile ID
;; then do it by the NEXT tile's amount! 
;; No high bit = just print that one tile.

GameArea_Nametable:
.byte $C9,$20
.byte $03,$01,$82,$0E,$03,$01,$82,$05,$03,$01,$82,$07
.byte $05,$04,$2E,$2F,$2E,$2F,$2E,$2F,$2E,$2F,$2E,$2F,$2E,$2F,$2E,$2F,$05,$04,$1F,$0D,$C9,$03,$05,$04,$49,$0C,$49,$49,$0C,$49,$49
.byte $08,$04,$3E,$3F,$3E,$3F,$3E,$3F,$3E,$3F,$3E,$3F,$3E,$3F,$3E,$3F,$05,$06,$87,$05,$08,$06,$87,$07
.byte $03,$04,$2E,$2F,$2E,$2F,$2E,$2F,$2E,$2F,$2E,$2F,$2E,$2F,$2E,$2F,$05,$01,$82,$0E
.byte $05,$04,$3E,$3F,$3E,$3F,$3E,$3F,$3E,$3F,$3E,$3F,$3E,$3F,$3E,$3F,$05,$04,$1F,$1E,$22,$22,$18,$11,$18,$1B,$18,$23,$18,$14,$22,$0C
.byte $05,$04,$2E,$2F,$2E,$2F,$2E,$2F,$2E,$2F,$2E,$2F,$2E,$2F,$2E,$2F,$05,$04,$C9,$0E
.byte $05,$04,$3E,$3F,$3E,$3F,$3E,$3F,$3E,$3F,$3E,$3F,$3E,$3F,$3E,$3F,$05,$04,$C9,$0E
.byte $0A,$04,$2E,$2F,$2E,$2F,$2E,$2F,$2E,$2F,$2E,$2F,$2E,$2F,$2E,$2F,$05,$09,$8B,$0E
.byte $05,$04,$3E,$3F,$3E,$3F,$3E,$3F,$3E,$3F,$3E,$3F,$3E,$3F,$3E,$3F,$05,$04,$C9,$0E
.byte $05,$04,$2E,$2F,$2E,$2F,$2E,$2F,$2E,$2F,$2E,$2F,$2E,$2F,$2E,$2F,$05,$04,$C9,$0E
.byte $05,$04,$3E,$3F,$3E,$3F,$3E,$3F,$3E,$3F,$3E,$3F,$3E,$3F,$3E,$3F,$05,$04,$C9,$0E
.byte $05,$04,$2E,$2F,$2E,$2F,$2E,$2F,$2E,$2F,$2E,$2F,$2E,$2F,$2E,$2F,$05,$04,$C9,$0E
.byte $05,$04,$3E,$3F,$3E,$3F,$3E,$3F,$3E,$3F,$3E,$3F,$3E,$3F,$3E,$3F,$05,$04,$C9,$0E
.byte $08,$06,$87,$0E,$08,$06,$87,$0E
.byte $03,$01,$82,$06,$03,$01,$82,$06,$03,$01,$82,$06,$03,$01,$82,$06
.byte $05,$04,$C9,$06,$05,$04,$C9,$06,$05,$04,$C9,$06,$05,$04,$C9,$06
.byte $05,$04,$C9,$06,$05,$04,$C9,$06,$05,$04,$C9,$06,$05,$04,$C9,$06
.byte $05,$04,$C9,$06,$05,$04,$C9,$06,$05,$04,$C9,$06,$05,$04,$C9,$06
.byte $05,$04,$C9,$06,$05,$04,$C9,$06,$05,$04,$C9,$06,$05,$04,$C9,$06
.byte $05,$04,$C9,$06,$05,$04,$C9,$06,$05,$04,$C9,$06,$05,$04,$C9,$06
.byte $05,$04,$C9,$06,$05,$04,$C9,$06,$05,$04,$C9,$06,$05,$04,$C9,$06
.byte $05,$04,$C9,$06,$05,$04,$C9,$06,$05,$04,$C9,$06,$05,$04,$C9,$06
.byte $05,$04,$C9,$06,$05,$04,$C9,$06,$05,$04,$C9,$06,$05,$04,$C9,$06
.byte $05,$04,$C9,$06,$05,$04,$C9,$06,$05,$04,$C9,$06,$05,$04,$C9,$06
.byte $05,$04,$C9,$06,$05,$04,$C9,$06,$05,$04,$C9,$06,$05,$04,$C9,$06
.byte $05,$04,$C9,$06,$05,$04,$C9,$06,$05,$04,$C9,$06,$05,$04,$C9,$06
.byte $05,$04,$C9,$06,$05,$04,$C9,$06,$05,$04,$C9,$06,$05,$04,$C9,$06
.byte $08,$06,$87,$06,$08,$06,$87,$06,$08,$06,$87,$06,$08,$06,$87,$06
.byte $C9,$0F,$16,$10,$1C,$14,$C9,$0D,$80,$40,$FF

HorizontalClues_Nametable:
.byte $C9,$0E,$1F,$10,$24,$22,$14,$13,$C9,$0C
.byte $03,$01,$82,$1E
.byte $05,$04,$C9,$1E
.byte $05,$04,$C9,$1E
.byte $05,$04,$C9,$1E
.byte $05,$04,$C9,$1E
.byte $08,$06,$87,$1E
.byte $03,$01,$82,$1E
.byte $05,$04,$C9,$1E
.byte $05,$04,$C9,$1E
.byte $05,$04,$C9,$1E
.byte $05,$04,$C9,$1E
.byte $08,$06,$87,$1E
.byte $C9,$FE,$C9,$FE,$C9,$24,$80,$40,$FF

Palette:
.byte $3F,$2D,$10,$30
.byte $3F,$17,$28,$30
.byte $3F,$06,$0A,$36
.byte $3F,$04,$15,$30

;; sprites
.byte $3F,$0A,$1A,$2A
.byte $3F,$01,$11,$21
.byte $3F,$0C,$1C,$2C
.byte $3F,$06,$16,$26




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

    ; load palettes
    JSR WaitForVBlank

    LDA #<Palette-$E0 ; slight trickery here...
    STA tmp_pointer
    LDA #>Palette-$01
    STA tmp_pointer+1
    LDY #$E0          ; start with Y = 0 - $20

    LDX #$00
    LDA #$3F
    STA $2006
    STX $2006         ; X = 0
    INX               ; then increment to make sure the loop exits
    
    JSR Load_CHR_Loop

    ; load background tiles
    LDA #<CHR
    STA tmp_pointer
    LDA #>CHR
    STA tmp_pointer+1

    LDY #0
    STY $2006
    STY $2006
    LDX #$10

    JSR Load_CHR_Loop 

    ; load sprites
    LDA #<CHR
    STA tmp_pointer
    LDA #>CHR
    STA tmp_pointer+1
    LDX #$10

    JSR Load_CHR_Loop

    ; load game area
    LDA #<GameArea_Nametable
    STA tmp_pointer
    LDA #>GameArea_Nametable
    STA tmp_pointer+1

    LDA #$20
    LDY #$00
    STA $2006
    STY $2006
    
    JSR Decompress_Loop
    
    ; load secondary clue area
    LDA #<HorizontalClues_Nametable
    STA tmp_pointer
    LDA #>HorizontalClues_Nametable
    STA tmp_pointer+1    
    
    LDA #$28
    LDY #$00
    STA $2006
    STY $2006
    
    JSR Decompress_Loop
    
    LDA #$C7
    STA puzzle
    JSR Generate_Puzzle

GameStart:
    LDA #1
    STA cursor    ; set cursor mode to "game" for now
    STA drawjob
    LDA #$00
    STA cursor_x
    STA cursor_y
    STA cursor2_x
    STA cursor2_y
    STA cursor_dot_y
    
   @PrintPuzzleNumber: 
    LDA #>$2054
    LDX #<$2054
    STA $2006
    STX $2006
    LDA puzzle
    LDX #$00
    JSR Convert_LargeNumber
    PHA
    TXA
    ORA #$30
    TAX
    PLA
    STX $2007
    STY $2007
    STA $2007   

    LDA #$FE
    LDX #48
   @ClearPuzzle:
    STA unsolved-1, X
    DEX
    BNE @ClearPuzzle

    LDA #$1E       ; turn on screen/clear emphasis
    STA soft2001
    JSR SetScroll

GameFrame:
    JSR WaitForVBlank
    LDA #>oam
    STA $4014
    JSR Update_Gametime
    JSR Draw_NewTile
    JSR Load_Possibilities
    JSR Print_Gametime_Play ; sets scroll 
    JSR ClearOAM
    JSR DrawSprite0
    JSR DrawCursor
    JSR UpdateJoy
    JSR MoveCursor
    JSR PlayerInput_Game
    JMP GameFrame

GameFrame_NoInput:
    JSR WaitForVBlank
    LDA #>oam
    STA $4014
    JSR Update_Gametime
    JSR Draw_NewTile
    JSR Load_Possibilities
    JSR Print_Gametime_Play ; sets scroll 
    JSR ClearOAM
    JSR DrawSprite0
    JMP DrawCursor   
    
MenuFrame:
    JSR WaitForVBlank
    LDA #>oam
    STA $4014
    JSR ClearOAM
    JSR DrawCursor
    JSR UpdateJoy
    JSR MoveCursor
   ; JSR PlayerInput_Menu
    JMP MenuFrame
    
Pause_Switch:
    LDA #PAUSE_WAIT
    STA tmp
    LDA #$00
    STA soft2001
    
   @BlankLoop: 
    JSR WaitForVBlank
    LDA #>oam
    STA $4014
    JSR ClearOAM    
    LDA clues
    ORA #$80
    STA clues      ; set the pause toggle    
    DEC tmp
    BNE @BlankLoop    
    RTS

;; this all works, but sprites are showing up still... grr

PauseGame:
    LDA #$30
    STA $4000      ; set square and noise volume to 0
    STA $4004      ; clear triangle linear counter
    STA $4008
    STA $400C

    JSR Pause_Switch

    LDA #%11111110 ; set all colour emphasis, keep PPU on, no greyscale
    STA soft2001

    JSR ClearButtons

   @PauseLoop:
    JSR WaitForVBlank
    LDA #$08
    STA $2005
    LDA #$70
    STA $2005      ; set the scroll to the hidden Game Paused text
    LDA #>oam
    STA $4014
    JSR ClearOAM
    JSR UpdateJoy  ; keep checking if start is pressed again
    LDA joy_start
    BEQ @PauseLoop

    JSR Pause_Switch
    
    LDA clues      ; remove the pause toggle
    AND #$7F
    STA clues
    LDA #$1E       ; turn on screen/clear emphasis
    STA soft2001
    JMP ClearButtons    


NewTile_LUT:
.byte $04, $08, $0C, $10, $14, $18

Draw_NewTile:
    LDA drawjob
    BPL @Done

    AND #$7F
    STA drawjob

    LDA #0
    STA tmp

    LDY cursor_y
    LDA NewTile_LUT, Y
    
    ASL A
    ROL tmp
    ASL A
    ROL tmp
    ASL A
    ROL tmp
    ASL A
    ROL tmp
 
    STA tmp+1
    LDA tmp
    ORA #$20
    STA $2006
    
    LDA cursor_x
    ASL A
    ADC #$02
    ORA tmp+1
    STA tmp+1
    STA $2006
    
    LDA drawtile
    TAY
    CMP #$49
    BEQ :+
    INY 
  : STA $2007
    STY $2007
   
    LDA tmp
    CLC
    ADC #$20
    STA $2006
    LDA tmp+1
    CLC
    ADC #$20
    STA $2006

    LDA drawtile
    TAY
    CMP #$49
    BEQ :+
    ORA #$10
    TAY
    INY
  : STA $2007
    STY $2007
   
   @Done:   
    RTS        
    

TileOffset_LUT:
.byte $40, $60, $80, $A0, $C0, $E0

Load_Possibilities:
    LDA drawjob
    AND #$7F
    BEQ @Done
    
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
    LDA #$49        ; $49 = blank tile
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

   @Done: 
    JMP SetScroll


PlayerInput_Game:
    LDA joy_b
    BEQ @Check_A
        LDA cursor
        BPL :+
            LDA #$01
            STA cursor
            BNE @Done
    
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
    
      : LDA #$82
        STA cursor
        BNE @Done

   @Check_Select:
    LDA joy_select
    BEQ @Check_Start
        LDA cursor_dot
        EOR #$01
        STA cursor_dot
        JMP @Done    
    
   @Check_Start: 
    LDA joy_start
    BEQ @Done
        JMP PauseGame

   @Done:
    JMP ClearButtons






;   Game Area:        Possibilities:
;1 [ + + + + + + + ] [ 1 2 3 4 5 6 7 ] 
;2 [ + + + + + + + ]
;3 [ + + + + + + + ] [ _ _ 3 4 * * * ] < cursor view
;4 [ 1 + 2 + +[+]+ ]
;5 [ + + + + + + + ]
;6 [ + + + + + + + ]               /- values removed by player *
;                                  v
; Row 4: $81, $3F, $40, $3E, $3E, $30, $3E <- values removed by game: _ 
 
;Each + is $FE: %11111110
;These bits are the possible tiles in that position in the Game Area
;The low bit is set to 1 when the player is sure it belongs there
;So a value of $81 means "tile #1 is sure to be here"; or "solved"
;A value of $80 means "tile #1 is the only possible tile here, but I haven't set it yet"
;If the bit is missing from the tile values, it means it has been removed by the player...
;....or the tile was set elsewhere, and the game removed the value from other tiles
;The player can restore tile values to any position, at the cost of unsetting the "solved" bit
;Which then requires them to re-set the tile to solve the puzzle.

;The question is how to display to the player that the tile is no longer valid?
;Option 1: Restore the tile on the Game Area to a +
;Option 2: Restrict tiles to 3 palettes, saving the 4th for a red palette to say "check this!"
;Option 3: Put a red dot sprite in the middle of the tile on the Game Area, which will cause flickering if more than 6 are set on rows 1 and 2, 4 on row 3, and 5 on rows 4, 5, and 6, since the option menu will be using its own green dot sprite.
















ScanRow_Solved:
    LDA #0
    STA total

    LDX #$06
    LDY row
   @Loop: 
    ;LDA 





Swap_Possibility:
    LDA #$00
    STA newtile
    
    LDA cursor_y
    ASL A
    ASL A
    ASL A    
    STA row             ; save start of row
    CLC
    ADC cursor_x
    STA position
    
    LDX cursor2_x
    LDA newtile         ; now get the tile's ID bit
    SEC
   @GetBitLoop:         ; by shifting the carry into the right spot
    ROR A
    DEX
    BPL @GetBitLoop
    STA newtile
    
    LDY row
    LDX #$06
    ORA #$01
   @CheckLoop:          ; see if this tile is already marked as "solved" in another spot
    CMP unsolved, Y
    BEQ @Done           ; if it is, do nothing
    INY
    DEX
    BPL @CheckLoop
    
   @Swap:               ; else, swap the bits
    LDY position
    LDA removed, Y
    EOR newtile
    STA removed, Y
    LDA unsolved, Y
    EOR newtile
    AND #$FE            ; remove the "solved" bit
    STA unsolved, Y
    INC drawjob         ; and mark possibilities to be updated on screen
    
   @Done: 
    RTS

   
Reset_Possibilities:
    AND #$FE
    STA oldtile
    STA unsolved, Y

    LDY row             ; Y = start of the row
    LDX #$06
   @Loop: 
    LDA removed, Y      ; if this tile was removed from this position by the player... 
    AND oldtile
    BNE @Next           ; then do not restore it
   
    LDA unsolved, Y     
    BIT BIT_LUT         ; if this tile is set as something else, do not restore it here either
    BNE @Next
    
    ORA oldtile
    STA unsolved, Y
   
   @Next: 
    INY
    DEX
    BPL @Loop
    
    LDA #$2E
    STA drawtile
    
    LDA #$81           ; mark "update possibilities" jobs as "to do"
    STA drawjob    
    RTS

Choose_Possibility:
    LDA cursor_y
    ASL A
    ASL A
    ASL A    
    STA row             ; save start of row
    CLC
    ADC cursor_x
    TAY    
    LDA unsolved, Y
    STY position        ; save position
    
    BIT BIT_LUT         ; see if this position has been written to before
    BNE Reset_Possibilities
    
    ;; if it has, we need to reset the possibilities list with all unset tiles
 
    LDX cursor2_x
    LDA possibilities, X
    BEQ @Done

    AND #~$10           ; undo the +$10 to done to the tile ID when loading
    STA drawtile        ; then save as the tile ID to draw
    
    LDA #$00            ; now get the tile's ID bit
    SEC
   @GetBitLoop:         ; by shifting the carry into the right spot
    ROR A
    DEX
    BPL @GetBitLoop
    STA newtile         ; save its value in tmp
    
    LDY position
    ORA #$01            ; set lowest bit to say "this tile was set"
    STA unsolved, Y     ; and save it to the tile in the unsolved puzzle RAM
    
   @Resume: 
    LDY row             ; Y = start of the row
    LDX #$06
    
   @ClearLoop:          ; then clear the bit from other position's lists
    LDA unsolved, Y     
    BIT BIT_LUT         ; see if #$01 is set!
    BNE @NextClear      ; if it was set, don't change this byte

    EOR newtile         ; else, remove the chosen bit from these positions
    STA unsolved, Y
    
   @NextClear:
    INY
    DEX
    BPL @ClearLoop

    LDA #$81              
    STA drawjob         ; mark "draw tile" and "update possibilities" jobs as "to do"
    
   @Done: 
    RTS
    


BIT_LUT:   
.byte $01, $02, $04, $08, $10, $20, $40, $80


;; what palette each tile in each row uses
Attribute_LUT:
; tile  1,   2,   3,   4,   5,   6,   7,  xx
.byte $00, $00, $01, $01, $00, $03, $00, $00 ; row 1
.byte $01, $01, $02, $02, $00, $00, $00, $00 ; row 2
.byte $02, $00, $01, $01, $01, $00, $01, $00 ; row 3
.byte $02, $01, $01, $01, $02, $00, $02, $00 ; row 4
.byte $01, $01, $02, $01, $02, $01, $02, $00 ; row 5
.byte $02, $03, $01, $02, $03, $00, $03, $00 ; row 6


Attribute_Position_LUT:
.byte $C0, HIGH_LEFT,  $C1, LOW_LEFT, $C1, LOW_LEFT, $C2, LOW_LEFT, $C2, LOW_LEFT, $C2, LOW_LEFT, $C3, LOW_LEFT, $00, $00
.byte $C8, HIGH_RIGHT, $C1, LOW_LEFT, $C1, LOW_LEFT, $C2, LOW_LEFT, $C2, LOW_LEFT, $C2, LOW_LEFT, $C3, LOW_LEFT, $00, $00
.byte $C8, HIGH_LEFT,  $C1, LOW_LEFT, $C1, LOW_LEFT, $C2, LOW_LEFT, $C2, LOW_LEFT, $C2, LOW_LEFT, $C3, LOW_LEFT, $00, $00
.byte $D0, HIGH_RIGHT, $C1, LOW_LEFT, $C1, LOW_LEFT, $C2, LOW_LEFT, $C2, LOW_LEFT, $C2, LOW_LEFT, $C3, LOW_LEFT, $00, $00
.byte $D0, HIGH_LEFT,  $C1, LOW_LEFT, $C1, LOW_LEFT, $C2, LOW_LEFT, $C2, LOW_LEFT, $C2, LOW_LEFT, $C3, LOW_LEFT, $00, $00
.byte $D8, HIGH_RIGHT, $C1, LOW_LEFT, $C1, LOW_LEFT, $C2, LOW_LEFT, $C2, LOW_LEFT, $C2, LOW_LEFT, $C3, LOW_LEFT, $00, $00


UpdateAttributes:
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
MoveOptionsCursor:
    LDA #$05
    STA cursor_y_max

    LDA joy
    AND #$0C
    CMP joy_prev
    BEQ @Done

    STA joy_prev
    CMP #DOWN
    BEQ @Down
    CMP #UP
    BNE @Done

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


MoveCursor:
    LDA cursor_dot
    BNE MoveOptionsCursor
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
    
    ;; see if it needs to update the possibilities list after moving
    LDX cursor
    BMI @Cursor2
    CPX #$01
    BNE :+
      INC drawjob
  : LSR A
    BCS @Right
    LSR A
    BCS @Left
    LSR A
    BCS @Down
    LSR A
    BCS @Up
   @Done: 
    RTS
    
   @Cursor2: 
    LSR A
    BCS @Right_2
    LSR A
    BCS @Left_2
    JMP Swap_Possibility

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
    INC cursor_y
    LDA cursor_y
    CMP cursor_y_max
    BNE @Done

    LDA #0
    STA cursor_y
    RTS

   @Up:
    DEC cursor_y
    BPL @Done
    LDA cursor_y_max
    STA cursor_y
    DEC cursor_y
    RTS

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
    .byte $04 ; 00 Main Menu
    .byte $06 ; 01 Game
    .byte $00 ; 04 Possibilities

CursorMaxX:
    .byte $00 ; 00 Main Menu
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
    LDA cursor
    BPL :+
        LDA #$01   ; if 2 cursors, do game cursor first
  : ASL A
    TAX
    JSR DrawCursor_SetPointers

    LDA #$C0       ; attributes ; palette and flipping
    STA oam+2, X
    LDA #$40
    STA oam+6, X
    LDA #$80
    STA oam+10, X
    LDA #$00
    STA oam+14, X

    LDY cursor_y
    LDA (tmp_pointer), Y
    PHA
    LDY cursor_x
    LDA (tmp_pointer+2), Y
    TAY
    PLA
    JMP DrawCursor_SetCoords
    
DrawSecondCursor:
    LDA cursor
    BMI :+
        RTS
  : LDX #$04
    JSR DrawCursor_SetPointers

    LDA #$C1       ; attributes ; palette and flipping
    STA oam+2, X
    LDA #$41
    STA oam+6, X
    LDA #$81
    STA oam+10, X
    LDA #$01
    STA oam+14, X

    LDY cursor2_x
    LDA (tmp_pointer+2), Y
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

    TXA            ; add offset to sprite index
    CLC
    ADC #$10
    STA sprite
    RTS

DrawOptionsDot:
    LDA cursor_dot
    BEQ @Done
    
    LDX sprite
    
    LDY cursor_dot_y
    LDA Cursor_Options_Y, Y
    STA oam, X

    LDA #$00      ; tile ID
    STA oam+1, X
    STA oam+2, X  ; attributes

    LDA #$88      ; X position
    STA oam+3, X

    TXA
    CLC
    ADC #$04
    STA sprite
   @Done: 
    RTS

DrawCursor_SetPointers:
    LDA Cursor_Table_Y, X
    STA tmp_pointer
    LDA Cursor_Table_Y+1, X
    STA tmp_pointer+1
    LDA Cursor_Table_X, X
    STA tmp_pointer+2
    LDA Cursor_Table_X+1, X
    STA tmp_pointer+3
    LDX sprite       ; finish with loading sprite index into X
    RTS    

Cursor_Table_Y:
    .word Cursor_MainMenu_Y
    .word Cursor_Game_Y
    
Cursor_MainMenu_Y:
    .byte $50, $60, $70, $80
Cursor_Game_Y:
    .byte $0F, $1F, $2F, $3F, $4F, $5F
Cursor_Options_Y:
    .byte $47, $4F, $57, $5F, $67

Cursor_Table_X:
    .word Cursor_MainMenu_X
    .word Cursor_Game_X
    .word Cursor_Possibilities_X

Cursor_MainMenu_X:
    .byte $60
Cursor_Game_X:
    .byte $08, $18, $28, $38, $48, $58, $68
Cursor_Possibilities_X:
    .byte $88, $98, $A8, $B8, $C8, $D8, $E8


DrawSprite0:
    LDA #$74  ; y pos
    STA oam
    LDA #$F4  ; x pos
    STA oam+3
    LDA #$54  ; tile
    STA oam+1
    LDA #$00 ;40  ; attributes
    STA oam+2 ; also set is as behind background
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
    STA $2006
    STX $2006
    BNE Print_Gametime

Print_Gametime_Score:
    LDA #>$2059
    LDX #<$2059
    STA $2006
    STX $2006

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
    LDX #$FF-4
    LDA #$FF
   @Loop:
    STA $0204, X
    DEX
    BNE @Loop

    LDA #$04
    STA sprite
    RTS

Generate_Puzzle:    ; this code is very volatile...
    LDA #$06
    STA tmp+9       ; row counter
    LDX #48-1
    STX tmp+8       ; loop counter

    LDA #<Palette   ; use code and data as an RNG table, for now
    STA tmp_pointer
    LDA #>Palette
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
    STA row1_solved-1, Y
    DEC tmp+8
    DEX             ; X = 0 when its the last tile in the row
    BNE @Loop
    DEC tmp+8       ; skip the 8th byte
    DEC tmp+9       ; decrement row counter
    BNE @Clear_Used

   @Done:
    LDA #$00        ; set the last 6 bytes for easier comparison against the player's puzzle RAM later
    STA row1_solved+7
    STA row2_solved+7
    STA row3_solved+7
    STA row4_solved+7
    STA row5_solved+7
    STA row6_solved+7
    RTS






MiniOptions:
    ; Music - ###
    ; SFX   - On / Off
    ; Color - ###
    ; 
    ; Give Up?




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
    
    
Print:
    STX dest
    STY dest+1

    ASL A
    TAX
    LDA TextStrings
    STA text
    LDA TextStrings+1
    STA text+1

    LDY #$00
    
   @Newline: 
    LDA dest
    STA $2006
    LDA dest+1    
    STA $2006
   
   @Loop:
    LDA (text), Y
    BMI @ControlCode
    STA $2007
    INY
    BNE @Loop
    INC text+1
    JMP @Loop
    
   @ControlCode:
    CMP #$FF
    BEQ @Done
    CMP #$FE
    BEQ @NextLine
    
    AND #$7F
    TAX
    LDA #$49
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



.align $100

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
    BMI OnIRQ
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