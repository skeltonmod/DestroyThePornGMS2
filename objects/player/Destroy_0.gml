if(global.story_chapter != "intro" && global.story_chapter != "boss death"){
	create_explosion(8, x, y, 1);
	audio_play_sound(sfx_player_death, 1, false);
}