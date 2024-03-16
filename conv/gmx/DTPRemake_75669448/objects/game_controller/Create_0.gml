globalvar power_jump, has_gun, double_jump, infinite_jump, daemon_armor;
power_jump = false;
has_gun = false;
double_jump = false;
infinite_jump = false;
daemon_armor = false;

global.freeze_input = true;
global.story_chapter = "intro";

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


