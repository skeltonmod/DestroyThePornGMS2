repeat(10){
	create_explosion(8, x + random(16), y - random(32), 4)
}
audio_play_sound(sfx_missile_explosion, 1, false);
instance_destroy()