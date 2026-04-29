image_yscale = 1;
fading = false;
alarm[0] = 180;
depth = -100;

parts = part_system_create();

part_system_depth(parts, -10);

dust = part_type_create();
part_type_shape(dust, pt_shape_square);
part_type_size(dust, 0.1, 0.35, 0, 0);
part_type_speed(dust, .5, 1, 0, 0);
part_type_direction(dust, -180, 180, 0, 0);
part_type_alpha2(dust, 1, 0);

part_type_colour3(dust, c_yellow,c_white,c_red)
part_type_life(dust, 15, 25);

dust_played = false;

audio_play_sound(laserSound,10,false);