/// @param mapId
/// @param mapTitle
var mapId = argument0, mapTitle = argument1;

var yy = instance_exists(o_download)?instance_nearest(o_type.x,5000,o_download).y+128:460;
if yy < 460
	yy = 460;
var down = instance_create_depth(o_type.x, yy, 0, o_download);

var filename = mapId+" "+mapTitle+".osz";
var symbols = ["?", "|", "/", "\\", ">", "<", ":", "*", "\""];
for (var a = 0; a < array_length_1d(symbols); a++)
	filename = string_replace_all(filename, symbols[a], " ");
	
down._id = downloadFile("https://bloodcat.com/osu/s/"+mapId, filename); //http_get_file("https://bloodcat.com/osu/s/"+mapId, filename);
//down._id = http_get_file("https://bloodcat.com/osu/s/"+mapId, filename);
down.title = string_trim(title, 134);