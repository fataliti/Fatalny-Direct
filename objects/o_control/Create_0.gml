//!#mfunc click {"args":[],"order":[]}
#macro click_mf0  audio_play_sound(choose(s_click1,s_click2,s_click3),0,false)
#macro selectedColor #9A35FF

draw_set_font(fnt_arial12);

FMODGMS_Sys_Create();
FMODGMS_Sys_Initialize(32);
fChan = FMODGMS_Chan_CreateChannel();
fSnd = -1;

if !file_exists("settings.ini") {
	var f = file_text_open_write("settings.ini");
	file_text_close(f);
}

globalvar dataPath;
dataPath = filename_path("settings.ini");
log_mf0 "o_control" log_mf1 "23" log_mf2 downloadDirectory(dataPath) log_mf3;

globalvar exePath, autoOpen, difThumbEnable, mapThumbEnable, keyCall, keyDown;
globalvar ppAddictEnable ,tillerinoEnable, ircName, ircPass, addictKey, FPS;

ini_open("settings.ini");
exePath = ini_read_string("sets", "exePath", "");
autoOpen = bool(ini_read_real("sets", "autoOpen", 1));
mapThumbEnable = bool(ini_read_real("sets", "mapThumbEnable", 0));
//difThumbEnable = bool(ini_read_real("sets", "difThumbEnable", 1));
keyCall = ini_read_real("sets", "keyCall", vk_tilde);
keyDown = ini_read_real("sets", "keyDown", vk_escape);

globalvar AAlevel;
AAlevel = ini_read_real("sets", "AAlevel", 0);
display_reset(AAlevel, false);

ppAddictEnable = bool(ini_read_real("sets", "ppAddictEnable", 0));
tillerinoEnable = bool(ini_read_real("sets", "tillerinoEnable", 0));

FPS = ini_read_real("sets", "FPS", 60);
ini_close();

game_set_speed(FPS, gamespeed_fps);

ini_open("keys.ini");
addictKey = ini_read_string("keys", "addictKey", "");
if addictKey == "" {
	addictKey = ppAddictKey;
}
ircName = ini_read_string("keys", "ircName", "");
ircPass = ini_read_string("keys", "ircPass", "");
ini_close();
pageRequest = -1;

