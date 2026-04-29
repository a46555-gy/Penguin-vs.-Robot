x_vel *= 0.9

y_vel += grav;
r_y += y_vel;
r_x += x_vel;


var to_move_y = round(r_y);
var to_move_x = round(r_x);


r_y -= to_move_y;
r_x -= to_move_x;

var dist_to_r_wall = room_width - x - 8;
var dist_to_l_wall = x - 8;
var _mp = instance_place(x, y + 1, obj_platform);
if (_mp != noone && instance_exists(_mp) && bbox_bottom <= _mp.bbox_top + 2) {
    if (y_vel >= 0) {
        to_move_x += _mp.spd * _mp.dir;
        grounded = true;
        y_vel = 0;
        r_y = 0;
    }
}


if(to_move_x >= dist_to_r_wall) {

	x = room_width - 9;

	x_vel = abs(x_vel) * -1;

	r_x = 0;
} else if(to_move_x < -dist_to_l_wall) {

	x = 9; 

	x_vel = abs(x_vel);

	r_x = 0;
} else {

	x += to_move_x;
}

var dir = sign(to_move_y);
while (to_move_y != 0) {
    var collidewith = noone;
    var groundwith  = noone;

    if (dir >= 0) {
        collidewith = instance_place(x, y + dir, obj_platform);
        groundwith  = instance_place(x, y + dir, obj_bottom);

        if (collidewith != noone && instance_exists(collidewith)) {
            if (!place_meeting(x, y, collidewith)) {
                grounded            = true;
                collidewith.stepped = true;
            } else grounded = false;
        } else grounded = false;

        if (groundwith != noone && instance_exists(groundwith)) {
            if (!place_meeting(x, y, groundwith)) {
                grounded = true;
            }
        }
    }
	
		
	if(!grounded) {

		y += dir;
		to_move_y -= dir;
	} else {
		y_vel = 0;
		r_y = 0;
		
		break;
	}
} 



if(keyboard_check(ord(left_key))) {

	x_vel -= accel;
}

if(keyboard_check(ord(right_key))) {

	x_vel += accel;
}




