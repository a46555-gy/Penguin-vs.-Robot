x += spd * dir;

// Despawn when off screen
if (x > room_width + sprite_width || x < -sprite_width) {
    instance_destroy();
}

if (stepped) {
    image_speed = 1;
    if (image_index >= 6) {
		audio_play_sound(iceBreak,10,false);
        instance_destroy();
    }
}