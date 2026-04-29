var _view_height = camera_get_view_height(view_camera[0]);
var _max_cam_y = obj_bottom.y+300;

var p1 = instance_find(obj_penguin,  0);
var p2 = instance_find(obj_robot, 0);

var p1_alive = (p1 != noone && !p1.dead);
var p2_alive = (p2 != noone && !p2.dead);

var _target_y = default_cam_y;

if(p1_alive && p2_alive)
{
    _target_y = ((p1.y + p2.y) / 2) - _view_height * 0.5;
}
else if(p1_alive)
{
    _target_y = p1.y - _view_height * 0.5;
}
else if(p2_alive)
{
    _target_y = p2.y - _view_height * 0.5;
}

_target_y = min(_target_y, _max_cam_y);

var _current_y = camera_get_view_y(view_camera[0]);
var _new_y = lerp(_current_y, _target_y, smoothing);

camera_set_view_pos(view_camera[0], 0, _new_y);