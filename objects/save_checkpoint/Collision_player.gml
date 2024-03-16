global.save.set("power_jump", power_jump).save();
global.save.set("has_gun", has_gun).save();
global.save.set("double_jump", double_jump).save();
global.save.set("infinite_jump", infinite_jump).save();
global.save.set("daemon_armor", daemon_armor).save();

with(player) {
    global.save.set("player_position", {
        lastx: x,
        lasty: y
    });
}

global.save.set("current_room", room_get_name(room));
global.save.set("story_chapter", global.story_chapter);
global.save.set("current_music", audio_get_name(global.current_music));