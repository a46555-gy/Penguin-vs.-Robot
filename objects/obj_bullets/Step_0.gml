x += dir * spd;

if (x < 0 || x > room_width) {
    instance_destroy();
}

if (sprite_index == robotBullet && place_meeting(x, y, obj_penguin) && !obj_penguin.dead) {
    instance_destroy();
    obj_penguin.respawn = true;
    obj_robot.playerScore++;
}

if (sprite_index == rightSnow || sprite_index == leftSnow) {
    if (place_meeting(x, y, obj_robot) && !obj_robot.dead) {
        instance_destroy();
        obj_robot.respawn = true;
        obj_penguin.playerScore++;
    }
}