//scene_move_animate(obj_joe, 28, 128, 1, spr_run, .25, spr_idle, .25)
if (instance_exists(cutscene_controller)) {
    with(player) {
		show_debug_message(point_distance(x, y, 26, 124));
        if (point_distance(x, y, 37, 124) <= 1) {
			hsp[0] = 0;
        } else {
			hsp[0] = 1;
            cutscene_controller.frame_loop = true;
        }
    }
}