/// @description move_movement_entity()
function move_movement_entity() {
    var yslope = 0;

    // Air jump reset
    if (place_meeting(x, y+1, collision_object)) {
        air_jump = 1;
    }

    // Get the total speeds
    hspd = hsp[0]+hsp[1];
    vspd = vsp[0]+vsp[1];

    // Move down a slope
    if (!place_meeting(x+hspd, y, collision_object) && abs(hspd) > 0 && place_meeting(x, y+1, collision_object)) {
        while (!place_meeting(x+hspd, y-yslope, collision_object) && yslope >= -abs(hspd)) {
            yslope--;
        }
    
        // Make sure we actually need to move down
        if (yslope != 0 && place_meeting(x+hspd, y-yslope+1, collision_object)) {
            y -= yslope;
        }
    }

    // Horizontal check
    if (place_meeting(x+hspd, y, collision_object)) {
        // Move up a slope
        while (place_meeting(x+hspd, y-yslope, collision_object) && yslope <= abs(hspd)) {
            yslope++;
        }
    
        if (place_meeting(x+hspd, y-yslope, collision_object)) {
            // Move to contact and bounce
            while (!place_meeting(x+sign(hspd), y, collision_object)) {
                x+=sign(hspd);
            }
        
            // Update the horizontal speeds
            hspd = 0;
            hsp[0] = 0;
            hsp[1] = -(hsp[1])*bounce;
        
            // Stop bounce at low values
            if (abs(hsp[1]) < 1) hsp[1] = 0;
        } else {
            y-=yslope;
        }
    }
    if (!place_meeting(x+hspd, y, collision_object)) {
        x += hspd;
    }

    // Clamp vertical speed before collision check
    vspd = clamp(vspd, -20, 20); // Add upper and lower bounds

    // Break down vertical movement into smaller steps if speed is high
    var step_size = 4; // Adjust this value based on your needs
    var remaining_vspd = vspd;
    
    while (abs(remaining_vspd) > 0) {
        var move_amount = min(abs(remaining_vspd), step_size) * sign(remaining_vspd);
        
        if (place_meeting(x, y + move_amount, collision_object)) {
            // Move to contact
            while (!place_meeting(x, y+sign(move_amount), collision_object)) {
                y += sign(move_amount);
            }
            
            // Update the vertical speeds
            vspd = 0;
            vsp[0] = 0;
            vsp[1] = -vsp[1] * bounce;
            
            // Stop bounce at low values
            if (abs(vsp[1]) < 1) vsp[1] = 0;
            
            break; // Exit the loop since we've hit something
        } else {
            y += move_amount;
            remaining_vspd -= move_amount;
        }
    }

    /// Apply gravity
    if (!place_meeting(x, y+1, collision_object)) {
        vsp[0] += grav;
    }

    // Apply friction
    if (place_meeting(x, y+1, collision_object)) {
        if (horizontal_move_input == false) {
            hsp[0] = approach(hsp[0], 0, fric);
        }
    
        hsp[1] = approach(hsp[1], 0, fric);
    }

    // Air resistance
    if (horizontal_move_input == false) {
        hsp[0] = approach(hsp[0], 0, air_res);
    }
    if (vertical_move_input == false && grav == 0) {
        vsp[0] = approach(vsp[0], 0, air_res);
    }

    hsp[1] = approach(hsp[1], 0, air_res);
    vsp[1] = approach(vsp[1], 0, air_res);
}