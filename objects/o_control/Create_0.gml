display_reset(8, false);
draw_set_font(fnt_arial12);

FMODGMS_Sys_Create();
FMODGMS_Sys_Initialize(32);
fChan = FMODGMS_Chan_CreateChannel();
fSnd = -1;


globalvar exePath, autoOpen, difThumbEnable, mapThumbEnable, keyCall, keyDown;
ini_open("settings.ini");
exePath = ini_read_string("sets", "exePath", "");
autoOpen = bool(ini_read_real("sets", "autoOpen", 1));
difThumbEnable = bool(ini_read_real("sets", "difThumbEnable", 1));
mapThumbEnable = bool(ini_read_real("sets", "mapThumbEnable", 0));
keyCall = ini_read_real("sets", "keyCall", vk_tilde);
keyDown = ini_read_real("sets", "keyDown", vk_escape);
ini_close();

pageRequest = -1;