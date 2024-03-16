if(head_wabble)
    draw_sprite_ext(sprite_index, image_index, x, y + lengthdir_y(4, counter), image_xscale, image_yscale, image_angle, image_blend, image_alpha)
else
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
    
if(image_blend == c_red)
    image_blend = c_ltgray