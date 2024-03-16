my_string = string(floor(my_timer))

draw_set_font(dialogue_font)
x = floor(__view_get( e__VW.XView, 0 ) + (__view_get( e__VW.WView, 0 ) / 2) - (string_width(my_string) / 2))
y = floor(__view_get( e__VW.YView, 0 ))

draw_text_color(x + 1, y + 1, my_string, c_black, c_black, c_black, c_black, 1)
draw_text_color(x, y, my_string, c_white, c_white, c_white, c_white, 1)