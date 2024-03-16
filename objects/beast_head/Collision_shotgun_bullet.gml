//with(other){
//	instance_create_depth(x, y, -100, exploder);
//	instance_destroy();
//}

if(timeline_index == boss_behavior_missile_injure)
{
    image_blend = c_red
    my_health -= 1
	instance_create(x, y, exploder);
    audio_play_sound(sfx_bullet_hit, 1, false)
    with(other)instance_destroy()
    
    if(my_health <= 0)
    {
        alarm[2] = 1
        //sound_fade(song_boss_theme, 0, 4 * 1000)
        state_set(boss_behavior_death)
        scene_start(sce_boss_death)
        image_blend = c_ltgray
    }
}
else if(timeline_index == boss_behavior_missile_destroy)
{
    // do nothing
    with(other)
    {
        instance_destroy()
    }
}
else
{
    with(other)
    {
        audio_play_sound(sfx_bullet_fail, 1, false)
		instance_create(x, y, spark);
		var d = random_range(-1, -5);
		hspeed = 2 * d
		vspeed = 2 * random_range(-1, 5);
		image_angle = direction;
    }
}