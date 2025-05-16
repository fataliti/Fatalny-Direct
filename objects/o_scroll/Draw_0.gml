if !instance_exists(o_map)
	exit;

color(c_black);
alpha(0.5);
draw_rectangle(x, y, x+8,  640, false);
alpha(1);
var ymin = infinity,ymax = -infinity;
with(o_map) {
	if y<ymin 
		ymin = y;

	if y>ymax 
		ymax = y;
}


var d = (ymax-440) - ymin;
color(c_white);
draw_circle(x+4, y + dif * yys, 4 ,false);

if LMB 
	if point_in_circle(mx, my, x+4, y + dif * yys, 5) 
		scroll = true;

if mouse_check_button_released(mb_left)
	scroll = false;

with(o_map_scroll) {
	if mouseIn_mf0 bbox_left mouseIn_mf1 bbox_top mouseIn_mf2 bbox_right mouseIn_mf3 bbox_bottom mouseIn_mf4
	other.yy += (mouse_wheel_down() - mouse_wheel_up()) * 0.025;
	other.yy = clamp(other.yy,0,1);
}

if scroll {
	yy = (my - y) / dif;
	yy = clamp(yy,0,1);
}

with(o_map) 
	y = lerp(ystart - d * other.yy, y, 0.8);

yys = lerp(yy, yys, 0.35);


