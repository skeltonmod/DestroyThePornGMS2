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

