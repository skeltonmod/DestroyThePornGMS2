instance_create(0,0, shotgun_description);
has_gun = true;
audio_pause_all();
audio_play_sound(sfx_item, 1, false);
audio_play_sound(song_metal, 1, false);
instance_destroy();

