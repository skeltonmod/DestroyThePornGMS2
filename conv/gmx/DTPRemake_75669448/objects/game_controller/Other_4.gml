if(!instance_exists(lighting_controller)){
    instance_create(0, 0, lighting_controller);
}

if(!instance_exists(decal_controller)){
    instance_create(0, 0, decal_controller)
}

if(!instance_exists(camera)){
    if(instance_exists(player)){
        instance_create(player.x, player.y, camera);
    }
}


