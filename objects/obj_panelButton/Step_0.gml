y+=obj_startPanel.yspd;

if(mouse_x > obj_panelButton.bbox_left && mouse_x < obj_panelButton.bbox_right &&
	mouse_y > obj_panelButton.bbox_top && mouse_y < obj_panelButton.bbox_bottom)
	{
		image_index = 1;
		
	}
	else
	{
		image_index = 0;
	}