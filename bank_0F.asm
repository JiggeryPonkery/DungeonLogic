.include "Constants.inc"
.include "variables.inc"
.feature force_range
.segment "BANK_0F"

CHR:
.incbin "Puzzle.chr"


;; This uses some RLE:
;; High bit set = do 
GameArea_Nametable:
.byte $80,$20
.byte $03,$01,$82,$0E,$03,$01,$82,$05,$03,$01,$82,$07
.byte $05,$04,$2E,$2F,$2E,$2F,$2E,$2F,$2E,$2F,$2E,$2F,$2E,$2F,$2E,$2F,$05,$04,$1F,$0D,$80,$03,$05,$04,$00,$0C,$00,$00,$0C,$00,$00
.byte $08,$04,$3E,$3F,$3E,$3F,$3E,$3F,$3E,$3F,$3E,$3F,$3E,$3F,$3E,$3F,$05,$06,$87,$05,$08,$06,$87,$07
.byte $03,$04,$2E,$2F,$2E,$2F,$2E,$2F,$2E,$2F,$2E,$2F,$2E,$2F,$2E,$2F,$05,$01,$82,$0E
.byte $05,$04,$3E,$3F,$3E,$3F,$3E,$3F,$3E,$3F,$3E,$3F,$3E,$3F,$3E,$3F,$05,$04,$1F,$1E,$22,$22,$18,$11,$18,$1B,$18,$23,$18,$14,$22,$0C
.byte $05,$04,$2E,$2F,$2E,$2F,$2E,$2F,$2E,$2F,$2E,$2F,$2E,$2F,$2E,$2F,$05,$04,$80,$0E
.byte $05,$04,$3E,$3F,$3E,$3F,$3E,$3F,$3E,$3F,$3E,$3F,$3E,$3F,$3E,$3F,$05,$04,$80,$0E
.byte $0A,$04,$2E,$2F,$2E,$2F,$2E,$2F,$2E,$2F,$2E,$2F,$2E,$2F,$2E,$2F,$05,$09,$8B,$0E
.byte $05,$04,$3E,$3F,$3E,$3F,$3E,$3F,$3E,$3F,$3E,$3F,$3E,$3F,$3E,$3F,$05,$04,$80,$0E
.byte $05,$04,$2E,$2F,$2E,$2F,$2E,$2F,$2E,$2F,$2E,$2F,$2E,$2F,$2E,$2F,$05,$04,$80,$0E
.byte $05,$04,$3E,$3F,$3E,$3F,$3E,$3F,$3E,$3F,$3E,$3F,$3E,$3F,$3E,$3F,$05,$04,$80,$0E
.byte $05,$04,$2E,$2F,$2E,$2F,$2E,$2F,$2E,$2F,$2E,$2F,$2E,$2F,$2E,$2F,$05,$04,$80,$0E
.byte $05,$04,$3E,$3F,$3E,$3F,$3E,$3F,$3E,$3F,$3E,$3F,$3E,$3F,$3E,$3F,$05,$04,$80,$0E
.byte $08,$06,$87,$0E,$08,$06,$87,$0E
.byte $03,$01,$82,$06,$03,$01,$82,$06,$03,$01,$82,$06,$03,$01,$82,$06
.byte $05,$04,$80,$06,$05,$04,$80,$06,$05,$04,$80,$06,$05,$04,$80,$06
.byte $05,$04,$80,$06,$05,$04,$80,$06,$05,$04,$80,$06,$05,$04,$80,$06
.byte $05,$04,$80,$06,$05,$04,$80,$06,$05,$04,$80,$06,$05,$04,$80,$06
.byte $05,$04,$80,$06,$05,$04,$80,$06,$05,$04,$80,$06,$05,$04,$80,$06
.byte $05,$04,$80,$06,$05,$04,$80,$06,$05,$04,$80,$06,$05,$04,$80,$06
.byte $05,$04,$80,$06,$05,$04,$80,$06,$05,$04,$80,$06,$05,$04,$80,$06
.byte $05,$04,$80,$06,$05,$04,$80,$06,$05,$04,$80,$06,$05,$04,$80,$06
.byte $05,$04,$80,$06,$05,$04,$80,$06,$05,$04,$80,$06,$05,$04,$80,$06
.byte $05,$04,$80,$06,$05,$04,$80,$06,$05,$04,$80,$06,$05,$04,$80,$06
.byte $05,$04,$80,$06,$05,$04,$80,$06,$05,$04,$80,$06,$05,$04,$80,$06
.byte $05,$04,$80,$06,$05,$04,$80,$06,$05,$04,$80,$06,$05,$04,$80,$06
.byte $05,$04,$80,$06,$05,$04,$80,$06,$05,$04,$80,$06,$05,$04,$80,$06
.byte $08,$06,$87,$06,$08,$06,$87,$06,$08,$06,$87,$06,$08,$06,$87,$06
.byte $80,$60,$FF

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

    ;; MMC1 stuff?
    
    LDA #$C0
    STA $4017      ; set alternative pAPU frame counter method, reset the frame counter, and disable APU IRQs
    
    ;; Mapper 28 stuff
    
    LDX #$81
    STX $5000
    LDA #$FF       ; Set outer bank
    STA $8000      ; this write will get NOPped out when the multicart is built
    DEX    
    STX $5000      
    LDA #$1F ;C       ; $10: 64 KiB; $0C: fixed C000; $00: 1-screen mirroring
    STA $8000      
    LDX #$01       
    STX $5000      ; bit 4: which nametable to use; bits 1-0: PRG bank    
    
    LDY #$00       ; swap to bank 0
    JSR Swap

Load_CHR:
    LDA #<CHR
    STA tmp
    LDA #>CHR
    STA tmp+1

    LDY #0
    STY $2001
    STY $2006
    STY $2006
    LDX #$10

    JSR Load_CHR_Loop ; write the CHR to background tiles
    
    LDA #<CHR
    STA tmp
    LDA #>CHR
    STA tmp+1
    LDX #$10
    
    JSR Load_CHR_Loop ; and again to sprites

    LDA #<Palette-$E0 ; slight trickery here...
    STA tmp
    LDA #>Palette-$01
    STA tmp+1 
    LDY #$E0          ; start with Y = 0 - $20

    LDA #$3F
    STA $2006
    STX $2006         ; X = 0 
    INX               ; then increment to make sure the loop exits

    JSR Load_CHR_Loop 

    LDA #<GameArea_Nametable
    STA tmp
    LDA #>GameArea_Nametable
    STA tmp+1 
    
    LDA #$20
    LDY #$00
    STA $2006
    STY $2006
    
Decompress_Loop:
    LDA (tmp), Y
    BPL @Write
    
    ;; else, the high bit is set
    CMP #$FF
    BEQ @Done

    AND #$7F      ; remove high bit
    PHA
    INY
    BNE :+
     INC tmp+1
  : LDA (tmp), Y
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
    INC tmp+1
    JMP Decompress_Loop
   
   @Done:
    LDA #0
    STA puzzle
    JSR Generate_Puzzle
    JSR SetScroll
    LDA #$1E       ; turn on screen/clear emphasis
    STA $2001

    LDA #$48
    STA sprite_x
    LDA #$40
    STA sprite_y

DoFrame:
    JSR WaitForVBlank
    LDA #>oam      
    STA $4014                
    JSR ClearOAM
    JSR UpdateJoy
    JSR SetScroll
    JSR DrawCursor
    JSR MoveCursor
    JMP DoFrame
    
    ; Load Sprites
    ; Update Music
    ; Update SFX
    ; Do any drawing jobs
    ; Update Scroll
    ; Update Joypad
    ; Do User Input
    
    
    
MoveCursor:
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
    
   @Right:
    LDA sprite_x
    CLC
    ADC #$10
    STA sprite_x
    RTS
   
   @Left:   
    LDA sprite_x
    SEC
    SBC #$10
    STA sprite_x
    RTS
    
   @Down:
    LDA sprite_y
    CLC
    ADC #$10
    STA sprite_y
    RTS

   @Up:   
    LDA sprite_y
    SEC
    SBC #$10
    STA sprite_y
   @Done:     
    RTS    
    

    
    
DrawCursor:
    LDX sprite    ; sprite index
    
    LDA sprite_y  ; get Y coordinate and write to all 4 subtiles
    STA oam, X
    STA oam+8, X
    CLC
    ADC #$08
    STA oam+4, X
    STA oam+12, X

    LDA #$FF      ; tile ID
    STA oam+1, X
    STA oam+5, X
    STA oam+9, X
    STA oam+13, X
    
    LDA #$C0      ; attributes ; palette and flipping
    STA oam+2, X
    LDA #$40
    STA oam+6, X
    LDA #$80
    STA oam+10, X
    LDA #$00
    STA oam+14, X
    
    LDA sprite_x  ; get X coordinate and write to all 4 subtiles
    STA oam+3, X
    STA oam+7, X
    CLC
    ADC #$08
    STA oam+11, X
    STA oam+15, X
    
    TXA
    CLC
    ADC #$10
    STA sprite
    RTS

DrawSprite0:
    LDA #$F0  ; y pos
    STA oam
    LDA #$70  ; x pos
    STA oam+3
    LDA #$4B  ; tile 
    STA oam+1
    LDA #$A0  ; put it upside down so the single pixel is at the top
    STA oam+2 ; also set is as behind background
    RTS
    
ClearOAM:
    LDX #$FF-4
    LDA #$FF
   @Loop: 
    STA $0204, X
    DEX
    BNE @Loop
    
    STX sprite
    RTS    

Generate_Puzzle:
    LDA #$07
    STA tmp+9       ; row counter
    LDX #48+1       ; +1 for double skip in @NextRow
    STX tmp+8       ; loop counter
    
    LDA #<Palette   ; use code and data as an RNG table, for now
    STA tmp_pointer
    LDA #>Palette
    STA tmp_pointer+1

   @NextRow:
    DEC tmp+9       ; toss first row, then decrement normally 
    BEQ @Done
    DEC tmp+8       
    DEC tmp+8       ; skip the 8th byte
    
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
    LDX #$08
   @Check_Used:
    LDA tmp, X      ; get the value in this slot
    CMP #$FF
    BEQ @Write      ; if the value is still $FF, then its not been written yet
    CMP tmp
    BEQ @Loop       ; if it is equal, then this value has been written already; get a new value
    DEX
    BNE @Check_Used ; should always branch here    
    
   @Write: 
    LDA tmp
    STA tmp, X      ; save the temp row value
    LDY tmp+8       ; then save in the total solved-puzzle string!
    STA row1_solved-1, Y
    CPX #$01        ; if X = 1 then it just wrote the final value for this row
    BEQ @NextRow
    DEC tmp+8
    BNE @Loop       ; I think this will always branch as well

   @Done:
    LDA #$7F        ; set the last 6 bytes for easier comparison against the player's puzzle RAM later
    STA row1_solved+7
    STA row2_solved+7
    STA row3_solved+7
    STA row4_solved+7
    STA row5_solved+7
    STA row6_solved+7
    RTS

    
    
    
    
    
    
    
    
    
    
PauseGame:
    LDA #%11111110 ; set all colour emphasis, keep PPU on, no greyscale
    STA $2001 
    
    LDA #$00
    STA joy_start  ; clear select so the game doesn't unpause immediately

    LDA #$30
    STA $4000      ; set square and noise volume to 0
    STA $4004      ; clear triangle linear counter
    STA $4008
    STA $400C
  
   @PauseLoop:
    JSR WaitForVBlank
    LDA #>oam      
    STA $4014               
    ;JSR ClearOAM   
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
    BNE @CheckButtons
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
    LDA (tmp), Y
    STA $2007
    INY
    BNE Load_CHR_Loop
    INC tmp+1
    DEX
    BNE Load_CHR_Loop
    RTS


WaitForVBlank:
    LDA $2002      ; check VBlank flag
    BMI OnIRQ 

  @Wait:
    LDA soft2000   ; Load desired PPU state
    ORA #$80       ; flip on the Enable NMI bit
    STA $2000      ; and write it to PPU status reg

;; for Sprite 0 hit, use sprite ID $4B at location 31x, 14y 



OnIRQ:       
    JMP OnIRQ

OnNMI:
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