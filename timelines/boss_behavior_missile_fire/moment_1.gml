if(place_meeting(x, y, spike_wall))
{
    state_set(boss_behavior_missile_injure)
    //sfx_play(sfx_missle_injure)
    //if(sound_isplaying(sfx_missle_flight))
    //    sound_stop(sfx_missle_flight)
	
	audio_play_sound(sfx_missile_injure, 1, false);
	if(audio_is_playing(sfx_missile_flight)){
		audio_stop_sound(sfx_missile_flight);
	}
}
else
{
    state_set(boss_behavior_missile_stun)
    //sfx_play(sfx_missle_hit)
    //if(sound_isplaying(sfx_missle_flight))
    //    sound_stop(sfx_missle_flight)
	
	audio_play_sound(sfx_missile_hit, 1, false);
	if(audio_is_playing(sfx_missile_flight)){
		audio_stop_sound(sfx_missile_flight);
	}
}