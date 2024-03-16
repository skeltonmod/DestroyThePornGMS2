image_blend = c_ltgray
beast_head.head_wabble = false

// move back
if(x < 80)
    x += 5
else
    x = 80
    
// fall to the floor
if(object_index != beast_head)
{
    if(y < 120)
    {
        vspeed += 1
        timeline_position -= 1
    }
    else
    {
        y = 120
        vspeed = 0
        //sfx_play(sfx_missle_hit)
		audio_play_sound(sfx_missile_hit, 1, false);
    }
}
else
{
    if(y < 114)
    {
        vspeed += 1
        timeline_position -= 1
    }
    else
    {
        y = 114
        vspeed = 0
        audio_play_sound(sfx_missile_hit, 1, false);
    }
}