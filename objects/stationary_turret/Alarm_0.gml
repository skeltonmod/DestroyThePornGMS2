alarm[0] = 30;

var _dir;
_dir = image_angle;

if(instance_exists(player)){
    if(point_distance(x, y, player.x, player.y) < 80){
        with(instance_create(x, y - 2, turret_missile)){
            direction = _dir;
            x += hspeed / 2;
            y += vspeed / 2;
            
            // TODO: CREATE PARTICLE
        }
    
    }

}

