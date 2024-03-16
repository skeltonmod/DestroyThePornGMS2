if(!instance_exists(player)){
	with(instance_create(96, 104, player)){
    sprite_index = player_intro;
	global.freeze_input = true;
    image_speed = .25;
    sound_loop(sfx_missile_charge);
	}
}

