
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

position      = $19
old_position  = $1A

dest          = $1B ; + 1C

mult_A        = $1B
mult_X        = $1C

game_over     = $1D ; $8x = game won, $x1 = game over/menu, $00 = game in progress

update_attr   = $1E ; $8x = update tile attribute, $x1 = update possibilities attributes
drawjob       = $1F ; $8x = update tile with drawtile, $x1 = update possibilities

puzzle        = $20 ; puzzle #
clues         = $21 ; $8x = game paused, $x1 = vertical clues, $x0 horizontal clues
row           = $22
newtile       = $23
oldtile       = $24
;             = $25
drawtile      = $26
options       = $27 ; $8x = music muted, $4x = sfx muted, $x1 = update text
border        = $28
abandon       = $29
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

music_track   = $40

box_overdraw  = tmp
box_width     = tmp+1
box_height    = tmp+2
box_counter   = tmp+3

shift_amount  = tmp
tile_attr     = tmp+1

tmp           = $F0 ; $10 bytes

solved        = $300
row1_solved   = $300
row2_solved   = $308
row3_solved   = $310
row4_solved   = $318
row5_solved   = $320
row6_solved   = $328

selected      = $330
row1_player   = $330
row2_player   = $338
row3_player   = $340
row4_player   = $348
row5_player   = $350
row6_player   = $358

unsolved      = $360
row1_unsolved = $360
row2_unsolved = $368
row3_unsolved = $370
row4_unsolved = $378
row5_unsolved = $380
row6_unsolved = $388

removed       = $390
row1_removed  = $390
row2_removed  = $398
row3_removed  = $3A0
row4_removed  = $3A8
row5_removed  = $3B0
row6_removed  = $3B8

attributes    = $3C0