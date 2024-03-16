step++;
if((step % explodeEvery) == 0){
	var r = random(expRadius);
	var d = random(360);
	
	var inst = instance_create((x + lengthdir_x(r, d)), (y + lengthdir_y(r, d)), exploder_2)
    inst.image_speed = 0.25
    inst.sprite_index = explode_12x12
	image_speed = 0.25;
	expCount--;
}

if(expCount < 1){
	instance_destroy();
}