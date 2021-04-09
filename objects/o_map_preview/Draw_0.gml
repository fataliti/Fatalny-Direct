
y = ystart + 10 - 10 * image_alpha;
image_alpha = lerp(apr?1:0, image_alpha,0.65);

alpha(image_alpha);

color($181113);
draw_rectangle(x, y, x+164, ppReqv!=-1 || acc != -1 ? y+510:y+415, false);

draw_set_color( mouseIn_mf0 x+10 mouseIn_mf1 y+245 mouseIn_mf2 x+154 mouseIn_mf3 y+270 mouseIn_mf4 ? $F9A800 : $C08000);
draw_rectangle(x+10,y+245,x+154,y+270,false);

draw_set_color( mouseIn_mf0 x+10 mouseIn_mf1 y+280 mouseIn_mf2 x+154 mouseIn_mf3 y+305 mouseIn_mf4 ? $00CA00 : c_green);
draw_rectangle(x+10,y+280,x+154,y+305,false);

draw_set_color(mouseIn_mf0 x+10 mouseIn_mf1 y+315 mouseIn_mf2 x+154 mouseIn_mf3 y+340 mouseIn_mf4 ? $0099FF : $0063C6);
draw_rectangle(x+10,y+315,x+154,y+340,false);

draw_set_color(mouseIn_mf0 x+10 mouseIn_mf1 y+350 mouseIn_mf2 x+154 mouseIn_mf3 y+375 mouseIn_mf4 ? $CE00CE : c_purple);
draw_rectangle(x+10,y+350,x+154,y+375,false);

//draw_set_color(mouseIn(x+10,y+385,x+154,y+410) ? c_red : c_maroon);
//draw_rectangle(x+10,y+385,x+154,y+410,false);

color(c_white);

var d/*:Dif*/ = dif;

halign(fa_center);

var scl = 155 / string_width(d[Dif.name]);
if scl > 1 
	scl = 1;

var xc = x+82;
draw_text_transformed(xc, y+3, d[Dif.name], scl, 1, 0);
draw_text(xc, y+61, "Lenght:"+d[Dif.leng]);
draw_text(xc, y+82, "BPM:"+d[Dif.bpm]);
draw_text(xc, y+100, "Stars:"+d[Dif.star]);

draw_text(xc, y+250, "LISTEN");
draw_text(xc, y+285, "OPEN");
draw_text(xc, y+320, "DOWNLOAD");
draw_text(xc, y+355, "CLOSE");

if ppReqv != -1 && acc == -1
	draw_sprite_ext(s_arrow_load, 0, xc, y+430, 1, 1, get_timer() / 5000, c_white, 1);

if fail {
	draw_text(xc, y+415, "API ERROR");
	var c = mouseIn_mf0 x mouseIn_mf1  y+425 mouseIn_mf2  x+164 mouseIn_mf3  y+445 mouseIn_mf4? selectedColor:c_white;
	draw_text_color(xc, y+434, "retry", c, c, c, c, 1);
	if LMB && c == selectedColor {
		callAddict(self, d[Dif._id]);
		fail = false;
	}
}

if acc != -1 {
	scl = 155 / string_width(acc[Acc.acc93]);
	if scl > 1 
		scl = 1;
	draw_text_transformed(xc, y+415, acc[Acc.acc93], scl, 1, 0);
	draw_text(xc, y+434, acc[Acc.acc95]);
	draw_text(xc, y+453, acc[Acc.acc98]);
	draw_text(xc, y+471, acc[Acc.acc99]);
	draw_text(xc, y+490, acc[Acc.acc100]);
}

halign(fa_right);
draw_text(x+144, y+21, "OD:"+string(d[Dif.od]));
draw_text(x+144, y+42, "AR:"+string(d[Dif.ar]));
halign(fa_left);
draw_text(x+20, y+21, "CS:"+string(d[Dif.cs]));
draw_text(x+20, y+42, "HP:"+string(d[Dif.hp]));

if thumbnail != -1
	draw_sprite(thumbnail, 0, x+3, y+118);

alpha(1);

if LMB {
	if mouseIn_mf0 x+10 mouseIn_mf1 y+245 mouseIn_mf2 x+154 mouseIn_mf3 y+270 mouseIn_mf4 {
		makeSoundPrev(d[Dif.setId]);
		click_mf0;
	}
	if  mouseIn_mf0 x+10 mouseIn_mf1 y+280 mouseIn_mf2 x+154 mouseIn_mf3 y+305 mouseIn_mf4 { 
		url_open("https://osu.ppy.sh/beatmapsets/"+string(d[Dif.setId]));
		click_mf0;
	}
	if mouseIn_mf0 x+10 mouseIn_mf1 y+315 mouseIn_mf2 x+154 mouseIn_mf3 y+340 mouseIn_mf4  { 
		makeDownload(d[Dif.setId], title);
		click_mf0;
	}
	if mouseIn_mf0 x+10 mouseIn_mf1 y+350 mouseIn_mf2 x+154 mouseIn_mf3 y+375 mouseIn_mf4 {
		apr = false;
		click_mf0;
	}
}


if !apr && image_alpha < 0.01
	kill();