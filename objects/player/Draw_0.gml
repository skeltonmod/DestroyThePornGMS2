var _dir = 1;
_dir = sign(hsp[0]);
if (_dir <> 0) {
    dir = _dir;

    if (next_frame) {
        frame += 1;
        next_frame = false;
    }

	//frame = clamp_wrap(image_index, 1, 4);
    if (frame >= max_frames) {
        frame = 0;
    }
	//show_debug_message(clamp_wrap(image_index, 0, max_frames))
	
} else {
    frame = 0;
}

if (vspd != 0) {
    frame = 5;
}

if (sprite_index == player_intro) {
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, 1, 0, c_white, 255);

} else {
    if (!daemon_armor) {
        draw_sprite_ext(sprite_index, frame, x, y, dir, 1, 0, c_white, 255);
    } else {
        draw_sprite_ext(joe_alt, frame, x, y, dir, 1, 0, c_white, 255);
    }

}



if (has_gun) {
    draw_sprite_ext(shotgun, 0, gunx, guny, dir, 1, 0, c_white, 255);
}

