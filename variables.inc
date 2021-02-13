
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
puzzle        = $09 ; puzzle #
RNG           = $0A ; + 0B
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
clues         = $1B ; $8x = game paused, $x1 = vertical clues, $x0 horizontal 
update_attr   = $1C ; $8x = update tile attribute, $x1 = update possibilities attributes
drawjob       = $1D ; $8x = update tile with drawtile, $x1 = update possibilities
dest          = $1E ; + 1F

options       = $20 ; $8x = music muted, $4x = sfx muted, $x1 = update text
music_track   = $21
border        = $22
abandon       = $23
game_over     = $24 ; $8x = game won, $x1 = game over/menu, $00 = game in progress
wait_input    = $25
row           = $26
col           = $27
loop          = $28
moves         = $29 ; + A + B; moves taken
gametime      = $2B ; frames
;             = $2D ; seconds
;             = $2E ; minutes
;             = $2F ; hours

possibilities = $30 ; 7 bytes
total         = $37
newtile       = $38
oldtile       = $39
drawtile      = $3A
shift_amount  = $3B
tile_attr     = $3C
attr_dest     = $3D
tile_address  = $3E 
tile_tmp      = $3F

sprite        = $40
sprite_y      = $41
sprite_x      = $42
sprite_attr   = $43
sprite_shape  = $44
sprite_over   = $45
sprite_loop   = $46
sprite_anim   = $47

box_overdraw  = $48
box_width     = $49
box_height    = $4A
box_counter   = $4B
pointer       = $4C ; + $4D
text          = $4E ; + $4F


cluetile1     = $50
cluetile2     = $51
cluetile3     = $52
tile1_error   = $53
tile2_error   = $54
tile3_error   = $55
tile1_row     = $56
tile1_col     = $57
tile1_pos     = $58
tile2_row     = $59
tile2_col     = $5A
tile2_pos     = $5B
tile3_row     = $5C
tile3_col     = $5D
tile3_pos     = $5E

horz_clues    = $60
vert_clues    = $61
vert_clues_s  = $62
horz_sprites  = $63
vert_sprites  = $64
vert_offset   = $65
vert_done     = $66
horz_done     = $67
clue_sprite   = $68
clue_type     = $69
clue_shape    = $6A
clue_limit    = $6B
clue_error    = $6C

channels        = $B0
score           = $B0 + 1
tempo           = $B2
DPCM            = $B3

square1         = $C0
square2         = $D0
triangle        = $E0
noise           = $F0

sq1_pointer     = $C0 ; + 1
sq1_freq        = $C2 ; + 3
sq1_vol         = $C4 
sq1_loop        = $C5
sq1_octave      = $C6
sq1_instrument  = $C7
sq1_return      = $C8 ; + 9
sq1_goto        = $CA ; + B

sq2_pointer     = $D0 ; + 1
sq2_freq        = $D2 ; + 3
sq2_vol         = $D4 
sq2_loop        = $D5
sq2_octave      = $D6
sq2_instrument  = $D7
sq2_return      = $D8 ; + 9
sq2_goto        = $DA ; + B

tri_pointer     = $E0 ; + 1
tri_freq        = $E2 ; + 3
tri_vol         = $E4 
tri_loop        = $E5
tri_octave      = $E6
tri_return      = $E8 ; + 9
tri_goto        = $EA ; + B

noise_pointer   = $F0 ; + 1
noise_freq      = $F2 ; + 3
noise_vol       = $F4 
noise_loop      = $F5
noise_octave    = $F6
noise_instrument= $F7
noise_return    = $F8 ; + 9
noise_goto      = $FA ; + B




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
spritebuffer2 = $480

vert_complete = $500

horz_complete = $600