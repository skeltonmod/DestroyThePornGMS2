/*** draw black bars ***/
draw_sprite(sprite_index, 0, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ) + y)
draw_sprite(sprite_index, 1, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ) - y)

/*** draw the boss intro text ***/
draw_sprite(sprite_index, 2, __view_get( e__VW.XView, 0 ) + x, __view_get( e__VW.YView, 0 ))
