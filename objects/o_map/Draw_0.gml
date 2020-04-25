
if y > room_height || y+60 < 0
	exit;


alpha(0.35);
color($FF8080);
draw_rectangle(x,y, x+800, y+60, false);
alpha(1);
color(c_white);


if thumbnail != -1 {
	var s = 60/sprite_get_height(thumbnail);
	draw_sprite_ext(thumbnail, 0, x ,y, s,s,0,c_white,1);
}

draw_text(x+10, y+3, title);
draw_text(x+10, y+22, creator);
draw_text(x+10, y+41, _id);

halign(fa_left);

var c,g;
for (var m = 0; m < array_length_1d(mapsIcons); m++) {
	g = mapsIcons[m];
	c = mouseIn_mf0 x+800-25*m-20 mouseIn_mf1  y+40 mouseIn_mf2  x+800-25*m mouseIn_mf3  y+40+17 mouseIn_mf4 ? c_yellow : colors[g[1]]/*c_white*/;
	draw_sprite_ext( s_modes, g[0], x+800-25*m-5, y+40, 1, 1, 0, c, 1);
}

draw_sprite(s_map_status, status, x, y);
draw_sprite_ext(s_icon_down, 0, x+795, y+4, 1, 1, 0, mouseIn_mf0 x+800-32 mouseIn_mf1  y mouseIn_mf2  x+800 mouseIn_mf3  y+32 mouseIn_mf4?c_yellow:c_white, 1);
draw_sprite_ext(s_icon_play, 0, x+760, y+1,1, 1, 0, mouseIn_mf0 x+760-32 mouseIn_mf1  y mouseIn_mf2  x+760 mouseIn_mf3  y+32 mouseIn_mf4?c_yellow:c_white, 1);


if LMB && y > o_map_scroll.y {
	if mouseIn_mf0 x+800-32 mouseIn_mf1  y mouseIn_mf2  x+800 mouseIn_mf3  y+32 mouseIn_mf4 
		makeDownload(_id, title);
		
	if mouseIn_mf0 x+760-32 mouseIn_mf1  y mouseIn_mf2  x+760 mouseIn_mf3  y+32 mouseIn_mf4 
		preview = http_get_file("https://b.ppy.sh/preview/"+_id+".mp3","preview.mp3");
	
	for (var m = 0; m < array_length_1d(mapsIcons); m++) {
		if mouseIn_mf0 x+800-25*m-20-5 mouseIn_mf1  y+40 mouseIn_mf2  x+800-25*m-5 mouseIn_mf3  y+40+17 mouseIn_mf4 {
			makePreview(maps[m], title);
			
			if ppAddictEnable
				with o_map_preview 
					ppReqv = http_get("https://api.tillerino.org/beatmapinfo?k=" + addictKey + "&beatmapid=" + dif[Dif._id]);
		}
	}
}