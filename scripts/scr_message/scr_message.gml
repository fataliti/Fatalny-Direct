/// @param msg
/// @param ?col = undefined
function scr_message() {
	var msg = argument[0];
	var col = argument_count > 1 ? argument[1] : undefined;


	var m = instance_create_depth(o_type.x, 520, -10, o_message);
	m.text = msg;

	if col != undefined
		m.col = col;


}
