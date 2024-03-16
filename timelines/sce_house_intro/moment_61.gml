global.freeze_input = false;
global.story_chapter = "porn destroyed";

    
instance_create(0, 0, timer)
instance_create(0, 0, flash_text)

song_play(song_porn_destruction);

if(!instance_exists(save_checkpoint)){
	// save the game
	instance_create(player.x, player.y, save_checkpoint);
}

instance_destroy();