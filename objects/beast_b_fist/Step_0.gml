//if((timeline_index == boss_behavior_charge) && (x == 96))
//{
//    if(alarm[1] > 15)
//        create_partical_ext(x + 16, y, spr_smoke_large, depth - 1, 5 + random(10), 1 + random(1), 0)
//    else
//        create_partical_ext(x + 16, y, spr_fire_large, depth - 1, 5 + random(10), 2 + random(2), 0)
//}

//if(timeline_index = sta_beast_missle_fire)
//    create_partical_ext(x + 16, y, spr_fire_large, depth - 1, 5 + random(10), 2 + random(2), 0)

//if(timeline_index == sta_beast_missle_destroy)
//{
//    create_partical(x - 16 + random(32), y - 8 + random(16), spr_explosion_large, depth - 1)
//}

if((timeline_index == boss_behavior_charge) && (x == 96))
{
    if(alarm[1] > 15)
        create_white_debris(x + 16, y, 1);
    else
        create_white_debris(x + 16, y, 1);
}

if(timeline_index == boss_behavior_missile_fire)
    create_white_debris(x + 16, y, 1);

if(timeline_index == boss_behavior_missile_destroy)
{
    instance_create(x - 16 + random(32), y - 16 + random(32), exploder);
}