if(player.sprite_index != player_intro){
	player.sprite_index = player_intro
	player.image_speed = 0.25;
	sound_loop(sfx_missile_charge)
	audio_sound_gain(song_quirky, 0, 1000)
}