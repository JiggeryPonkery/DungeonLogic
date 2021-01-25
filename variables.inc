
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
update_attr   = $1E ; $8x = update attributes
drawjob       = $1F ; $8x = update tile with "chosen", $x1 = update possibilities

puzzle        = $20 ; puzzle #
clues         = $21 ; $8x = game paused, $x1 = vertical clues, $x0 horizontal clues
row           = $22
newtile       = $23
oldtile       = $24
position      = $25
drawtile      = $26
dest          = $27 ; + 28
options       = $29 ; $8x = music muted, $4x = sfx muted, $x# = background colour
moves         = $2A ; moves taken
;             = $2B
gametime      = $2C ; frames
;             = $2D ; seconds
;             = $2E ; minutes
;             = $2F ; hours

possibilities = $30 ; 7 bytes
total         = $37
tmp_pointer   = $38 ; + $39
;             = $3A ; + $3B
;             = $3C ; + $3D
text          = $3E ; + $3F

unsolved      = $40 ; 42 bytes
row1_status   = $47
row2_status   = $4F
row3_status   = $57
row4_status   = $5F
row5_status   = $67
row6_status   = $6F

removed       = $70 ; 42 bytes up to $9F

attributes    = $A0

tmp           = $F0 ; $10 bytes

row1_solved   = $300
row2_solved   = $308
row3_solved   = $310
row4_solved   = $318
row5_solved   = $320
row6_solved   = $328

row1_player   = $330
row2_player   = $338
row3_player   = $340
row4_player   = $348
row5_player   = $350
row6_player   = $358