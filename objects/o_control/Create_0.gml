display_reset(8, false);
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

globalvar exePath, autoOpen, difThumbEnable, mapThumbEnable, keyCall, keyDown;
globalvar ppAddictEnable ,tillerinoEnable, ircName, ircPass, addictKey;

ini_open("settings.ini");
exePath = ini_read_string("sets", "exePath", "");
autoOpen = bool(ini_read_real("sets", "autoOpen", 1));
difThumbEnable = bool(ini_read_real("sets", "difThumbEnable", 1));
mapThumbEnable = bool(ini_read_real("sets", "mapThumbEnable", 0));
keyCall = ini_read_real("sets", "keyCall", vk_tilde);
keyDown = ini_read_real("sets", "keyDown", vk_escape);

ppAddictEnable = bool(ini_read_real("sets", "ppAddictEnable", 0));
tillerinoEnable = bool(ini_read_real("sets", "tillerinoEnable", 0));
ini_close();

ini_open("keys.ini");
addictKey = ini_read_string("keys", "addictKey", "");
ircName = ini_read_string("keys", "ircName", "");
ircPass = ini_read_string("keys", "ircPass", "");
ini_close();
pageRequest = -1;