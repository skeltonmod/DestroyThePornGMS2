
with(cutscene_controller){
	timeline_running = false;
}
/*** create our maps for the scene ***/
list_x = ds_queue_create()
list_y = ds_queue_create()
list_text = ds_queue_create()
list_alarm = ds_queue_create()


/*** variables for typing out the text ***/
string_size = 0
string_current = ""
alarm[1] = 15


/*** drawing stuff ***/
tail_x = x
tail_y = y + 32
xflip = 1

/* */
/*  */