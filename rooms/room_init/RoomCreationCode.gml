global.save = ssave_get(SaveFile, "1");
globalvar power_jump, has_gun, double_jump, infinite_jump, daemon_armor, door_down;
power_jump = false;
has_gun = false;
double_jump = false;
infinite_jump = false;
daemon_armor = false;
door_down = false;
global.freeze_input = true;
global.story_chapter = "intro";
global.current_music = song_area_0;



room_goto(room_author_1)