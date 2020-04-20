if keyboard_check_pressed(vk_escape)
	window_command_run(window_command_minimize);

if keyboard_check_direct(vk_tilde) {
	window_command_run(window_command_restore);
	window_set_topmost(true);
} 