if (yscale) {
    draw_sprite_ext(sprite_index, image_index, x, y, xscale, yscale, image_angle, image_blend, image_alpha)
} else {
    draw_sprite_ext(sprite_index, image_index, x, y - 8, xscale, yscale, image_angle, image_blend, image_alpha)
}

