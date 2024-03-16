/// @description add_decal(sprite index,image index,image angle,x,y);
/// @param sprite index
/// @param image index
/// @param image angle
/// @param x
/// @param y
decal_list[decal_index, 0] = argument0;
decal_list[decal_index, 1] = argument1;        
decal_list[decal_index, 2] = argument2;
decal_list[decal_index, 3] = argument3;
decal_list[decal_index, 4] = argument4

decal_index ++;

if decal_index >= 200 {
    decal_index = 0;
}
