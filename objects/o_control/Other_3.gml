
FMODGMS_Chan_StopChannel(fChan);
FMODGMS_Snd_Unload(fSnd);
FMODGMS_Chan_RemoveChannel(fChan);
FMODGMS_Sys_Close();

ini_open("settings.ini");
ini_write_string("sets", "exePath", exePath);
ini_write_real("sets", "autoOpen", real(autoOpen));
ini_write_real("sets", "AAlevel", AAlevel);
ini_write_real("sets", "mapThumbEnable", real(mapThumbEnable));
ini_write_real("sets", "keyCall", keyCall);
ini_write_real("sets", "keyDown", keyDown);

ini_write_real("sets", "ppAddictEnable", real(ppAddictEnable));
ini_write_real("sets", "tillerinoEnable", real(tillerinoEnable));

ini_write_real("sets", "FPS", FPS);

ini_write_string("status", "status", o_ranks.item);
ini_write_string("status", "modes", o_modes.item );
ini_write_string("status", "geners", o_geners.item);
ini_write_string("status", "langs", o_languages.item);

for (var a = 0; a < array_length(o_mod.modsOn); a++) {
	ini_write_real("modsOn", "modsOn_"+string(a), real(o_mod.modsOn[a]));
}
ini_write_real("types", "type", o_type.type);
ini_close();