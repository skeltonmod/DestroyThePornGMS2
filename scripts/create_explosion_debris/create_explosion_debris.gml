// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function create_explosion_debris(argument0, argument1, argument2, argument3) {
    var sz = argument0
    var sx = argument1
    var sy = argument2
    var debris_mult = argument3
    repeat round((sz * debris_mult)) {
        inst = instance_create(sx, sy, fragment)
        inst.sprite_index = explosion_debris
        inst.direction = random(360)
        inst.speed = (1 + random(3))
		inst.image_speed = 2;
        inst.image_xscale = choose(-1, 1)
        inst.image_yscale = choose(-1, 1)
    }
}