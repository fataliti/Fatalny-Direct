xx = lerp(see?200:0,xx,0.7);

//alpha(0.8);
color($181113);
draw_rectangle(x + xx,y-60,x+25 + xx,y+60,false);
draw_rectangle(0,y-60,x + xx,room_height,false);
//alpha(1);
color(c_white);
halign(fa_center);
draw_text_transformed(x+5 + xx, y, "SETTINGS", 1, 1, 90);
halign(fa_left);


var lp = -185 + xx;
draw_text(lp, y-47, "Osu!.exe путь");
var m = mouseIn_mf0 xx-55 mouseIn_mf1  y-47 mouseIn_mf2 xx-55+32 mouseIn_mf3  y-47+32 mouseIn_mf4;
draw_sprite_ext(s_osu_ico,0,xx-55, y-47,1,1,0, exePath != "" || m? c_fuchsia:c_white, 1);

var p = exePath!=""? " ":" не ";
draw_text(lp, y-25, "Путь" + p +"указан");

draw_text(lp, y+10, "Автоораспаковка");
draw_circle(lp + 155, y+18, 8, false);

draw_text(lp, y+45, "Тамбнейлы");
draw_circle(lp + 155, y+53, 8, false);

draw_text(lp, y+80, "Превью");
draw_circle(lp + 155, y+88, 8, false);

draw_text(lp, y+115, "Вызов на: "+string(keyName(keyCall)));
draw_circle(lp + 155, y+123, 8, false);

draw_text(lp, y+150, "Свернуть на: "+string(keyName(keyDown)));
draw_circle(lp + 155, y+158, 8, false);

draw_text(lp, y+185, "Хранилище");
draw_circle(lp + 155, y+193, 8, false);

color(c_black);
draw_circle(lp + 155, y+18, 6, false);
draw_circle(lp + 155, y+53, 6, false);
draw_circle(lp + 155, y+88, 6, false);


color(c_white);
if autoOpen
	draw_circle(lp + 155, y+18, 4, false);
if mapThumbEnable
	draw_circle(lp + 155, y+53, 4, false);
if difThumbEnable
	draw_circle(lp + 155, y+88, 4, false);

if setKey == SetKey.call 
	draw_circle_color(lp + 155, y+123, 6, c_purple, c_purple, false);
if setKey == SetKey.down 
	draw_circle_color(lp + 155, y+158, 6, c_purple, c_purple, false);
	
if LMB {
	if mouseIn_mf0 x + xx mouseIn_mf1 y-60 mouseIn_mf2 x+25 + xx mouseIn_mf3 y+60 mouseIn_mf4
		see = !see;
	if m {
		exePath = get_open_filename("Osu!.exe|*.exe","");
		log_mf0 "o_settings" log_mf1 "81" log_mf2 exePath log_mf3;
	}
	
	if point_in_circle(mx, my, lp + 155, y+18, 8)
		autoOpen = !autoOpen;
	if point_in_circle(mx, my, lp + 155, y+53, 8)
		mapThumbEnable = !mapThumbEnable;
	if point_in_circle(mx, my, lp + 155, y+88, 8)
		difThumbEnable = !difThumbEnable;
		
	if point_in_circle(mx, my, lp + 155, y+123, 8) {
		setKey = setKey == SetKey.null ? SetKey.call : SetKey.null;
	}
	if point_in_circle(mx, my, lp + 155, y+158, 8) {
		setKey = setKey == SetKey.null ? SetKey.down : SetKey.null;
	}
	
	if point_in_circle(mx, my, lp + 155, y+193, 8) {
		execute_shell("C:\\Windows//explorer.exe " + dataPath, true);
	}
	
	if !point_in_circle(mx, my, lp + 155, y+158, 8) && !point_in_circle(mx, my, lp + 155, y+123, 8)
		setKey = SetKey.null;
}

switch(setKey) {
	case SetKey.call:
		if keyboard_check(vk_anykey) {
			keyCall = keyboard_lastkey;
			setKey = SetKey.null;
		}
		break;
	case SetKey.down:
		if keyboard_check(vk_anykey) {
			keyDown = keyboard_lastkey;
			setKey = SetKey.null;
		}
		break;
}
