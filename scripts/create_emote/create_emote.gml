// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_emote(argument0, argument1, argument2) {
    if (instance_exists(argument0)) {
		(instance_create(argument0.x - 5, argument0.y - argument1, emote)).sprite_index = argument2
	} else {
        (instance_create(argument0.x - 2, argument1 - argument1, emote)).sprite_index = argument2
    }
}