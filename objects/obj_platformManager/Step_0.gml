if (irandom(100) == 0) {
    snow_id = instance_create_depth(random_range(10, room_width - 10), -3, -10, obj_snowball);
}

spawn_timer++;
if (spawn_timer >= spawn_interval) {
    spawn_timer = 0;

    var num_platforms = irandom_range(1, 5);
    var from_left = irandom(1);
    var _dir = from_left ? 1 : -1;
    var _spd = platform_speed;
    var px = from_left ? -platform_width : room_width + platform_width;

    var used_y = array_create(num_platforms, -9999);
    var placed = 0;
    var max_attempts = 20;

    for (var i = 0; i < num_platforms; i++) {
        var attempts = 0;
        var py = -1;
        var valid = false;

        while (attempts < max_attempts) {
            py  = irandom_range(room_height * 0.25, room_height * 0.85);
            valid = true;

            for (var j = 0; j < placed; j++) {
                if (abs(py - used_y[j]) < platform_height + 16) {
                    valid = false;
                    break;
                }
            }

            if (valid) break;
            attempts++;
        }

        if (valid) {
            var p = instance_create_depth(px, py, 0, obj_platform);
            p.spd = _spd;
            p.dir = _dir;
            used_y[placed] = py;
            placed++;
        }
    }
}