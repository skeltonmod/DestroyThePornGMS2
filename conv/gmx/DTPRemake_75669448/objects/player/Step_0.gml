move_movement_entity();
if (!global.freeze_input) {
    // Movement
    enable_movement_run(1, 3, keyboard_check(vk_right), keyboard_check(vk_left));

    if (power_jump) {
        enable_movement_jump(7, keyboard_check_pressed(ord("K")), keyboard_check_pressed(ord("K")));
    }

    if (double_jump) {
        enable_movement_air_jump(6, keyboard_check_pressed(ord("K")));
    }
    
    // Shooting
    if (keyboard_check_direct(ord("J")) && can_shoot && has_gun) {
        can_shoot = false;
        var b = instance_create(x, y, shotgun_bullet);
        instance_create(x + (8 * dir), y, shotgun_smoke)
        b.speed = 10 * dir;
    }
    
    if ((keyboard_check(vk_right) - keyboard_check(vk_left)) != 0) {
        dir = keyboard_check(vk_right) - keyboard_check(vk_left);

        if (next_frame) {
            frame += 1;
            next_frame = false;
        }

        if (frame >= max_frames) {
            frame = 0;
        }
    } else {
        frame = 0;
    }
}

if (vspd != 0) {
        frame = 5;
}

