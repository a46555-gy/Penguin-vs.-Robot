if (blinking) {
    blink_timer++;
    if (blink_timer >= 15) {
        blink_timer = 0;
        blink_show  = !blink_show;
    }
    sprite_index = blink_show ? spr_platform : spr_unactivePlatform;
}