if (keyboard_check_pressed(keyDown)) {
	if (PREVIEW_CHANNEL.getPosition() < PREVIEW_CHANNEL.getDuration()) {
		PREVIEW_CHANNEL.stop();
	} else {
		window_command_run(window_command_minimize);
	}
}
if (keyboard_check_direct(keyCall)) {
	window_command_run(window_command_restore);
	window_set_topmost(true);
} 