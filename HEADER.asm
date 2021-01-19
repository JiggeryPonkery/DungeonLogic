.segment "HEADER"

  .byte "N"
  .byte "E"
  .byte "S"
  .byte $1A
  .byte 4         ;UNROM has 8 16k banks; change this to 4 or 16 as needed
  .byte 0         ;No CHR ROM
  .byte $C0       ;Mapper 2
  .byte $18       ;horizontal mirroring, NES 2.0
  
  .byte $00       ;No submapper
  .byte $00       ;PRG ROM not 4 MiB or larger
  .byte $00       ;No PRG RAM
  .byte $07       ;8192 (64 * 2^7) bytes CHR RAM, no battery
  .byte $00       ;NTSC; use $01 for PAL
  .byte $00       ;No special PPU
  .byte $00
  .byte $00