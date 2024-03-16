image_speed = 1;

instance_create(x, y, exploder)
audio_play_sound(sfx_bullet_hit, 1, false);
with(other){
    instance_destroy();
}

