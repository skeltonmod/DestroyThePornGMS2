function __global_object_depths() {
	// Initialise the global array that allows the lookup of the depth of a given object
	// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
	// NOTE: MacroExpansion is used to insert the array initialisation at import time
	gml_pragma( "global", "__global_object_depths()");

	// insert the generated arrays here
	global.__objectDepths[0] = 0; // par_solids
	global.__objectDepths[1] = 0; // block_solid
	global.__objectDepths[2] = 0; // solid_slope_nw
	global.__objectDepths[3] = 0; // solid_slope_se
	global.__objectDepths[4] = 0; // solid_slope_ne
	global.__objectDepths[5] = 0; // solid_slope_sw
	global.__objectDepths[6] = 0; // enemy_skeleton
	global.__objectDepths[7] = 0; // gib
	global.__objectDepths[8] = 0; // creepy_crawler
	global.__objectDepths[9] = 0; // stationary_turret
	global.__objectDepths[10] = 0; // turret_missile
	global.__objectDepths[11] = 0; // satin
	global.__objectDepths[12] = 0; // player
	global.__objectDepths[13] = 10000; // camera
	global.__objectDepths[14] = -1; // shotty
	global.__objectDepths[15] = 0; // shotgun_bullet
	global.__objectDepths[16] = -1; // shotgun_smoke
	global.__objectDepths[17] = 0; // lighting
	global.__objectDepths[18] = 0; // spike_trap
	global.__objectDepths[19] = 0; // fire_trap
	global.__objectDepths[20] = 0; // particle_lava
	global.__objectDepths[21] = 0; // spike_wall
	global.__objectDepths[22] = 0; // breakable_wall
	global.__objectDepths[23] = 0; // lighting_controller
	global.__objectDepths[24] = 0; // cutscene_controller
	global.__objectDepths[25] = -10000; // dialogue_controller
	global.__objectDepths[26] = 0; // game_controller
	global.__objectDepths[27] = 0; // decal_controller
	global.__objectDepths[28] = 0; // room_trigger
	global.__objectDepths[29] = 0; // story_trigger
	global.__objectDepths[30] = -123; // shotgun_description
	global.__objectDepths[31] = 0; // lava_glow
	global.__objectDepths[32] = 0; // power_jump_pickup
	global.__objectDepths[33] = 0; // double_jump_pickup
	global.__objectDepths[34] = 0; // shotgun_pickup
	global.__objectDepths[35] = 0; // daemon_skin_pickup
	global.__objectDepths[36] = 0; // super_jump_pickup


	global.__objectNames[0] = "par_solids";
	global.__objectNames[1] = "block_solid";
	global.__objectNames[2] = "solid_slope_nw";
	global.__objectNames[3] = "solid_slope_se";
	global.__objectNames[4] = "solid_slope_ne";
	global.__objectNames[5] = "solid_slope_sw";
	global.__objectNames[6] = "enemy_skeleton";
	global.__objectNames[7] = "gib";
	global.__objectNames[8] = "creepy_crawler";
	global.__objectNames[9] = "stationary_turret";
	global.__objectNames[10] = "turret_missile";
	global.__objectNames[11] = "satin";
	global.__objectNames[12] = "player";
	global.__objectNames[13] = "camera";
	global.__objectNames[14] = "shotty";
	global.__objectNames[15] = "shotgun_bullet";
	global.__objectNames[16] = "shotgun_smoke";
	global.__objectNames[17] = "lighting";
	global.__objectNames[18] = "spike_trap";
	global.__objectNames[19] = "fire_trap";
	global.__objectNames[20] = "particle_lava";
	global.__objectNames[21] = "spike_wall";
	global.__objectNames[22] = "breakable_wall";
	global.__objectNames[23] = "lighting_controller";
	global.__objectNames[24] = "cutscene_controller";
	global.__objectNames[25] = "dialogue_controller";
	global.__objectNames[26] = "game_controller";
	global.__objectNames[27] = "decal_controller";
	global.__objectNames[28] = "room_trigger";
	global.__objectNames[29] = "story_trigger";
	global.__objectNames[30] = "shotgun_description";
	global.__objectNames[31] = "lava_glow";
	global.__objectNames[32] = "power_jump_pickup";
	global.__objectNames[33] = "double_jump_pickup";
	global.__objectNames[34] = "shotgun_pickup";
	global.__objectNames[35] = "daemon_skin_pickup";
	global.__objectNames[36] = "super_jump_pickup";


	// create another array that has the correct entries
	var len = array_length(global.__objectDepths);
	global.__objectID2Depth = [];
	for( var i=0; i<len; ++i ) {
		var objID = asset_get_index( global.__objectNames[i] );
		if (objID >= 0) {
			global.__objectID2Depth[ objID ] = global.__objectDepths[i];
		} // end if
	} // end for


}
