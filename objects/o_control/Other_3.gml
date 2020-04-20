
FMODGMS_Chan_StopChannel(fChan);
FMODGMS_Snd_Unload(fSnd);
FMODGMS_Chan_RemoveChannel(fChan);
FMODGMS_Sys_Close();

ini_open("settings.ini");
ini_write_string("sets","exePath",exePath);
ini_write_real("sets","autoOpen",real(autoOpen));
ini_write_real("sets","difThumbEnable",real(difThumbEnable));
ini_write_real("sets","mapThumbEnable",real(mapThumbEnable));
ini_close();