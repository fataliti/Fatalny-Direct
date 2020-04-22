
if LMB && mouseIn_mf0 x mouseIn_mf1  y mouseIn_mf2  x+96 mouseIn_mf3  y+24 mouseIn_mf4
	see = true;

if !mouseIn_mf0 x mouseIn_mf1  y mouseIn_mf2  x+96 mouseIn_mf3  y+24+9*30 mouseIn_mf4 
	see = false;


alpha(0.5);
if see || mouseIn_mf0 x mouseIn_mf1  bbox_top mouseIn_mf2  x+96 mouseIn_mf3  y+24 mouseIn_mf4
	alpha(1);

color($181113);
draw_rectangle(x, y, x+96, y+24, false);
alpha(1);
color(c_white);
draw_text(x+5,y+4,"Genre");


if see {
	var inc = 30;
	color($181113);
	draw_rectangle(x, y+24, x+96, y+24+9*30, false);
	
	var yy = 0;
	for (var a = 0; a < array_length_1d(genersName); a++) {
		if genersName[a] == ""
			continue;
	
		var c = geners[a] == true ? c_yellow : c_white;
		draw_text_color(x+5, y+24 + 10 + yy, genersName[a], c, c, c, c, 1);
		if LMB 
			if mouseIn_mf0  x mouseIn_mf1  y+24 + 10 + yy mouseIn_mf2  x+96 mouseIn_mf3  y+24 + 10 + yy + 24 mouseIn_mf4
				geners[a] = !geners[a];
		yy += 30;
	}
}

color(c_white);