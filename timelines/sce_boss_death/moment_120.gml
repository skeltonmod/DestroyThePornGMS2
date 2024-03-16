with(beast_head)
{
    repeat(20){
		instance_create(x - 16 + random(32), y - 16 + random(32), exploder)
	}
    //sfx_play(sfx_missle_explosion)
	audio_play_sound(sfx_missile_explosion, 1, false);
    instance_destroy()
}