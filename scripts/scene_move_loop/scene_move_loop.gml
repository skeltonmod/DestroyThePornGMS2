function scene_move_loop(argument0, argument1, argument2, argument3) {
    if (instance_exists(cutscene_controller)) {
        with(argument0) {
            if (point_distance(x, y, argument1, argument2) <= argument3) {
                x = argument1
                y = argument2
				
				cutscene_controller.frame_loop = false
            } else {
				var _direction;
                _direction = point_direction(x, y, argument1, argument2)
                x += lengthdir_x(argument3, _direction)
                y += lengthdir_y(argument3, _direction)

                cutscene_controller.frame_loop = true
            }
        }
    }
}