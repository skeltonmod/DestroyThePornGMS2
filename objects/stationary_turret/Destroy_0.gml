create_explosion(8, x, y, 1);

for(var i = 0; i < 2; ++i){
	var inst = instance_create(x + random(23), y - random (10), gib_turret);
	
	inst.image_speed = 0;
	inst.image_index = i;
	
}