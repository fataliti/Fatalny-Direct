/// @param insId
/// @param difId
function callAddict(argument0, argument1) {
	var insId = argument0, difId = argument1;


	with insId {
		var mVal = 0;
		for (var i = 0; i < array_length_1d(o_mod.modsOn); i++)
			if o_mod.modsOn[i]
				mVal += o_mod.modsVals[i];
			
		var link = "https://api.tillerino.org/beatmapinfo?k=" + addictKey + "&beatmapid=" + string(difId) + "&mods="+string(mVal);
		log_mf0 "callAddict" log_mf1 "14" log_mf2 link log_mf3;
		ppReqv = http_get(link);
	}



}
