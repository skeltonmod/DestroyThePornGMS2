// this is the part where joe says the N word
if(player.image_index < (sprite_get_number(player.sprite_index) - 1)){
	timeline_position -= 1;
}else{
	player.sprite_index = joe;
	player.image_speed = 0;
	player.dir = -1;
	audio_stop_sound(sfx_missile_charge);
}