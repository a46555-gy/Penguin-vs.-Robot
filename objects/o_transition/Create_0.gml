enum states {
	OUT,
	IN
}

state = states.OUT;

spr = s_trans_sq;

sprw = sprite_get_width(spr);
sprh = sprite_get_height(spr);

xmax = room_width div sprw;

ymax = room_height div sprh;
imax = sprite_get_number(spr);

sub_image_index_inc = sprite_get_speed(spr)/room_speed;
sub_image_index = 0;

col = c_black;

target_room = noone;
