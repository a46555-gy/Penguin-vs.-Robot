// Inherit the parent event
if(!dead){
	event_inherited();

	image_speed = 0;

	if(keyboard_check(ord(left_key))) {
		if(!audio_is_playing(penguinWalk))
		{
			audio_play_sound(penguinWalk,10,false);
		}
		
		image_speed = 1;
		sprite_index = penguinLeft;
		right = false;
	}
	else if(keyboard_check(ord(right_key))) {
		if(!audio_is_playing(penguinWalk))
		{
			audio_play_sound(penguinWalk,10,false);
		}
		image_speed = 1;
		sprite_index = penguinRight;
		right = true;
	}
	else
	{
		image_index	= 0;
	}

	if(keyboard_check_pressed(ord("W")) && grounded) {
		
			audio_play_sound(penguinJump,10,false);
		
		y_vel = bounce_vel;
		grounded = false;
	}

	if(y < yprevious && right)
	{
		sprite_index = penguinRightDefault;
		image_index = 1;
	}
	if(y > yprevious && right)
	{
		sprite_index = penguinRightDefault;
		image_index = 2;
	}

	if(y < yprevious && !right)
	{
		sprite_index = penguinLeftDefault;
		image_index = 1;
	}
	if(y > yprevious && !right)
	{
		sprite_index = penguinLeftDefault;
		image_index = 2;
	}

	if(keyboard_check_pressed(ord("P")) && itemCount != 0) 
	{
		audio_play_sound(shootSnow,10,false);
		bullet = instance_create_depth(x,y,-100,obj_bullets);
		if(right)
		{
			bullet.sprite_index = rightSnow;
			bullet.dir = 1;
		}
		else
		{
			bullet.sprite_index = leftSnow;
			bullet.dir = -1;
		}
	
		itemCount--;
	}
}

if(respawn)
{
	audio_play_sound(penguinHurt3,10,false);
	alarm[3] = 1;
	image_speed = 1;
	sprite_index = penguinHurt;
	itemCount = 0;
	dead = true;
	right = true;
	alarm[2] = 120;
	image_blend = c_red;
	alarm[0] = 120;
	x = 60;
	y = 1200;
	death = part_system_create(deathBurst);
	part_system_position(death,x,y);
	respawn = false;
}

if(goodRespawn)
{
	
	alarm[3] = 1;
	image_speed = 1;
	sprite_index = penguinGood;
	dead = true;
	right = true;
	alarm[2] = 120;
	image_blend = c_green;
	alarm[0] = 120;
	x = 60;
	y = 1200;
	good = part_system_create(goodPArt);
	part_system_position(good,x,y);
	goodRespawn = false;
}

if(!dead)
{
	if (grounded && abs(x_vel) > 0.5) {
	    part_particles_create(parts,x-10,y+20,dust,1);
	
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