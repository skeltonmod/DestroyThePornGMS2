initialize_movement_entity(1, 3, 5, 1, par_solids);
image_speed = 0;
dir = 1;

next_frame = false;
animation_delay = .1
frame = 0;
max_frames = 4;

global.invincible = true;
global.invincible_timer = 5;


alarm[2] = 30 * global.invincible_timer

// Animation controls
alarm[0] = 30 * animation_delay;
//instance_create(x, y, shotty);

if(!instance_exists(game_controller)){
    instance_create(0, 0, game_controller);
}



// Shotgun settings
gunx = 0;
gun_delay = 10;
guny = 0;
delay = 5;
can_shoot = false;
alarm[1] = delay;
sprite_index = joe;
