if((timeline_index == boss_behavior_charge) && (x == 96))
{
    if(alarm[1] > 15){
        create_white_debris(x + 16, y, 1);
		//create_explosion_debris(8, x + 16, y, 1);
	}
    else
        create_white_debris(x + 16, y, 1);
		//create_explosion_debris(8, x + 16, y, 1);
}

if(timeline_index == boss_behavior_missile_fire)
    create_white_debris(x + 16, y, 1);
	//create_explosion_debris(8, x + 16, y, 1);

if(timeline_index == boss_behavior_missile_destroy)
{
    instance_create(x - 16 + random(32), y - 16 + random(32), exploder);
}