y+=obj_startPanel.yspd;

if(mouse_x > obj_helpButton.bbox_left && mouse_x < obj_helpButton.bbox_right &&
	mouse_y > obj_helpButton.bbox_top && mouse_y < obj_helpButton.bbox_bottom)
	{
		image_index = 1;
		
	}
	else
	{
		image_index = 0;
	}