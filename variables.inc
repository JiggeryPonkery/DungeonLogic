
oam           = $200

joy           = $00
joy_dir       = $01
joy_a         = $02
joy_b         = $03
joy_select    = $04
joy_start     = $05
joy_prev      = $06
joy_ignore    = $07
joy_tmp       = $08

return_bank   = $09
current_bank  = $0A
sprite        = $0B ; sprite index
sprite_y      = $0C
sprite_x      = $0D
soft2000      = $0E
soft2001      = $0F

cursor        = $10
cursor_x      = $11
cursor_y      = $12
cursor2_x     = $13
cursor2_y     = $14
cursor_x_max  = $15
cursor_y_max  = $16
cursor_dot    = $17
cursor_dot_y  = $18

mult_A        = $19
mult_X        = $1A

puzzle        = $20 ; puzzle #
clues         = $21 ; $8x = game paused, $x1 = vertical clues, $x0 horizontal clues
options       = $22 ; $8x = music muted, $4x = sfx muted, $x# = background colour
moves         = $23 ; moves taken
;             = $24
gametime      = $2C ; frames
;             = $2D ; seconds
;             = $2E ; minutes
;             = $2F ; hours

tmp           = $30

possibilities = $40 ; 7 bytes
chosen        = $47

tmp_pointer   = $48 ; + $39
;             = $4A ; + $3B
;             = $4C ; + $3D
;             = $4E ; + $3F

row1          = $50
row1_status   = $57
row2          = $58
row2_status   = $5F
row3          = $60
row3_status   = $67
row4          = $68
row4_status   = $6F
row5          = $70
row5_status   = $77
row6          = $78
row6_status   = $7F

row1_solved   = $300
row2_solved   = $308
row3_solved   = $310
row4_solved   = $318
row5_solved   = $320
row6_solved   = $328
