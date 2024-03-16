// get the save file
if(!instance_exists(lighting_controller)){
    instance_create(0, 0, lighting_controller);
}

if(!instance_exists(decal_controller)){
    instance_create(0, 0, decal_controller)
}

//show_debug_overlay(true)
spawning_player = false;