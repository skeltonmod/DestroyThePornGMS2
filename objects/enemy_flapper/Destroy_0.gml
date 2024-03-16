create_explosion(8, x, y, 1);

// FUCK YEAH! GORE SHIT
for(var i = 0; i < 4; ++i){
	var inst = instance_create(x + random(23), y - random (10), flapper_gib);
	inst.image_speed = 0;
	inst.image_index = i;
}