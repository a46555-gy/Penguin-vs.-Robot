var _platform = instance_place(x, y + 1, obj_platform);
var _onSolidPlatform = (_platform != noone && instance_exists(_platform) && _platform.sprite_index == spr_platform);
var _onBottom = place_meeting(x, y, obj_bottom);

if (_onSolidPlatform || _onBottom) {
    x += xmoveRate * dir;

    if (x <= 0 || x >= room_width) {
        dir *= -1;
    }
} else {
    y += ymoveRate;
}