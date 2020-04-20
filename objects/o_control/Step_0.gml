if keyboard_check_pressed(vk_escape)
	window_command_run(window_command_minimize);

if keyboard_check_direct(vk_tilde) {
	window_command_run(window_command_restore);
	window_set_topmost(true);
} 


log_mf0 "o_control" log_mf1 "35" log_mf2 keyboard_lastkey log_mf3;