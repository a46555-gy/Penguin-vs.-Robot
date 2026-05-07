if (blinking) {
    blinking = false;
    solid = true;
    sprite_index = spr_platform;
    alarm[0] = 180;
} else {
    solid = false;
    active  = (irandom(1) == 1);
    sprite_index = spr_unactivePlatform;

    if (active) {
      
        blinking = true;
        blink_show = true;
        blink_timer = 0;
        alarm[0] = 120;
    } else {
        alarm[0] = 180;
    }
}