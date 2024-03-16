function scene_move_animate(argument0, argument1, argument2, argument3, argument4, argument5, argument6) {
    var _direction;
    if (instance_exists(cutscene_controller)) {
        with(argument0) {
            if (point_distance(x, y, argument1, argument2) <= argument3) {
                x = argument1
                y = argument2
                //if (sprite_index != argument6) {
                //    sprite_index = argument6
                //    image_index = 0
                //}
				
            } else {

                _direction = point_direction(x, y, argument1, argument2)
                x += lengthdir_x(argument3, _direction)
                y += lengthdir_y(argument3, _direction)

                cutscene_controller.frame_loop = true

                // make sure the instance has the correct sprite_index and image_speed
                image_speed = argument5
                //if (sprite_index != argument4) {
                //    sprite_index = argument4
                //}
            }
        }
    }
}