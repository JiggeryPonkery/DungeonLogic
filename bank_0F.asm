.include "Constants.inc"
.include "variables.inc"
.feature force_range
.segment "BANK_0F"

CHR:
.incbin "Puzzle.chr"

GameArea_Nametable:
.byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
.byte $F7,$F8,$F8,$F8,$F8,$F8,$F8,$F8,$F8,$F8,$F8,$F8,$F8,$F8,$F8,$F9,$F7,$F8,$F8,$F8,$F8,$F8,$F9,$F7,$F8,$F8,$F8,$F8,$F8,$F8,$F8,$F9
.byte $FA,$00,$01,$02,$03,$04,$05,$06,$07,$08,$09,$0A,$0B,$0C,$0D,$FB,$FA,$CF,$EB,$FF,$FF,$FF,$FB,$FA,$FF,$EC,$FF,$FF,$EC,$FF,$FF,$FB
.byte $FA,$10,$11,$12,$13,$14,$15,$16,$17,$18,$19,$1A,$1B,$1C,$1D,$FB,$FC,$FD,$FD,$FD,$FD,$FD,$FE,$FC,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FE
.byte $FA,$20,$21,$22,$23,$24,$25,$26,$27,$28,$29,$2A,$2B,$2C,$2D,$FB,$F7,$F8,$F8,$F8,$F8,$F8,$F8,$F8,$F8,$F8,$F8,$F8,$F8,$F8,$F8,$F9
.byte $FA,$30,$31,$32,$33,$34,$35,$36,$37,$38,$39,$3A,$3B,$3C,$3D,$FB,$FA,$CF,$CE,$D2,$D2,$C8,$C1,$C8,$CB,$C8,$D3,$C8,$C4,$D2,$EC,$FB
.byte $FA,$40,$41,$42,$43,$44,$45,$46,$47,$48,$49,$4A,$4B,$4C,$4D,$FB,$FA,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FB
.byte $FA,$50,$51,$52,$53,$54,$55,$56,$57,$58,$59,$5A,$5B,$5C,$5D,$FB,$FA,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FB
.byte $FA,$60,$61,$62,$63,$64,$65,$66,$67,$68,$69,$6A,$6B,$6C,$6D,$FB,$F3,$F6,$F6,$F6,$F6,$F6,$F6,$F6,$F6,$F6,$F6,$F6,$F6,$F6,$F6,$F4
.byte $FA,$70,$71,$72,$73,$74,$75,$76,$77,$78,$79,$7A,$7B,$7C,$7D,$FB,$FA,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FB
.byte $FA,$80,$81,$82,$83,$84,$85,$86,$87,$88,$89,$8A,$8B,$8C,$8D,$FB,$FA,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FB
.byte $FA,$90,$91,$92,$93,$94,$95,$96,$97,$98,$99,$9A,$9B,$9C,$9D,$FB,$FA,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FB
.byte $FA,$A0,$A1,$A2,$A3,$A4,$A5,$A6,$A7,$A8,$A9,$AA,$AB,$AC,$AD,$FB,$FA,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FB
.byte $FA,$B0,$B1,$B2,$B3,$B4,$B5,$B6,$B7,$B8,$B9,$BA,$BB,$BC,$BD,$FB,$FA,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FB
.byte $FC,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FE,$FC,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD
.byte $F7,$F8,$F8,$F8,$F8,$F8,$F8,$F9,$F7,$F8,$F8,$F8,$F8,$F8,$F8,$F9,$F7,$F8,$F8,$F8,$F8,$F8,$F8,$F9,$F7,$F8,$F8,$F8,$F8,$F8,$F8,$F9
.byte $FA,$FF,$FF,$FF,$FF,$FF,$FF,$FB,$FA,$FF,$FF,$FF,$FF,$FF,$FF,$FB,$FA,$FF,$FF,$FF,$FF,$FF,$FF,$FB,$FA,$FF,$FF,$FF,$FF,$FF,$FF,$FB
.byte $FA,$FF,$FF,$FF,$FF,$FF,$FF,$FB,$FA,$FF,$FF,$FF,$FF,$FF,$FF,$FB,$FA,$FF,$FF,$FF,$FF,$FF,$FF,$FB,$FA,$FF,$FF,$FF,$FF,$FF,$FF,$FB
.byte $FA,$FF,$FF,$FF,$FF,$FF,$FF,$FB,$FA,$FF,$FF,$FF,$FF,$FF,$FF,$FB,$FA,$FF,$FF,$FF,$FF,$FF,$FF,$FB,$FA,$FF,$FF,$FF,$FF,$FF,$FF,$FB
.byte $FA,$FF,$FF,$FF,$FF,$FF,$FF,$FB,$FA,$FF,$FF,$FF,$FF,$FF,$FF,$FB,$FA,$FF,$FF,$FF,$FF,$FF,$FF,$FB,$FA,$FF,$FF,$FF,$FF,$FF,$FF,$FB
.byte $FA,$FF,$FF,$FF,$FF,$FF,$FF,$FB,$FA,$FF,$FF,$FF,$FF,$FF,$FF,$FB,$FA,$FF,$FF,$FF,$FF,$FF,$FF,$FB,$FA,$FF,$FF,$FF,$FF,$FF,$FF,$FB
.byte $FA,$FF,$FF,$FF,$FF,$FF,$FF,$FB,$FA,$FF,$FF,$FF,$FF,$FF,$FF,$FB,$FA,$FF,$FF,$FF,$FF,$FF,$FF,$FB,$FA,$FF,$FF,$FF,$FF,$FF,$FF,$FB
.byte $FA,$FF,$FF,$FF,$FF,$FF,$FF,$FB,$FA,$FF,$FF,$FF,$FF,$FF,$FF,$FB,$FA,$FF,$FF,$FF,$FF,$FF,$FF,$FB,$FA,$FF,$FF,$FF,$FF,$FF,$FF,$FB
.byte $FA,$FF,$FF,$FF,$FF,$FF,$FF,$FB,$FA,$FF,$FF,$FF,$FF,$FF,$FF,$FB,$FA,$FF,$FF,$FF,$FF,$FF,$FF,$FB,$FA,$FF,$FF,$FF,$FF,$FF,$FF,$FB
.byte $FA,$FF,$FF,$FF,$FF,$FF,$FF,$FB,$FA,$FF,$FF,$FF,$FF,$FF,$FF,$FB,$FA,$FF,$FF,$FF,$FF,$FF,$FF,$FB,$FA,$FF,$FF,$FF,$FF,$FF,$FF,$FB
.byte $FA,$FF,$FF,$FF,$FF,$FF,$FF,$FB,$FA,$FF,$FF,$FF,$FF,$FF,$FF,$FB,$FA,$FF,$FF,$FF,$FF,$FF,$FF,$FB,$FA,$FF,$FF,$FF,$FF,$FF,$FF,$FB
.byte $FA,$FF,$FF,$FF,$FF,$FF,$FF,$FB,$FA,$FF,$FF,$FF,$FF,$FF,$FF,$FB,$FA,$FF,$FF,$FF,$FF,$FF,$FF,$FB,$FA,$FF,$FF,$FF,$FF,$FF,$FF,$FB
.byte $FA,$FF,$FF,$FF,$FF,$FF,$FF,$FB,$FA,$FF,$FF,$FF,$FF,$FF,$FF,$FB,$FA,$FF,$FF,$FF,$FF,$FF,$FF,$FB,$FA,$FF,$FF,$FF,$FF,$FF,$FF,$FB
.byte $FC,$FD,$FD,$FD,$FD,$FD,$FD,$FE,$FC,$FD,$FD,$FD,$FD,$FD,$FD,$FE,$FC,$FD,$FD,$FD,$FD,$FD,$FD,$FE,$FC,$FD,$FD,$FD,$FD,$FD,$FD,$FE
.byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF

;; attributes
.byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
.byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
.byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
.byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
.byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
.byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
.byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
.byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF


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
    STX $4010

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

    STX $4015      ; turn off all sound channels
    STX $4010      ; disble DMC IRQs
    LDA #$C0
    STA $4017      ; set alternative pAPU frame counter method, reset the frame counter, and disable APU IRQs
    
    LDX #$81
    STX $5000
    LDA #$FF       ; Set outer bank
    STA $8000      ; this write will get NOPped out when the multicart is built
    DEX    
    STX $5000      
    LDA #$1C       ; $10: 64 KiB; $0C: fixed C000; $00: 1-screen mirroring
    STA $8000      
    LDX #$01       
    STX $5000      ; bit 4: which nametable to use; bits 1-0: PRG bank    
    
    LDY #$00           ; swap to bank 0
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
    LDX #$20

    JSR Load_CHR_Loop

    LDA #<GameArea_Nametable
    STA tmp
    LDA #>GameArea_Nametable
    STA tmp+2 
    
    LDA #$20
    LDY #$00
    STA $2006
    STY $2006
    LDX #$04
    

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
    BPL @Wait      ; if off, VBlank hasn't occured yet, so jump to the wait
                   ;  otherwise... whatever code occured since the last frame took longer than
                   ;  1 frame... so...

    LDA #0         ; waste time in this loop for a while...
  @Loop:
      SEC          ; the reason for this is because the game doesn't want NMI to fire during VBlank
      SBC #$01     ;  because then you'd have less than a full VBlank for drawing next frame
      BNE @Loop    ;  Of course... just reading $2002 above will prevent this from happening, so this isn't
                   ;  really necessary, but it doesn't hurt.

  @Wait:
    LDA soft2000   ; Load desired PPU state
    ORA #$80       ; flip on the Enable NMI bit
    STA $2000      ; and write it to PPU status reg

OnIRQ:                   ; IRQs point here, but the game doesn't use IRQs, so it's moot
@LoopForever:
    JMP @LoopForever     ; then loop forever! (or really until the NMI is triggered)

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