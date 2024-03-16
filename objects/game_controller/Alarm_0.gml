if (global.save) {
    if (global.story_chapter != "intro" && global.story_chapter != "boss death" && global.story_chapter != "porn destroyed") {
        load_save();
        instance_create(global.save.get("player_position").lastx, global.save.get("player_position").lasty, player);
        spawning_player = false;
    } else {
        show_debug_message("Cannot respawn");
    }

} else {
    show_debug_message("Save File not found, loading save file");
    global.save = ssave_get(SaveFile, "1");
}