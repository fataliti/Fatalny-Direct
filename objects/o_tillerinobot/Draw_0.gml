/// @description 

alpha(0.5);
if mouseIn_mf0 x mouseIn_mf1  bbox_top mouseIn_mf2  x+96 mouseIn_mf3  y+24 mouseIn_mf4
	alpha(1);

color(!fail?$181113:c_red);
draw_rectangle(x, y, x+96, y+24, false);
alpha(1);
color(c_white);
draw_text(x+5,y+4,"Recomend");

if LMB && mouseIn_mf0 x mouseIn_mf1  y mouseIn_mf2  x+96 mouseIn_mf3  y+24 mouseIn_mf4 {
	if socket >= 0 && !fail && !awaitRecommend {
		log_mf0 "o_tillerinobot" log_mf1 "166" log_mf2 "reqv recomend" log_mf3;
		sendpack("PRIVMSG Tillerino :!r");
		awaitRecommend = true;
		alarm[0] = room_speed * 10;
	} else if socket < 0
		exec(ircConnect);
}

if connecting || awaitRecommend
	draw_sprite_ext(s_arrow_load, 0, x+96+24, y+12, 1, 1, get_timer() / 5000, c_white, 1);
