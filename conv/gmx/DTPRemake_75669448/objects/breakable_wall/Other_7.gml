

with(collision_point(x - 1, y, object_index, false, true))
    image_speed = 1
    
with(collision_point(x + 8, y, object_index, false, true))
    image_speed = 1
    
with(collision_point(x, y - 1, object_index, false, true))
    image_speed = 1
    
with(collision_point(x, y + 8, object_index, false, true))
    image_speed = 1
    
instance_destroy()

