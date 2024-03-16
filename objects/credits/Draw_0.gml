/*** draw the shading ***/
draw_set_alpha(image_alpha)
draw_rectangle_color(__view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ), __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ),
                     c_black, c_black, c_black, c_black, false)
draw_set_alpha(1)
draw_sprite(sprite_index, image_index, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ) + y)