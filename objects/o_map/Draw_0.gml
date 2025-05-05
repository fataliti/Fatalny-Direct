
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

var c;
for (var m = 0; m < array_length(maps); m++) {
	c = mouseIn_mf0 x+795-33*m-30 mouseIn_mf1  y+29 mouseIn_mf2  x+795-33*m mouseIn_mf3  y+29+30 mouseIn_mf4 ? selectedColor : colors[maps[m][Dif.dif_rating]];
	draw_sprite_ext( s_modess, maps[m][Dif.mode], x+795-33*m, y+29, 1, 1, 0, c, 1);
}


var s = status;
if s == -1 {
	s = 5;
} else if s == -2 {
	s = 6;
}

draw_sprite(s_map_status, s, x, y);
draw_sprite_ext(s_icon_down, 0, x+788, y+5, 1, 1, 0, mouseIn_mf0 x+800-32 mouseIn_mf1  y mouseIn_mf2  x+800 mouseIn_mf3  y+28 mouseIn_mf4?selectedColor:c_white, 1);
draw_sprite_ext(s_icon_play, 0, x+754, y+5,1, 1, 0, mouseIn_mf0 x+760-32 mouseIn_mf1  y mouseIn_mf2  x+760 mouseIn_mf3  y+28 mouseIn_mf4?selectedColor:c_white, 1);


if LMB && y > o_map_scroll.y {
	
	with o_button_parent
		if see 
			exit;

	if mouseIn_mf0 x+800-32 mouseIn_mf1  y mouseIn_mf2  x+800 mouseIn_mf3  y+28 mouseIn_mf4 {
		makeDownload(_id, title);
		click_mf0;
	}
	if mouseIn_mf0 x+760-32 mouseIn_mf1  y mouseIn_mf2  x+760 mouseIn_mf3  y+28 mouseIn_mf4 {
		makeSoundPrev(_id);
		click_mf0;
	}
	
	for (var m = 0; m < array_length(maps); m++) {
		if mouseIn_mf0 x+795-33*m-30 mouseIn_mf1  y+29 mouseIn_mf2  x+795-33*m mouseIn_mf3  y+29+30 mouseIn_mf4 {
			makePreview(maps[m], title);
			click_mf0;
			
			if ppAddictEnable && maps[m][Dif.mode] == 0 
				callAddict(o_map_preview, o_map_preview.dif[Dif._id]);
		}
	}
}