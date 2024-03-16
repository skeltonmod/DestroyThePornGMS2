if (!instance_exists(lighting_controller)) {
    instance_create(0, 0, lighting_controller);
}

if (!instance_exists(decal_controller)) {
    instance_create(0, 0, decal_controller)
}

if (!instance_exists(player)) {
    // Exclude the intro since the timeline creates the player anyway
    if (room != author1 && room != author2 && room != room_menu) {
        var playerx = global.save.get("player_position").lastx;
        var playery = global.save.get("player_position").lasty;
        if (global.story_chapter != "intro" && global.story_chapter != "joe house intro" && global.story_chapter != "finale") {
            if (playerx != 0 && playery != 0) {
                instance_create(playerx, playery, player);
            }
        }
    }
}

// Music tingz, too lazy to put them on timeline
switch (room) {
    case room_hell_0_1:
    case room_hell_0_2:
    case room_hell_0_3:
    case room_hell_0_4:
    case room_hell_0_5:
    case room_hell_0_6:
    case room_hell_0_7:
    case room_hell_0_8:
    case room_hell_0_9:
    case room_hell_0_10:
    case room_hell_0_11:
        song_play(song_area_0);
        break;

    case room_hell_1_0:
    case room_hell_1_1:
    case room_hell_1_2:
    case room_hell_1_3:
    case room_hell_1_4:
    case room_hell_1_5:
        song_play(song_area_1);
        break;
    case room_hell_1_6:
        song_play(song_area_2);
        break;

    case room_author_1:
    case room_author_2:
        break;

    case room_menu:
        song_play(song_menu);
        break;

    default:
        if (global.story_chapter == "boss battle") {
            song_play(song_boss_theme);
        }

        if (global.story_chapter == "porn destroyed") {
            song_play(song_porn_destruction);
        }
}