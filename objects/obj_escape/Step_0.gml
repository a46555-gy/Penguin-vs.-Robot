
if(obj_helpScreen.sprite_index == spr_instructions2)
{
	notPressable = true;
	image_index = 2;
}
else if(obj_helpScreen.sprite_index == spr_instructions)
{
	notPressable = false;
	image_index = 0;
	if(mouse_x > obj_escape.bbox_left && mouse_x < obj_escape.bbox_right &&
	mouse_y > obj_escape.bbox_top && mouse_y < obj_escape.bbox_bottom)
	{
		y = lerp(y,280,0.16);
		image_index = 1;
		
	}
	else
	{
		y = lerp(y,288,0.16);
		image_index = 0;
	}
}

	
	

