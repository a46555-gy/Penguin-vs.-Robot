image_xscale = random_range(0.98,1.11);

if(!fading)
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

 part_particles_create(parts,x,y+20,dust,1);