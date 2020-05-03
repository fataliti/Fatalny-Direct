if keyboard_check_pressed(keyDown) {
	if FMODGMS_Chan_Get_Position(fChan) < FMODGMS_Snd_Get_Length(fSnd) {
		FMODGMS_Chan_StopChannel(fChan);
		FMODGMS_Snd_Unload(fSnd);
	} else 
		window_command_run(window_command_minimize);
}
if keyboard_check_direct(keyCall) {
	window_command_run(window_command_restore);
	window_set_topmost(true);
} 