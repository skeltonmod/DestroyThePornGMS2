x = room_width
y = random(room_height)
hspeed = -1
vspeed = 1 - random(2)

alarm[0] = 120
my_health = 2;

onscreen = function() {
    var _r;
    _r = true

    if (x != clamp(x, __view_get( e__VW.XView, 0 ) - sprite_get_width(sprite_index), __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) + sprite_get_xoffset(sprite_index)))
        _r = false

    if (y != clamp(y, __view_get( e__VW.YView, 0 ) - sprite_get_height(sprite_index), __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) + sprite_get_yoffset(sprite_index)))
        _r = false


    return _r;
}