/// @desc clamp_wrap
/// @param variable
/// @param min
/// @param max
function clamp_wrap(argument0, argument1, argument2){


	var newVar = argument0;
	var valMin = argument1;
	var valMax = argument2;

	if (newVar > valMax ) { newVar = valMin; }
	if (newVar < valMin ) { newVar = valMax; }
	return newVar;
}