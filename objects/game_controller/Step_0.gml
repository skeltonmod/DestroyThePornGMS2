if(room != room_menu){
	if (!instance_exists(player) && !spawning_player) {
        // Exclude the intro since the timeline creates the player anyway
		show_debug_message("SPAWN")
        spawning_player = true
        alarm[0] = (30) * gamespeed_microseconds;
	}
}