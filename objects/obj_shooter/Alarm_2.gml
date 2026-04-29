
if (instance_exists(warning_id))
{
    instance_destroy(warning_id);
    warning_id = noone;
}

shooting = true;
laser_id = instance_create_depth(x, y+20, 10, obj_laser);
alarm[1] = 180; 