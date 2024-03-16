surface_set_target(decal_surface);
for(i=0; i< decal_index; i++) {
    if decal_list[i,0] != noone {
        draw_sprite_ext(decal_list[i,0], decal_list[i,1], decal_list[i,3], decal_list[i,4], 1, 1, decal_list[i,2], -1, 1);
        decal_list[i,0] = noone;
    }
}
decal_index = 0;
surface_reset_target();

alarm[0] = 60;

