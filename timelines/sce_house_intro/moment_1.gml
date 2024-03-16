with(instance_create(28, 259, player)){
	sprite_index = player_intro;
	global.freeze_input = true;
	has_gun = true;
	sound_loop(sfx_missile_charge);
}