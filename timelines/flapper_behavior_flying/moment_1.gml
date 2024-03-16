if(instance_exists(player))
{
    if(point_distance(x, y, player.x, player.y) > 100)
        timeline_position -= 1
}
else
    timeline_position -= 1