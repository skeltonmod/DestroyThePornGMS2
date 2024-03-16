//my_health -= 1;
if(timeline_index == boss_behavior_missile_injure)
{
    image_blend = c_red
    my_health -= 1
    instance_create_depth(x, y, -100, exploder);
    audio_play_sound(sfx_bullet_hit, 1, false);
    with(other)instance_destroy()
    
    if(my_health <= 0)
    {
        state_set(boss_behavior_missile_destroy)
        alarm[0] = 1
        image_blend = c_dkgray
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