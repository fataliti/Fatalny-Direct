
FMODGMS_Chan_StopChannel(fChan);
FMODGMS_Snd_Unload(fSnd);
FMODGMS_Chan_RemoveChannel(fChan);
FMODGMS_Sys_Close();

ini_open("settings.ini");
ini_write_string("sets", "exePath", exePath);
ini_write_real("sets", "autoOpen", real(autoOpen));
ini_write_real("sets", "difThumbEnable", real(difThumbEnable));
ini_write_real("sets", "mapThumbEnable", real(mapThumbEnable));
ini_write_real("sets", "keyCall", keyCall);
ini_write_real("sets", "keyDown", keyDown);

ini_write_real("sets", "ppAddictEnable", real(ppAddictEnable));
ini_write_real("sets", "tillerinoEnable", real(tillerinoEnable));

ini_write_real("sets", "FPS", FPS);

var a;
for (a = 0; a < array_length_1d(o_ranks.ranks); a++)
	ini_write_real("status", "status_"+string(a), real(o_ranks.ranks[a]));
	
for (a = 0; a < array_length_1d(o_modes.mods); a++)
	ini_write_real("modes", "modes_"+string(a), real(o_modes.mods[a]));
	
for (a = 0; a < array_length_1d(o_geners.geners); a++)
	ini_write_real("geners", "geners_"+string(a), real(o_geners.geners[a]));

for (a = 0; a < array_length_1d(o_languages.langs); a++)
	ini_write_real("langs", "langs_"+string(a), real(o_languages.langs[a]));
	
for (a = 0; a < array_length_1d(o_mod.modsOn); a++)
	ini_write_real("modsOn", "modsOn_"+string(a), real(o_mod.modsOn[a]));
	
ini_write_real("types", "type", o_type.type);
ini_close();