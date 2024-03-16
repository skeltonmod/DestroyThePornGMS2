if(!surface_exists(decal_surface)){
    decal_surface = surface_create(room_width, room_height);
}else {
    draw_surface(decal_surface, 0, 0);
}


for(i = 0; i < decal_index; ++i){
    draw_sprite_ext(decal_list[i,0], decal_list[i,1], decal_list[i,3], decal_list[i,4], 1, 1, decal_list[i,2], -1, 1);

}

