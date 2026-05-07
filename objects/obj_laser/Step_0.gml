image_xscale = random_range(0.98, 1.11);

if (!fading)
{
    rate = 0.4;
}

if (fading)
{
    rate = -0.8;

    if (image_yscale <= 0)
    {
        instance_destroy(self);
    }
}

image_yscale += rate;

var shield = instance_place(x, y, obj_shield);
if (shield != noone)
{
   
    var dist = point_distance(x, y, shield.x, shield.y);
    var max_scale = dist / sprite_get_height(sprite_index);
    if (image_yscale > max_scale)
    {
        image_yscale = max_scale;
    }
	
	part_particles_create(parts, shield.x, shield.y - 20, dust, 1);
}

part_particles_create(parts, x, y + 20, dust, 1);