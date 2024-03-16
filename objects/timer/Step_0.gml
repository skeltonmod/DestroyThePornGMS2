if(my_state == "down")
{
    if(floor(my_timer) > 0)
        my_timer -= (1 / 30)
	else
		room_restart();
        
    if(!instance_exists(magazine))
    {
        my_state = "finish"
        scene_start(sce_house_finish);
    }
	
}

show_debug_message(my_timer)
