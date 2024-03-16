image_index = 0

if(!collision_point(mouse_x, mouse_y, object_index, true, false))
    image_index = 0
else if(array_length(ssave_get_all()) > 0)
    image_index = 1
    
if(!array_length(ssave_get_all()))
    image_index = 2
    
    
draw_self()