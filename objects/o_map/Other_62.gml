
if preview == HttpId {
	var r = HttpResult;
	if r != undefined {
		with(o_control) {
			FMODGMS_Chan_StopChannel(fChan);
			FMODGMS_Snd_Unload(fSnd);
			fSnd = FMODGMS_Snd_LoadSound(r);
			FMODGMS_Snd_PlaySound(fSnd,fChan);
		}
	}
}