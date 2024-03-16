function dialogue_add(argument0, argument1, argument2, argument3) {
	if(!instance_exists(dialogue_controller))
	    instance_create(0, 0, dialogue_controller)
	
	with(dialogue_controller)
	{
	    ds_queue_enqueue(list_x, argument0);
	    ds_queue_enqueue(list_y, argument1);
	    ds_queue_enqueue(list_alarm, argument2);
	    ds_queue_enqueue(list_text, argument3);
	}
}
