if(instance_exists(player))
{
    var _angle;
    _angle = point_direction(x, y, player.x, player.y)
    xdest = x + lengthdir_x(100, _angle)
    ydest = y + lengthdir_y(100, _angle)
    state_set(flapper_behavior_dive)
}
else
	state = "flying"
    state_set(flapper_behavior_flying)