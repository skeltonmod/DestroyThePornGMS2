draw_set_blend_mode(bm_subtract)
draw_surface_ext(my_surface_big, 0, 0, 1, 1, 0, c_white, 1)
draw_set_blend_mode(bm_add)
draw_surface(my_surface_glow, 0, 0)
draw_set_blend_mode(bm_normal)

