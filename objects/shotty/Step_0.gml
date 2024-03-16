if(keyboard_check_direct(ord("J")) && can_shoot){
    can_shoot = false;
    var b = instance_create(x, y, shotgun_bullet);
    instance_create(x + (8 * player.dir), y, shotgun_smoke)
    b.speed = 10 * player.dir;
}

