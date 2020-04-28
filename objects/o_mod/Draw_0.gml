
if !tillerinoEnable && !ppAddictEnable
	exit;

if !see {
	if LMB && mouseIn_mf0 x mouseIn_mf1  y mouseIn_mf2  x+96 mouseIn_mf3  y+24 mouseIn_mf4
		see = true;
} else {
	if !mouseIn_mf0 x mouseIn_mf1  y mouseIn_mf2  x+96 mouseIn_mf3  y+26 mouseIn_mf4 && !mouseIn_mf0 x-97 mouseIn_mf1  y+26 mouseIn_mf2  x+145+48 mouseIn_mf3  y+26+160 mouseIn_mf4
		see = false;
}

alpha(0.5);
if see || mouseIn_mf0 x mouseIn_mf1  bbox_top mouseIn_mf2  x+96 mouseIn_mf3  y+24 mouseIn_mf4
	alpha(1);

color($181113);
draw_rectangle(x, y, x+96, y+24, false);
alpha(1);
color(c_white);
draw_text(x+5,y+4,"Mods");


if see {
	var inc = 30;
	color($181113);
	draw_rectangle(x-99, y+25, x+145+48, y+26+160, false);
	
	for (var a = 0; a < array_length_1d(modsOn); a++) {
		draw_sprite_ext(s_game_modes, a, x-94+72*a-(288 * (a div 4)), y+42 + 75 * (a div 4), 1, 1, 0, modsOn[a]?c_white:c_dkgray, 1);

		if LMB 
			if mouseIn_mf0  x-94+72*a-(288 * (a div 4)) mouseIn_mf1  y+42 + 75 * (a div 4) mouseIn_mf2  x-94+72*a-(288 * (a div 4))+68 mouseIn_mf3  y+42 + 75 * (a div 4)+66 mouseIn_mf4
				modsOn[a] = !modsOn[a];
	}
}

color(c_white);