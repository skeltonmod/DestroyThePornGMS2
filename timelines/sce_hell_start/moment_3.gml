global.story_chapter = "hell_0_1";
global.save.set("current_room", room_get_name(room_hell_0_1)).save();
with(player){
	global.save.set("player_position", {
		lastx: x,
		lasty: y
	}).save();
}
global.freeze_input = false;
instance_destroy();