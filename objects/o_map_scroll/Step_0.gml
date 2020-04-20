
if mouseIn_mf0 bbox_left mouseIn_mf1 bbox_top mouseIn_mf2 bbox_right mouseIn_mf3 bbox_bottom mouseIn_mf4
	yy += (mouse_wheel_up() - mouse_wheel_down()) * 30;

var ny = yy;
yy *= 0.9;

var ny = ny - yy;
with o_map
	y += ny;

