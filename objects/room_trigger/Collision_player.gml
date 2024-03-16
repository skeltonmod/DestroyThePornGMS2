player.x = target_x;
player.y = target_y;
room_goto(room_index);

if(play_music != -1){
	song_play(play_music)
}