
y = ystart + 10 - 10 * image_alpha;
image_alpha = lerp(apr?1:0, image_alpha,0.65);

alpha(image_alpha);

color($181113);
draw_rectangle(x, y, x+164, acc==-1?y+415:y+510, false);

draw_set_color( mouseIn_mf0 x+10 mouseIn_mf1 y+280 mouseIn_mf2 x+154 mouseIn_mf3 y+305 mouseIn_mf4 ? $00CA00 : c_green);
draw_rectangle(x+10,y+280,x+154,y+305,false);

draw_set_color(mouseIn_mf0 x+10 mouseIn_mf1 y+315 mouseIn_mf2 x+154 mouseIn_mf3 y+340 mouseIn_mf4 ? $0099FF : $0063C6);
draw_rectangle(x+10,y+315,x+154,y+340,false);

draw_set_color(mouseIn_mf0 x+10 mouseIn_mf1 y+350 mouseIn_mf2 x+154 mouseIn_mf3 y+375 mouseIn_mf4 ? $CE00CE : c_purple);
draw_rectangle(x+10,y+350,x+154,y+375,false);

draw_set_color(mouseIn_mf0 x+10 mouseIn_mf1 y+385 mouseIn_mf2 x+154 mouseIn_mf3 y+410 mouseIn_mf4 ? c_red : c_maroon);
draw_rectangle(x+10,y+385,x+154,y+410,false);

color(c_white);

var d/*:Dif*/ = dif;

halign(fa_center);

var scl = 155 / string_width(d[Dif.name]);
if scl > 1 
	scl = 1;

var xc = x+82;
draw_text_transformed(xc, y+3, d[Dif.name], scl, 1, 0);
draw_text(xc, y+75, "Lenght:"+d[Dif.leng]);
draw_text(xc, y+100, "BPM:"+d[Dif.bpm]);
draw_text(xc, y+125, "Stars:"+d[Dif.star]);

draw_text(xc, y+285, "PREVIEW");
draw_text(xc, y+320, "OPEN");
draw_text(xc, y+355, "DOWNLOAD");
draw_text(xc, y+390, "CLOSE");

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
draw_text(x+144, y+25, "OD:"+d[Dif.od]);
draw_text(x+144, y+50, "AR:"+d[Dif.ar]);
halign(fa_left);
draw_text(x+20, y+25, "CS:"+d[Dif.cs]);
draw_text(x+20, y+50, "HP:"+d[Dif.hp]);

if thumbnail != -1
	draw_sprite(thumbnail, 0, x+3, y+150);

alpha(1);

if LMB {
	if mouseIn_mf0 x+10 mouseIn_mf1 y+280 mouseIn_mf2 x+154 mouseIn_mf3 y+305 mouseIn_mf4 
		url_open("https://bloodcat.com/osu/preview.html#"+d[Dif._id]);
	if mouseIn_mf0 x+10 mouseIn_mf1 y+315 mouseIn_mf2 x+154 mouseIn_mf3 y+340 mouseIn_mf4 
		url_open("https://osu.ppy.sh/beatmapsets/"+d[Dif.setId]);
	if mouseIn_mf0 x+10 mouseIn_mf1 y+350 mouseIn_mf2 x+154 mouseIn_mf3 y+375 mouseIn_mf4 
		makeDownload(d[Dif.setId], title);
	if mouseIn_mf0 x+10 mouseIn_mf1 y+385 mouseIn_mf2 x+154 mouseIn_mf3 y+410 mouseIn_mf4
		apr = false;
}


if !apr && image_alpha < 0.01
	kill();