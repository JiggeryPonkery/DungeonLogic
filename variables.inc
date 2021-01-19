
oam         = $200

joy         = $00
joy_dir     = $01
joy_a       = $02
joy_b       = $03
joy_select  = $04
joy_start   = $05
joy_prev    = $06
joy_ignore  = $07
joy_tmp     = $08

return_bank = $09
current_bank= $0A 
sprite      = $0B ; sprite index
sprite_y    = $0C
sprite_x    = $0D
soft2000    = $0E
soft2001    = $0F

cursor_x    = $10
cursor_y    = $11
clues       = $12 ; $x1 = vertical clues, $x0 horizontal clues
options     = $13 ; $x1 = sfx muted, $8x = music muted
pause       = $14 ; $00 = unpaused,  $01 = paused
puzzle      = $15 ; puzzle #
;           = $16 ; used for building the puzzle

moves       = $1A ; moves taken
;           = $1B
gametime    = $1C ; frames
;           = $1D ; seconds
;           = $1E ; minutes
;           = $1F ; hours

tmp         = $20

tmp_pointer = $30

row1        = $A0
row1_status = $A7
row2        = $A8
row2_status = $AF
row3        = $B0
row3_status = $B7
row4        = $B8
row4_status = $BF
row5        = $C0
row5_status = $C7
row6        = $C8
row6_status = $CF

row1_solved = $D0
row2_solved = $D8
row3_solved = $E0
row4_solved = $E8
row5_solved = $F0
row6_solved = $F8
