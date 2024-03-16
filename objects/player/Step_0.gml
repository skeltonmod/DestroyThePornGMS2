move_movement_entity();
if (!global.freeze_input) {
    // Movement
    enable_movement_run(1, 3, keyboard_check(vk_right), keyboard_check(vk_left));

    if (power_jump) {
        enable_movement_jump(8, keyboard_check_pressed(ord("K")), keyboard_check_pressed(ord("K")));
    }

    if (double_jump) {
        enable_movement_air_jump(6, keyboard_check_pressed(ord("K")));
    }

    // Shooting
    if (keyboard_check_direct(ord("J")) && can_shoot && has_gun) {
        can_shoot = false;
		audio_play_sound(sfx_bullet_fire, 1, false);
        instance_create(x + (8 * dir), y, shotgun_smoke)
		
		repeat(4){
			var b = instance_create(x, y, shotgun_bullet);
			b.speed = 10 * dir;
			b.direction = random_range(-5, 5);
		}
    }
	
	
	if(keyboard_check_pressed(ord("K"))){
		if(infinite_jump){
			repeat(5){
				var f = instance_create(x - 2 + random(4), y - 2 + random(4), fire_small);
				//f.depth = -100;
				f.direction = -90;
				f.speed = 2;
			}
		}
	}
}
//vsp[0] = clamp(vsp[0], 0, 30);