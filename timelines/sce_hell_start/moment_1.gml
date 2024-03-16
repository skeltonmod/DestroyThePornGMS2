if(player.image_index < (sprite_get_number(player.sprite_index) - 1))
    timeline_position -= 1
else
{
    player.sprite_index = joe
    audio_stop_sound(sfx_missile_charge)
}