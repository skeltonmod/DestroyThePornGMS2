function song_play(argument0){
	if(!audio_is_playing(argument0)){
		audio_stop_all();
		global.current_music = argument0;
		audio_play_sound(argument0, 1, true);
	}
	
}