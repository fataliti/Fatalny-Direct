
if LMB && mouseIn_mf0 x mouseIn_mf1  y mouseIn_mf2  x+96 mouseIn_mf3  y+24 mouseIn_mf4
	see = true;

if !mouseIn_mf0 x mouseIn_mf1  y mouseIn_mf2  x+96 mouseIn_mf3  y+24+150 mouseIn_mf4 
	see = false;


alpha(0.5);
if see || mouseIn_mf0 x mouseIn_mf1  bbox_top mouseIn_mf2  x+96 mouseIn_mf3  y+24 mouseIn_mf4
	alpha(1);

color(c_black);
draw_rectangle(x, y, x+96, y+24, false);
alpha(1);
color(c_white);
draw_text(x+5,y+4,"Status");


if see {
	var inc = 30;
	color(c_black);
	draw_rectangle(x, y+24, x+96, y+24+150, false);
	for (var a = 0; a < array_length_1d(ranksName); a++) {
		var c = ranks[a] == true ? c_yellow : c_white;
		draw_text_color(x+5, y+24 + 10 + inc * a, ranksName[a], c, c, c, c, 1);
		if LMB 
			if mouseIn_mf0  x mouseIn_mf1  y+24 + 10 + inc * a mouseIn_mf2  x+96 mouseIn_mf3  y+24 + 10 + inc * a + 24 mouseIn_mf4
				ranks[a] = !ranks[a];
	}
}

color(c_white);