/// @param mapId
/// @param mapTitle
var mapId = argument0, mapTitle = argument1;

var yy = instance_exists(o_download)?instance_nearest(o_type.x,5000,o_download).y+128:460;
if yy < 460
	yy = 460;
var down = instance_create_depth(o_type.x, yy, 0, o_download);
down._id = http_get_file("https://bloodcat.com/osu/s/"+mapId, mapId+" "+mapTitle+".osz");
down.title = string_trim(title, 134);