
if(obj_helpScreen.sprite_index == spr_instructions2)
{
	image_index = 2;
}
else
{
	if(mouse_x > obj_nextButton.bbox_left && mouse_x < obj_nextButton.bbox_right &&
	mouse_y > obj_nextButton.bbox_top && mouse_y < obj_nextButton.bbox_bottom)
	{
		y = lerp(y,986,0.16);
		image_index = 1;
		
	}
	else
	{
		y = lerp(y,992,0.16);
		image_index = 0;
	}
	
}
