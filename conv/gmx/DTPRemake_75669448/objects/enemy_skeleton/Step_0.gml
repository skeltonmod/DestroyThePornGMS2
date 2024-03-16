if(instance_exists(player)){
    if(player.x > x){
        dir = -1
    }else{
        dir = 1;
    }
}

if(y < 20){
    vspeed += 0.1;
}

if(abs(hspeed) < 0.4){
    hspeed += dir * 0.1;
}


vspeed += 0.1;

