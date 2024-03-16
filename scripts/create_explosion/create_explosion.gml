// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_explosion(argument0, argument1, argument2, argument3) {
    var sz = argument0
    var sx = argument1
    var sy = argument2
    var debris_mult = argument3

    p = 0;
	
	exps = [];
	expp = [];
	
    if ((sz == 8)) {
        create_explosion_part(8, 0, 1)
        create_explosion_part(8, 3, 2)
        inst = instance_create(sx, sy, exploder)
        inst.expCount = 2
        inst.expSize = 1
        inst.expRadius = 4
    }

    for (var i = 0; i < p; i++) {
        var spr = exps[i]
        var pos = expp[i]
        pos = ((pos / 2) + random((pos / 2)))
        var dir = random(360)
        inst = instance_create(round((sx + lengthdir_x(pos, dir))), round((sy + lengthdir_y(pos, dir))), explosion_part)
        inst.sprite_index = explosion
        inst.image_index = choose(0, 1)
        inst.image_speed = (0.20000000000000001 + random(0.29999999999999999))
        inst.vspeed = (0.5 + random(0.29999999999999999))
        inst.gravity_direction = 90
        inst.gravity = 0.044999999999999998
        inst.depth = 5
        inst.image_xscale = choose(-1, 1)
        inst.image_yscale = choose(-1, 1)
    }
	
	create_explosion_debris(sz, sx, sy, debris_mult);
	create_white_debris(sx, sy, debris_mult);
}