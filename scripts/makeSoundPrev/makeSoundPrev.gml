/// @param _mapId
function makeSoundPrev(argument0) {
	var _mapId = argument0;

	with o_listen kill();

	var ins = New_mf0 o_listen New_mf1;
	ins.preview = http_get_file("https://b.ppy.sh/preview/"+string(_mapId)+".mp3","preview.mp3");


}
