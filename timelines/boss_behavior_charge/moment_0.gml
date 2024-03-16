// TODO: Add sound effects to this mfer

if(instance_exists(player))
{
    //depth = -1
    //y = obj_joe.y - 4
    if((alarm[1] > 15) && (x >= 96))
    {
		show_debug_message(y);
        vspeed = player.y - y
        vspeed = clamp(vspeed, -4, 4)
    }
    else
    {
        vspeed = 0
		//if(audio_is_playing(sfx_missile_charge)){
		//	audio_stop_sound(sfx_missile_charge);
		//	audio_play_sound(sfx_missile_flight, 1, false);
		//}
    }
}

if(x > 96)
    x -= 2
else if(x < 96)
    x += 3
else
{
    x = 96
    if(!audio_is_playing(sfx_missile_charge))
        audio_play_sound(sfx_missile_charge, 1, false);
}