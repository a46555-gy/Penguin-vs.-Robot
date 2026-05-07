if (other.bbox_bottom <= bbox_top + 8) {
    triggered = true;

    if (triggered && image_index == 0) {
        star = part_system_create(starBurst);
        part_system_position(star, x, y);
        obj_robot.playerScore += 5;
        obj_robot.goodRespawn = true;
        alarm[0] = 600;
    }
}