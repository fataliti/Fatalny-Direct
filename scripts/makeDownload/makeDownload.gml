/// @param mapId
/// @param mapTitle
function makeDownload(argument0, argument1) {
	var mapId = argument0, mapTitle = argument1;

	var yy = instance_exists(o_download)?instance_nearest(o_type.x,5000,o_download).y+128:460;
	if yy < 460
		yy = 460;
	var down = instance_create_depth(o_type.x, yy, 0, o_download);

	var filename = string(mapId)+" "+mapTitle+".osz";
	var symbols = ["?", "|", "/", "\\", ">", "<", ":", "*", "\""];
	for (var a = 0; a < array_length_1d(symbols); a++)
		filename = string_replace_all(filename, symbols[a], " ");
							
	//down._id = downloadFile("https://bloodcat.com/osu/s/"+string(mapId), filename); 
	down._id = downloadFile("https://api.chimu.moe/v1/download/"+string(mapId)+"?n=0", filename); 
	down.title = string_trim(title, 134);
}
