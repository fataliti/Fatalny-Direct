/// @param {Dif} mapDif
/// @param t
/// @param ?acc = undefined
function makePreview() {
	var mapDif/*:Dif*/ = argument[0], t = argument[1];
var acc = argument_count > 2 ? argument[2] : undefined;

	//log(mapDif);

	with o_map_preview kill();
	var dif = instance_create_depth(o_type.x, 100, -1, o_map_preview);
	nm = mapDif;
	var l = round(real(nm[Dif.leng]));
	nm[Dif.leng] = string(l div 60)+":"+string(l mod 60);
	nm[Dif.star] = string_copy(nm[Dif.star], 1, 4);
	nm[Dif.bpm]  = string_copy(nm[Dif.bpm], 1, 5);
	if mapThumbEnable {
		var tumb = New_mf0 o_tumbload New_mf1;
		tumb.download = sprite_add("https://b.ppy.sh/thumb/"+string(nm[Dif.setId])+"l.jpg", 1,0,1,0,0);
		tumb.objectId = dif;
	}
	dif.dif = nm;
	dif.title = t;

	if acc != undefined
		dif.acc = acc;


}
