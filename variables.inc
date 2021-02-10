
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

RNG           = $09 ; + A 
sprite        = $0B ; sprite index
scroll        = $0C ; + D

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
row           = $21
newtile       = $22
oldtile       = $23
drawtile      = $24
clues         = $25 ; $8x = game paused, $x1 = vertical clues, $x0 horizontal clues
horz_clues    = $26 ; for generation
vert_clues    = $27 ; for generation
clue_x        = $28 ; for generation
clue_y        = $29 ; for generation
vert_clues_x  = $2A ; for generation
vert_offset   = $2B ; for generation
sprite_v      = $2C ; for generation
vert_done     = $2D ; for generation
horz_done     = $2E ; for generation
clue_type     = $2F ; for generation 

options       = $26 ; $8x = music muted, $4x = sfx muted, $x1 = update text
border        = $27
abandon       = $28
moves         = $29 ; moves taken + A + B 
gametime      = $2C ; frames
;             = $2D ; seconds
;             = $2E ; minutes
;             = $2F ; hours

possibilities = $30 ; 7 bytes
total         = $37

sprite_anim   = $3B
tmp_pointer   = $3C ; + $3D
text          = $3E ; + $3F

music_track   = $40
wait_input    = $10

box_overdraw  = tmp
box_width     = tmp+1
box_height    = tmp+2
box_counter   = tmp+3

shift_amount  = tmp
tile_attr     = tmp+1
attr_dest     = tmp+2
tile_address  = tmp+3

sprite_loop   = tmp
sprite_y      = tmp+1
sprite_x      = tmp+2
sprite_attr   = tmp+3
sprite_shape  = tmp+4
sprite_over   = tmp+5

cluetile1     = tmp+7
cluetile2     = tmp+6
cluetile3     = tmp+5

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

clue_list     = $3C0

spritebuffer  = $400
spritebuffer2 = $460

vert_complete = $488
horz_complete = $500