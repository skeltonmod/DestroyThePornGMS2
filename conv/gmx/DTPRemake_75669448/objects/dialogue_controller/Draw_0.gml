/// @description  move the text
/*
list_x
list_y
list_text
list_alarm
*/

/*** set the scale ***/
draw_set_font(dialogue_font)

draw_set_halign(fa_left)
image_xscale = string_width(string_hash_to_newline(ds_queue_head(list_text)))
image_yscale = string_height(string_hash_to_newline(ds_queue_head(list_text)))
_image_xscale = image_xscale / 8
_image_yscale = image_yscale / 8
draw_set_colour(c_black);

/*** set the y value ***/
if(instance_exists(ds_queue_head(list_x)))
{
    // get the id of the object
    var _id;
    _id = ds_queue_head(list_x)
    
    // set the height based off the objects y, and clamp it
    y = _id.y - ds_queue_head(list_y) - 32 - image_yscale
    y = clamp(y, __view_get( e__VW.YView, 0 ), __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ))
    y = floor(y)
    tail_y = y + 15 + image_yscale
    
    // set the width based off the width of the text
    x = (__view_get( e__VW.XView, 0 ) + (__view_get( e__VW.WView, 0 ) / 2)) - ((image_xscale / 2) + 8)
    x = floor(x)
    tail_x = clamp(_id.x, x + 8, x + 8 + image_xscale)
    if(tail_x < (__view_get( e__VW.XView, 0 ) + (__view_get( e__VW.WView, 0 ) / 2)))
        xflip = 1
    else
        xflip = -1

}
else
{
    // set the height based off the objects y, and clamp it
    y = ds_queue_head(list_y) - 32 - image_yscale
    y = clamp(y, __view_get( e__VW.YView, 0 ), __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ))
    y = round(y)
    tail_y = y + 15 + image_yscale
    
    // set the width based off the width of the text
    x = (__view_get( e__VW.XView, 0 ) + (__view_get( e__VW.WView, 0 ) / 2)) - ((image_xscale / 2) + 8)
    x = round(x)
    
    tail_x = clamp(ds_queue_head(list_x), x + 8, x + 8 + image_xscale)
    if(tail_x < (__view_get( e__VW.XView, 0 ) + (__view_get( e__VW.WView, 0 ) / 2)))
        xflip = 1
    else
        xflip = -1

}

/* */
/// draw the text
/*
list_x
list_y
list_text
list_alarm
*/

/*** draw_text bubble ***/
// top
draw_sprite_ext(dialogue_np, 0, x, y, 1, 1, 0, c_white, 1)
draw_sprite_ext(dialogue_np, 1, x + 8, y, _image_xscale, 1, 0, c_white, 1)
draw_sprite_ext(dialogue_np, 2, x + 8 + image_xscale, y, 1, 1, 0, c_white, 1)

// middle
draw_sprite_ext(dialogue_np, 3, x, y + 8, 1, _image_yscale, 0, c_white, 1)
draw_sprite_ext(dialogue_np, 4, x + 8, y + 8, _image_xscale, _image_yscale, 0, c_white, 1)
draw_sprite_ext(dialogue_np, 5, x + 8 + image_xscale, y + 8, 1, _image_yscale, 0, c_white, 1)

// bottom
draw_sprite_ext(dialogue_np, 6, x, y + 8 + image_yscale, 1, 1, 0, c_white, 1)
draw_sprite_ext(dialogue_np, 7, x + 8, y + 8 + image_yscale, _image_xscale, 1, 0, c_white, 1)
draw_sprite_ext(dialogue_np, 8, x + 8 + image_xscale, y + 8 + image_yscale, 1, 1, 0, c_white, 1)

//draw tail
draw_sprite_ext(dialogue_tail, 0, tail_x, tail_y, xflip, 1, 0, c_white, 1)


/*** draw teh text in the text bubble ***/
draw_set_font(dialogue_font)
draw_set_halign(fa_left)
draw_text(x + 8, y + 8, string_hash_to_newline(string_current))

/* */
/*  */
