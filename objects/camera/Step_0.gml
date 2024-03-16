var x_to, y_to;
if(!instance_exists(player)){
	return;
}
x_to = player.x;
y_to = player.y;
x += (x_to - x);
y += (y_to - y);

__view_set( e__VW.XView, 0, -(__view_get( e__VW.WView, 0 ) / 2) + x );
__view_set( e__VW.YView, 0, -(__view_get( e__VW.HView, 0 ) / 2) + y );

__view_set( e__VW.XView, 0, clamp(__view_get( e__VW.XView, 0 ), 0, room_width - __view_get( e__VW.WView, 0 )) );
__view_set( e__VW.YView, 0, clamp(__view_get( e__VW.YView, 0 ), 0, room_height - __view_get( e__VW.HView, 0 )) );

// Scale tingz
if (os_browser != browser_not_a_browser) {
    if (browser_width != width || browser_height != height) {
        width = min(base_width, browser_width);
        height = min(base_height, browser_height);
        scale_canvas(base_width, base_height, width * 4, height * 4, true);
    }

}

