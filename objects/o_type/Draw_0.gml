
var _xp = 164;

if LMB && mouseIn_mf0 x mouseIn_mf1  y mouseIn_mf2  x+_xp mouseIn_mf3  y+24 mouseIn_mf4
	see = true;

alpha(0.5);
if mouseIn_mf0 x mouseIn_mf1  y mouseIn_mf2  x+_xp mouseIn_mf3  y+24 mouseIn_mf4 || see
	alpha(1);
color($181113);
draw_rectangle(x, y, x+_xp, y+24,false);
color(c_white);
alpha(1);
draw_text(x+5, y+5, "Type: "+typeNames[type]);

if see {
	color($181113);
	draw_rectangle(x, y+24, x+_xp, y+24+120,false);
	color(c_white);
	var inc = 30;
	for (var a = 0; a < 4; a++) {
		var c = type == a ? c_yellow : c_white;
		draw_text_color(x+5, y+24  + 10 + inc * a, typeNames[a], c, c, c, c, 1);
		if LMB 
			if mouseIn_mf0  x mouseIn_mf1  y+24  + 10 + inc * a mouseIn_mf2  x+_xp mouseIn_mf3  y+24  + 10 + inc * a + 24 mouseIn_mf4
				type = a;
	}
}

if !mouseIn_mf0 x mouseIn_mf1  y mouseIn_mf2  x+_xp mouseIn_mf3  y+24 +120 mouseIn_mf4 
	see = false;