/// @description  create and clear surfaces
my_surface_big = surface_create(room_width, room_height)
my_surface_small = surface_create(room_width / 2, room_height / 2)
my_surface_glow = surface_create(room_width, room_height)


/*** clear surface ***/
surface_set_target(my_surface_big)
draw_clear(c_white)
surface_reset_target()

surface_set_target(my_surface_small)
draw_clear(c_white)
surface_reset_target()

surface_set_target(my_surface_glow)
draw_clear(c_white)
surface_reset_target()

/* */
/*  */
