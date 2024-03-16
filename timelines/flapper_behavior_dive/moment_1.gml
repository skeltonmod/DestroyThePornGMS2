if((xdest == x) && (ydest == y)){
	
	state = "flying"
    state_set(flapper_behavior_flying)
}
else
    timeline_position -= 1