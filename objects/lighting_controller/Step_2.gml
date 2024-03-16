// recreate them again
if (!surface_exists(my_surface_big)) {
    my_surface_big = surface_create(room_width, room_height)
}

if (!surface_exists(my_surface_glow)) {
    my_surface_glow = surface_create(room_width, room_height)
}

if (!surface_exists(my_surface_small)) {
    my_surface_small = surface_create(room_width / 2, room_height / 2)
}

/// draw things to the surface
surface_set_target(my_surface_big)
draw_clear(make_color_rgb(125, 125, 125))

/*** draw lighting on surface ***/
draw_set_blend_mode(bm_subtract)
with(lighting)
draw_self();

with(shotgun_bullet)
draw_self();

if (instance_exists(lava_glow)) {
    with(lava_glow) {
        draw_rectangle_color(0, 0, room_width, room_height, c_red, c_red, c_red, c_red, false)
    }
}

draw_set_blend_mode(bm_normal)


/*** glow surface ***/
surface_reset_target()
with(shotgun_bullet)
draw_self();
if (instance_exists(lava_glow)) {
    with(lava_glow) {
        draw_rectangle_color(0, 0, room_width, room_height, c_red, c_red, c_red, c_red, false)
    }
}
surface_set_target(my_surface_glow)
draw_clear(c_black)

/*** draw lighting on surface ***/
draw_set_blend_mode(bm_add)
draw_set_blend_mode(bm_normal)


surface_reset_target()

/* */
/// blur the surface
draw_set_blend_mode_ext(bm_one, bm_zero)
texture_set_interpolation(true)
repeat(10) {
    surface_set_target(my_surface_small)
    draw_surface_ext(my_surface_big, 0, 0, .5, .5, 0, c_white, 1)
    surface_reset_target()

    surface_set_target(my_surface_big)
    draw_surface_ext(my_surface_small, 0, 0, 2, 2, 0, c_white, 1)
    surface_reset_target()
}
texture_set_interpolation(false)
draw_set_blend_mode(bm_normal)

//my_surface_glow
draw_set_blend_mode_ext(bm_one, bm_zero)
texture_set_interpolation(true)
repeat(10) {
    surface_set_target(my_surface_small)
    draw_surface_ext(my_surface_glow, 0, 0, .5, .5, 0, c_white, 1)
    surface_reset_target()

    surface_set_target(my_surface_glow)
    draw_surface_ext(my_surface_small, 0, 0, 2, 2, 0, c_white, 1)
    surface_reset_target()
}
texture_set_interpolation(false)
draw_set_blend_mode(bm_normal)

/* */
/*  */