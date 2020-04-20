if keyboard_check_pressed(keyDown)
	window_command_run(window_command_minimize);

if keyboard_check_direct(keyCall) {
	window_command_run(window_command_restore);
	window_set_topmost(true);
} 