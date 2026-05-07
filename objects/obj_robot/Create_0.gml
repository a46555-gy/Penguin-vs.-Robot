image_speed = 0;
itemCount = 3;
right = false;

var bullet = noone;

playerScore = 0;
playSound = true;
depth = -1000;

respawn	= false;
goodRespawn = false;
dead = false;

parts = part_system_create();

part_system_depth(parts, -30);

dust = part_type_create();
part_type_shape(dust, pt_shape_square);
part_type_size(dust, 0.1, 0.35, 0, 0);
part_type_speed(dust, .7, 1, 0, 0);
part_type_direction(dust, 0, 360, 0, 0);
part_type_alpha2(dust, 1, 0);

part_type_colour2(dust, c_black,c_teal)
part_type_life(dust, 10, 20);

dust_played = false;