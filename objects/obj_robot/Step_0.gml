// Inherit the parent event
if(!dead)
{
	event_inherited();
	image_speed = 0;

	if(keyboard_check(vk_left)) {
		if(!audio_is_playing(robotWalk) && playSound  && grounded)
		{
			audio_play_sound(robotWalk,10,false);
			playSound = false;
			alarm[1] = 30;
		}
		x_vel -= accel;
		image_speed = 1;
		sprite_index = robotLeft;
		right = false;
	}

	else if(keyboard_check(vk_right)) {
		if(!audio_is_playing(robotWalk) && playSound && grounded)
		{
			audio_play_sound(robotWalk,10,false);
			playSound = false;
			alarm[1] = 30;
		}

		x_vel += accel;
		image_speed = 1;
		sprite_index = robotRight;
		right = true;
	}
	else
	{
		image_index = 0;
	}

	if(keyboard_check_pressed(vk_up) && grounded) {

		audio_play_sound(robotJump2,10,false);
		y_vel = bounce_vel;
		grounded = false;
	}

	if(y < yprevious && right)
	{
		sprite_index = robotRightDefault;
		image_index = 2;
	}
	if(y > yprevious && right)
	{
		sprite_index = robotRightDefault;
		image_index = 1;
	}

	if(y < yprevious && !right)
	{
		sprite_index = robotLeftDefault;
		image_index = 2;
	}
	if(y > yprevious && !right)
	{
		sprite_index = robotLeftDefault;
		image_index = 1;
	}

	if (keyboard_check_pressed(vk_space) && itemCount != 0) {
	    audio_play_sound(shootLaser, 10, false);
	    bullet = instance_create_depth(x, y, -100, obj_bullets);
	    bullet.sprite_index = robotBullet;

	    if (right) {
	        bullet.dir = 1;
	    } else {
	        bullet.dir = -1;
	    }

	    if (itemCount == 1) {
	        bullet.spd = 8;
	        bullet.image_xscale = 1;
	        bullet.image_yscale = 1;
			itemCount--;
	    } else if (itemCount == 2) {
	        bullet.spd = 15;
	        bullet.image_xscale = 1.5;
	        bullet.image_yscale = 1.5;
			itemCount-=2;
	    } else if (itemCount == 3) {
	        bullet.spd = 20;
	        bullet.image_xscale = 2.5;
	        bullet.image_yscale = 2.5;
			itemCount-=3;
	    }

	}
}

if(respawn)
{
	audio_play_sound(penguinHurt3,10,false);
	image_speed = 1;
	sprite_index = robotHurt;
	itemCount = 0;
	dead = true;
	right = false;
	alarm[2] = 120;
	image_blend = c_red;
	alarm[0] = 120;
	x = 1020;
	y = 1200;
	death = part_system_create(deathBurst);
	part_system_position(death,x,y);
	respawn = false;
}

if(goodRespawn)
{
	image_speed = 1;
	sprite_index = robotGood;
	dead = true;
	right = false;
	alarm[2] = 120;
	image_blend = c_green;
	alarm[0] = 120;
	x = 1020;
	y = 1200;
	good = part_system_create(goodPArt);
	part_system_position(good,x,y);
	goodRespawn = false;
}

if(!dead)
{
	if (grounded && abs(x_vel) > 0.5 && !right) {
    part_particles_create(parts,x+20,y+20,dust,1);
	
}
if (grounded && abs(x_vel) > 0.5 && right) {
    part_particles_create(parts,x-20,y+20,dust,1);
	
}
if(grounded)
{
	if !dust_played part_particles_create(parts,x,y+5,dust,15);
	dust_played = true;
}
else
{
	dust_played = false;
}
}


