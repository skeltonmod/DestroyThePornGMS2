// 43, 99
if (!instance_exists(player)) {
    with(instance_create(43, 92, player)) {
        sprite_index = player_intro;
        image_speed = 0.25;
		global.freeze_input = true;
        sound_loop(sfx_missile_charge);
    }
}
