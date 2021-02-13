.include "Constants.inc"
.include "variables.inc"
.feature force_range
.segment "BANK_00"

.export Music
.export PUZZLE_CHR


PUZZLE_CHR:
.incbin "Puzzle.chr"

EndSong:
    LDA #$70    
    STA $4000   
    STA $4004
    STA $4008   
    STA $400C
    RTS

NewSong:
    AND #$7F
    STA music_track
    
    

Music:
    LDA music_track
    BEQ EndSong
    BPL Play
    JMP NewSong      ; if high bit is set, start a new song

Play:
   @Square1:
    LDA sq1_freq+1
    BMI :+
    
    LDY sq1_freq
    STY $4002
    ORA #$80
    STA $4003
    
  : LDA sq1_vol
    ORA #$30          ; set constant length counter and volume
    STA $4000            
    LDA #$3F
    STA $4001         ; no sweep
    
   @Square2: 
    LDA sq2_freq+1
    BMI :+
    
    LDY sq2_freq
    STY $4006
    ORA #$80
    STA $4007
    
  : LDA sq2_vol
    ORA #$30          ; set constant length counter and volume
    STA $4004            
    LDA #$3F
    STA $4005         ; no sweep
    
   @Triangle: 
    LDA tri_vol
    BMI :+
    
    LDA tri_freq
    STA $400A
    LDA tri_freq+1
    STA $400B

    LDA #$8F          ; keep linear counter audible
    BNE @SetTriangleVolume
    
  : AND #$80          ; or else silence the triangle
   @SetTriangleVolume: 
    STA $4008        
  
    LDA DPCM
    BMI @HushTriangle ; increase DPCM volume if high bit set
    BEQ @Noise        ; or skip if its 0
    
    SEC               ; else, its not 0, so subtract 1
    SBC #$01
    JMP :+
    
   @HushTriangle:
    CMP #$FF          ; will be $FF if DPCM is at max volume
    BEQ @Noise
    CLC
    ADC #$01          ; if not, increase its volume (hushing the triangle)
  : STA DPCM 
    STA $4011
   
   @Noise: 







    
    
Notes:
  .WORD $06AC,$064C,$05F2,$059E,$054C,$0501,$04B8,$0474,$0434,$03F8,$03BE,$0388 ; Bass
  .WORD $0356,$0326,$02F9,$02CF,$02A6,$0280,$025C,$023A,$021A,$01FC,$01DF,$01C4 ; Low
  .WORD $01AB,$0193,$017C,$0167,$0153,$0140,$012E,$011D,$010D,$00FE,$00EF,$00E2 ; Mid
  .WORD $00D5,$00C9,$00BE,$00B3,$00A9,$00A0,$0097,$008E,$0086,$007E,$0077,$0071 ; High
  .WORD $006A,$0064,$005F,$0059,$0054,$0050,$004B,$0047,$0043,$003F,$003B,$0038 ; Highest
  .WORD $0035,$0032,$002F,$002C,$002A,$0028,$0026,$0024,$0022,$0020,$001E,$001C ; Too High
    



.byte "END OF BANK 00"