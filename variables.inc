


joy         = $00
joy_ignore  = $01
joy_select  = $02
joy_start   = $03
joy_a       = $04
joy_b       = $05
joy_prev    = $06

return_bank = $07
current_bank= $08 

soft2000    = $0E
soft2001    = $0F

cursor_x    = $10
cursor_y    = $11
clues       = $12 ; $8x = box open,  $x1 = vertical clues, $x0 horizontal clues
options     = $13 ; $x1 = sfx muted, $8x = music muted
pause       = $14 ; $00 = unpaused,  $01 = paused
puzzle      = $15 ; puzzle #

moves       = $1A ; moves taken
;           = $1B
gametime    = $1C ; frames
;           = $1D ; seconds
;           = $1E ; minutes
;           = $1F ; hours

tmp         = $20

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
