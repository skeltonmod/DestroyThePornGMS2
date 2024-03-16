global.freeze_input = false;
global.story_chapter = "boss battle"

if(!instance_exists(save_checkpoint)){
	instance_create(player.x, player.y, save_checkpoint);
}

scene_start(boss_behavior_throw);

