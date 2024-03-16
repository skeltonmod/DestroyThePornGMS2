move_bounce_solid(true);

if(instance_exists(player)){
    motion_add(point_direction(x,y,instance_nearest(x,y, player).x,instance_nearest(x,y, player).y),0.5);
}

direction += random(60) - 30;

