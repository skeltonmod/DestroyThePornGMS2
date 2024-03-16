function ConfigFile() : SSave("config") constructor
{
	add_value("setMusic", SSAVE_TYPE.BOOLEAN, true);
	
}

function SaveFile() : SSave("save") constructor
{
	add_value("current_room", SSAVE_TYPE.STRING, room_get_name(room_intro));
	add_value("power_jump", SSAVE_TYPE.BOOLEAN, false);
	add_value("has_gun", SSAVE_TYPE.BOOLEAN, false);
	add_value("daemon_armor", SSAVE_TYPE.BOOLEAN, false);
	add_value("infinite_jump", SSAVE_TYPE.BOOLEAN, false);
	add_value("double_jump", SSAVE_TYPE.BOOLEAN, false);
	
	add_value("story_chapter", SSAVE_TYPE.STRING, "intro");
	add_value("player_position", SSAVE_TYPE.STRUCT, {
		lastx: 0,
		lasty: 0
	});
	
	add_value("current_music", SSAVE_TYPE.STRING, audio_get_name(song_area_0));
}