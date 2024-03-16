if (state == "flying") {
    image_index = clamp_wrap(image_index, 0, 5);
} else {
    image_index = clamp_wrap(image_index, 6, 6);
}

if (point_distance(x, y, xdest, ydest) > 5) {
    direction = point_direction(x, y, xdest, ydest)
    speed = 5
} else {
    x = xdest
    y = ydest
    speed = 0
}

if(instance_exists(player)){
	if(x != player.x)
       image_xscale = sign(player.x - x)
}

show_debug_message(state)