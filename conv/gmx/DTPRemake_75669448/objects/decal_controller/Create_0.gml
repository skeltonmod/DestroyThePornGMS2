globalvar decal_list, decal_index, decal_surface;

decal_index = 0;

for(i = 0; i <= 200; ++i){
    decal_list[i, 0] = noone;
    decal_list[i, 1] = 0;
    decal_list[i, 2] = 0;
    decal_list[i, 3] = 0;
    decal_list[i, 4] = 0;
    
}

decal_surface = surface_create(room_width, room_height);
alarm[0] = 60;

