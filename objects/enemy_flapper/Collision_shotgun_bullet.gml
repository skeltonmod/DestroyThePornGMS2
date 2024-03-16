my_health -= 1;

instance_create(x + 3, y - 1, exploder);

if(my_health <= 0){
    instance_destroy();
}
