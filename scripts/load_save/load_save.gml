// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function load_save(){
	power_jump = global.save.get("power_jump");
	has_gun = global.save.get("has_gun");
	double_jump = global.save.get("double_jump");
	infinite_jump = global.save.get("infinite_jump");
	daemon_armor = global.save.get("daemon_armor");

	door_down = false;

	global.freeze_input = false;
	global.story_chapter = global.save.get("story_chapter");
	global.current_music = song_area_0;

	room_goto(asset_get_index(global.save.get("current_room")));
}