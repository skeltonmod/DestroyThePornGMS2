if(player.image_index < (sprite_get_number(player.sprite_index) - 1)){
	timeline_position -= 1;
}else{
	with(player){
		instance_destroy();
	}
	audio_stop_sound(sfx_missile_charge);
}