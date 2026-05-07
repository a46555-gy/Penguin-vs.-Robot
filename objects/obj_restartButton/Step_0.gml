y+=obj_endPanel.yspd;

if(mouse_x > obj_restartButton.bbox_left && mouse_x < obj_restartButton.bbox_right &&
	mouse_y > obj_restartButton.bbox_top && mouse_y < obj_restartButton.bbox_bottom)
	{
		image_index = 1;
		
	}
	else
	{
		image_index = 0;
	}