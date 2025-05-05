/// @description 

alpha(0.5);
if mouseIn_mf0 x mouseIn_mf1  bbox_top mouseIn_mf2  x+96 mouseIn_mf3  y+24 mouseIn_mf4
	alpha(1);

color(!connecting?(!fail?$181113:c_red):c_orange);
draw_rectangle(x, y, x+96, y+24, false);
alpha(1);
color(c_white);
draw_text(x+5,y+4,"Recomend");

if LMB && mouseIn_mf0 x mouseIn_mf1  y mouseIn_mf2  x+96 mouseIn_mf3  y+24 mouseIn_mf4 {
	if socket >= 0 && !fail && !awaitRecommend && !connecting {
		log_mf0 "o_tillerinobot" log_mf1 "181" log_mf2 "reqv recomend" log_mf3;
		var msg = "PRIVMSG Tillerino :!r";
		for (var i = 0; i < array_length_1d(o_mod.modsOn); i++) {
			if o_mod.modsOn[i] {
				var g = o_mod.modsNames[i];
				if g == "HR" || g == "HD" || g == "DT" {
					msg += " " + o_mod.modsNames[i];
				}
			}
		}
		log_mf0 "o_tillerinobot" log_mf1 "191" log_mf2 msg log_mf3;
		
		sendpack(msg);
		awaitRecommend = true;
		alarm[0] = room_speed * 15;
	} else if socket < 0
		exec(ircConnect);
}

if connecting || awaitRecommend
	draw_sprite_ext(s_arrow_load, 0, x+96+12, y+12, 1, 1, get_timer() / 5000, c_white, 1);
