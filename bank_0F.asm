.include "Constants.inc"
.include "variables.inc"
.feature force_range
.segment "BANK_0F"

CHR:
.incbin "Puzzle.chr"


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
.byte $C9,$20,$80,$40,$FF

HorizontalClues_Nametable:
.byte $C9,$20
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
.byte $3F,$01,$11,$30
.byte $3F,$07,$17,$27
.byte $3F,$04,$14,$24
.byte $3F,$0A,$1A,$29

.byte $3F,$09,$19,$39
.byte $3F,$06,$16,$36
.byte $3F,$3F,$3F,$3F
.byte $3F,$1A,$2A,$16




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

Load_CHR:
    LDA #<CHR
    STA tmp_pointer
    LDA #>CHR
    STA tmp_pointer+1

    LDY #0
    STY $2001
    STY $2006
    STY $2006
    LDX #$10

    JSR Load_CHR_Loop ; write the CHR to background tiles

    LDA #<CHR
    STA tmp_pointer
    LDA #>CHR
    STA tmp_pointer+1
    LDX #$10

    JSR Load_CHR_Loop ; and again to sprites

    LDA #<Palette-$E0 ; slight trickery here...
    STA tmp_pointer
    LDA #>Palette-$01
    STA tmp_pointer+1
    LDY #$E0          ; start with Y = 0 - $20

    LDA #$3F
    STA $2006
    STX $2006         ; X = 0
    INX               ; then increment to make sure the loop exits

    JSR Load_CHR_Loop

    LDA #<GameArea_Nametable
    STA tmp_pointer
    LDA #>GameArea_Nametable
    STA tmp_pointer+1

    LDA #$20
    LDY #$00
    STA $2006
    STY $2006
    
    JSR Decompress_Loop
    
    LDA #<HorizontalClues_Nametable
    STA tmp_pointer
    LDA #>HorizontalClues_Nametable
    STA tmp_pointer+1    
    
    LDA #$28
    LDY #$00
    STA $2006
    STY $2006
    
    JSR Decompress_Loop
    
    LDA #0
    STA puzzle
    JSR Generate_Puzzle
    JSR SetScroll

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

    JSR WaitForVBlank    
    LDA #>oam
    STA $4014
    LDA #$1E       ; turn on screen/clear emphasis
    STA $2001

GameFrame:
    JSR WaitForVBlank
    LDA #>oam
    STA $4014
    JSR Load_Possibilities
    JSR ClearOAM
    JSR DrawSprite0
    JSR UpdateJoy
    JSR MoveCursor
    JSR DrawCursor
    JSR PlayerInput_Game
    JSR Update_Gametime
    JMP GameFrame



Load_Possibilities:
    LDA #0
    LDX #$06
   @Clear:
    STA possibilities, X
    DEX
    BNE @Clear      ; clear out the list of tiles

    LDA cursor_y
    TAX
    LDA TileOffset_LUT, X
    STA tmp

    LDA cursor_y
    ASL A
    ASL A
    ASL A           ; times 8
    TAX 
    LDA row1_status, X
    STA total
   
    LDX #$06
   @Loop:
    LSR A
    BCS @NothingThere
    
    PHA
    TXA
    ASL A
    ORA tmp
    STA possibilities, X ; saves tile graphic ID in slot
    PLA

   @NothingThere:
    DEX
    BPL @Loop
    
    LDA drawjob
    BEQ @Done
    
    LDA #$01
    STA tmp
    
    LDA #>$20D2
    LDX #<$20D2
    STA $2006
    STX $2006
    
    LDX #$00
   @GetTile:
    LDA possibilities, X
    BNE @Draw
   
   @NoTile:
    LDA #$49
    STA $2007
    STA $2007
    BNE @Next
   
   @Draw:
    TAY
    ORA #$10
    STA possibilities, X
    
    STY $2007
    INY
    STY $2007

   @Next:
    INX
    CPX #$07
    BNE @GetTile

    LDA #>$20F2
    LDX #<$20F2
    STA $2006
    STX $2006
    
    DEC tmp
    LDX tmp
    BEQ @GetTile
   @Done: 
    STX drawjob
    JMP SetScroll




TileOffset_LUT:
.byte $40, $60, $80, $A0, $C0, $E0    


Draw4x4Tile:











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
        BMI Consider_Possibilities
    
        LDA #$82
        STA cursor
        LDA #$FF
        STA chosen        
        LDA #$03
        STA cursor2_y
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
        JSR PauseGame

   @Done:
    JMP ClearButtons


Consider_Possibilities:

















   
   @Select: 
    LDA #$FF
    STA possibilities, Y ; write $FF to 
    LDA cursor_y
    LDX cursor_x
    JSR MultiplyXA
    TAX
    STA row1, X
    RTS   
    
   @Restore:
    TYA                ; restore by giving the tile ID the cursor position!
    STA possibilities, Y
    RTS
    
    
    
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
    CMP #DOWN
    BEQ @Down
    CMP #UP
    BEQ @Up
    CMP #LEFT
    BEQ @Left
    CMP #RIGHT
    BNE @Done

   @Right:
    LDA cursor
    BMI @Right_2

    INC cursor_x
    LDA cursor_x
    CMP cursor_x_max
    BNE @Done

    LDA #0
    STA cursor_x
    RTS

   @Left:
    LDA cursor
    BMI @Left_2

    DEC cursor_x
    BPL @Done
    LDA cursor_x_max
    STA cursor_x
    DEC cursor_x
    RTS

   @Down:
    LDA cursor
    BMI @Done
    CMP #$01
    BNE :+
        INC drawjob
  : INC cursor_y
    LDA cursor_y
    CMP cursor_y_max
    BNE @Done

    LDA #0
    STA cursor_y
    RTS

   @Up:
    LDA cursor
    BMI @Done
    CMP #$01
    BNE :+
        INC drawjob
  : DEC cursor_y
    BPL @Done
    LDA cursor_y_max
    STA cursor_y
    DEC cursor_y
   @Done:
    RTS

   @Right_2:
    INC cursor2_x
    LDA cursor2_x
    CMP cursor_x_max
    BNE @Done

    LDA #0
    STA cursor2_x
    INC drawjob
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
    LDA #$7F        ; set the last 6 bytes for easier comparison against the player's puzzle RAM later
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




PauseGame:
    LDA #%11111110 ; set all colour emphasis, keep PPU on, no greyscale
    STA $2001

    JSR ClearButtons

    LDA #$30
    STA $4000      ; set square and noise volume to 0
    STA $4004      ; clear triangle linear counter
    STA $4008
    STA $400C

   @PauseLoop:
    JSR WaitForVBlank
    LDA #>oam
    STA $4014
    JSR ClearOAM
    JSR UpdateJoy  ; keep checking if start is pressed again
    LDA joy_start
    BEQ @PauseLoop

    LDA #$1E       ; turn on screen/clear emphasis
    STA $2001
    ;; flow into ClearButtons

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
    RTS




;.align $100 ;; very important!!

WaitForVBlank:
    LDA $2002      ; check VBlank flag
    BMI @ClueCheck

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
    JSR SetScroll
    LDA soft2000
    STA $2000      ; set the PPU state
    LDA $2002      ; clear VBlank flag and reset 2005/2006 toggle
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