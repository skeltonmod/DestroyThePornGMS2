my_health -= 1;

instance_create(x - 4, y - 4, exploder);

if(my_health <= 0){
    instance_destroy();
}



