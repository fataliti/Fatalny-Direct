
if y > room_height || y+60 < 0
	exit;


alpha(0.3);
color(c_gray);
draw_rectangle(x,y, x+800, y+60, false);
alpha(1);
color(c_white);


if thumbnail != -1 {
	var s = 60/sprite_get_height(thumbnail);
	draw_sprite_ext(thumbnail, 0, x ,y, s,s,0,c_white,1);
}

draw_text(x+10, y+3, artist+" - "+title);
draw_text(x+10, y+22, creator);
draw_text(x+10, y+41, _id);

halign(fa_left);

var c;
for (var m = 0; m < array_length_1d(mapsIcons); m++) {
	c = mouseIn_mf0 x+800-25*m-20 mouseIn_mf1  y+40 mouseIn_mf2  x+800-25*m mouseIn_mf3  y+40+17 mouseIn_mf4 ? c_yellow : c_white;
	draw_sprite_ext( s_modes, mapsIcons[m], x+800-25*m-5, y+40, 1, 1, 0, c, 1);
}

draw_sprite(s_map_status, status, x, y);

var c = c_white;
if mouseIn_mf0 x+800-32 mouseIn_mf1  y mouseIn_mf2  x+800 mouseIn_mf3  y+32 mouseIn_mf4
	c = c_yellow;
draw_sprite_ext(s_icon_down, 0, x+795, y+4, 1, 1, 0, c, 1);

var c = c_white;
if mouseIn_mf0 x+760-32 mouseIn_mf1  y mouseIn_mf2  x+760 mouseIn_mf3  y+32 mouseIn_mf4
	c = c_yellow;
draw_sprite_ext(s_icon_play, 0, x+760, y+1,1, 1, 0, c, 1);


if LMB && y > o_map_scroll.y {
	if mouseIn_mf0 x+800-32 mouseIn_mf1  y mouseIn_mf2  x+800 mouseIn_mf3  y+32 mouseIn_mf4 {
		{/*!#lamdef __lf_o_map_draw_downloadTitle*/};
		
		var yy = instance_exists(o_download)?instance_nearest(o_type.x,5000,o_download).y+128:460;
		if yy < 460
			yy = 460;
		var down = instance_create_depth(o_type.x, yy, 0, o_download);
		
		down._id = http_get_file("https://bloodcat.com/osu/s/"+_id, title+artist+_id+".osz");
		down.title = __lf_o_map_draw_downloadTitle(title);
	}
	
	if mouseIn_mf0 x+760-32 mouseIn_mf1  y mouseIn_mf2  x+760 mouseIn_mf3  y+32 mouseIn_mf4 
		preview = http_get_file("https://b.ppy.sh/preview/"+_id+".mp3","preview.mp3");
	
	for (var m = 0; m < array_length_1d(mapsIcons); m++) {
		if mouseIn_mf0 x+800-25*m-20-5 mouseIn_mf1  y+40 mouseIn_mf2  x+800-25*m-5 mouseIn_mf3  y+40+17 mouseIn_mf4 {
			//log(maps[m]);
			with o_map_preview kill();
			var dif = instance_create_depth(o_type.x, o_type.y+64, -1, o_map_preview);
			var nm/*:Dif*/ = maps[m];
			var l = round(real(nm[Dif.leng]));
			nm[@Dif.leng] = string(l div 60)+":"+string(l mod 60);
			nm[@Dif.star] = string_copy(nm[Dif.star], 1, 4);
			nm[@Dif.bpm]  = string_copy(nm[Dif.bpm], 1, 5);
			if difThumbEnable
				dif.loading = sprite_add("https://b.ppy.sh/thumb/"+_id+"l.jpg", 1,0,1,0,0);
			dif.dif = nm;
		}
	}
}