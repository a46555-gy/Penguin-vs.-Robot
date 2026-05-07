if(other.id != lastLaser)
{
	lastLaser = other.id;
	durability--;
	
	if(durability == 2)
	{
		image_index = 1;
	}
	else if (durability == 1) 
	{
		image_index = 2;
    } 
	else if (durability <= 0) 
	{

        obj_penguin.laserHit = true;
        instance_destroy();
    }
}
	