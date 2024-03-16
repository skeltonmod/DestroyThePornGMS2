// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_white_debris(argument0, argument1, argument2) {
    var dx = argument0
    var dy = argument1
    var m = argument2
    repeat(round(18) * m) {
        inst = instance_create(dx, dy, fragment)
        inst.sprite_index = debris_white
        inst.direction = random(360)
        inst.speed = (1 + random(2))
    }
}