
y = ystart + 10 - 10 * image_alpha;
image_alpha = lerp(apr?1:0, image_alpha,0.65);

alpha(image_alpha);

color(c_black);
draw_rectangle(x, y, x+164, y+345, false);

draw_set_color(c_green);
if mouseIn_mf0 x+10 mouseIn_mf1 y+280 mouseIn_mf2 x+154 mouseIn_mf3 y+305 mouseIn_mf4
	draw_set_color(c_lime);
draw_rectangle(x+10,y+280,x+154,y+305,false);

draw_set_color(c_maroon);
if mouseIn_mf0 x+10 mouseIn_mf1 y+315 mouseIn_mf2 x+154 mouseIn_mf3 y+340 mouseIn_mf4
	draw_set_color(c_red);
draw_rectangle(x+10,y+315,x+154,y+340,false);

color(c_white);

var d/*:Dif*/ = dif;

halign(fa_center);
draw_text(x+82, y+3, d[Dif.name]);
draw_text(x+82, y+75, "Lenght:"+d[Dif.leng]);
draw_text(x+82, y+100, "BPM:"+d[Dif.bpm]);
draw_text(x+82, y+125, "Stars:"+d[Dif.star]);

draw_text(x+82, y+285, "PREVIEW");
draw_text(x+82, y+320, "CLOSE");

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
		apr = false;
}


if !apr && image_alpha < 0.01
	kill();