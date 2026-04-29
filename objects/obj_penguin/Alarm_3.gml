var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);

camera_set_view_pos(view_camera[0], cam_x + irandom_range(-shake_amt, shake_amt),
					cam_y + irandom_range(-shake_amt, shake_amt));
					
shake_amt--;

if(shake_amt <= 0)
{
	shake_amt = 5;
}
else
{
	alarm[3] = 1;
}