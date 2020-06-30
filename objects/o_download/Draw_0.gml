
alpha(image_alpha);

var r = downloadStatus(_id)/100; //downloaded/size;
var cnd = r==1 && !autoOpen && mouseIn_mf0 x mouseIn_mf1 y mouseIn_mf2 x+164 mouseIn_mf3 y+35 mouseIn_mf4? true: false;
var c = cnd ? c_lime : c_white;
draw_text_color(x+10, y+5, title, c, c, c, c, image_alpha);
draw_line_width(x+10, y+25, x+10+144, y+25, 4);
color(r==1?c_lime:c_red);
draw_line_width(x+10, y+25, x+10+144*(r), y+25, 4);
color(c_white);
alpha(1);

if RMB && mouseIn_mf0 x mouseIn_mf1 y mouseIn_mf2 x+164 mouseIn_mf3 y+35 mouseIn_mf4 {
	if !instance_exists(o_map_preview) && !o_type.see {
		if r < 1 {
			apr = false;
			downloadDelete(_id);
		}
	}
}

if apr && autoOpen {
	if downloadComplete(_id) {
		apr = false;
		execute_shell(exePath+" "+downloadResult(_id), false);
	}
}

if LMB && cnd && apr {
	if !instance_exists(o_map_preview) && !o_type.see {
		execute_shell(exePath+" "+downloadResult(_id), false);
		downloadDelete(_id);
		// execute_shell(path, false);
		apr = false;
	}
}



