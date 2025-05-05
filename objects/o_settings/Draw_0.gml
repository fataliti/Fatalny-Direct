xx = lerp(see?200:0,xx,0.7);

color($181113);
draw_rectangle(x + xx,y-60,x+25 + xx,y+60,false);
draw_rectangle(0,y-60,x + xx,room_height,false);

color(c_white);
halign(fa_center);
draw_text_transformed(x+5 + xx, y, "SETTINGS", 1, 1, 90);
halign(fa_left);


var lp = -185 + xx;
draw_text(lp, y-47, "Osu!.exe path");
var m = mouseIn_mf0 xx-55 mouseIn_mf1  y-47 mouseIn_mf2 xx-55+32 mouseIn_mf3  y-47+32 mouseIn_mf4;
draw_sprite_ext(s_osu_ico,0,xx-55, y-47,1,1,0, exePath != "" || m? c_fuchsia:c_white, 1);

var p = exePath!=""? " ":" not ";
draw_text(lp, y-25, "Path" + p +"specified");

{/*!#lamdef __lf_o_settings_draw_option*/};

__lf_o_settings_draw_option("Auto Unpack", lp, y+10);
__lf_o_settings_draw_option("Tumbnails", lp, y+45);
//option("Preview", lp, y+80);
__lf_o_settings_draw_option("AA level x"+string(AAlevel), lp, y+80);
__lf_o_settings_draw_option("Maximize on: "+string(keyName(keyCall)), lp, y+115);
__lf_o_settings_draw_option("Minimize on: "+string(keyName(keyDown)), lp, y+150);
__lf_o_settings_draw_option("Storage", lp, y+185);
__lf_o_settings_draw_option("Tillerino", lp, y+220);
__lf_o_settings_draw_option("PPaddict", lp, y+255);
__lf_o_settings_draw_option("FPS: "+string(FPS), lp, y+290);

color(c_black);
draw_circle(lp + 155, y+18, 6, false);
draw_circle(lp + 155, y+53, 6, false);
draw_circle(lp + 155, y+88, 6, false);
draw_circle(lp + 155, y+228, 6, false);
draw_circle(lp + 155, y+263, 6, false);
draw_circle(lp + 155, y+298, 6, false);

color(c_white);
if autoOpen
	draw_circle(lp + 155, y+18, 4, false);
if mapThumbEnable
	draw_circle(lp + 155, y+53, 4, false);
// if difThumbEnable
// 	draw_circle(lp + 155, y+88, 4, false);

draw_circle(lp + 155, y+88, (AAlevel / 8) * 4, false);

if tillerinoEnable
	draw_circle(lp + 155, y+228, 4, false);
if ircName == "" || ircPass == "" 
	draw_circle_color(lp + 155, y+228, 6, c_red, c_red, false);

if ppAddictEnable
	draw_circle(lp + 155, y+263, 4, false);
if addictKey == ""	
	draw_circle_color(lp + 155, y+263, 6, c_red, c_red, false);


if setKey == SetKey.call 
	draw_circle_color(lp + 155, y+123, 6, c_purple, c_purple, false);
if setKey == SetKey.down 
	draw_circle_color(lp + 155, y+158, 6, c_purple, c_purple, false);
	
draw_circle(lp + 155, y+298, 4*(FPS/60), false);

if LMB {
	if mouseIn_mf0 x + xx mouseIn_mf1 y-60 mouseIn_mf2 x+25 + xx mouseIn_mf3 y+60 mouseIn_mf4
		see = !see;

	if m {
		exePath = get_open_filename("Osu!.exe|*.exe","");
		log_mf0 "o_settings" log_mf1 "93" log_mf2 exePath log_mf3;
	}
	
	if point_in_circle(mx, my, lp + 155, y+18, 8)
		autoOpen = !autoOpen;
	if point_in_circle(mx, my, lp + 155, y+53, 8)
		mapThumbEnable = !mapThumbEnable;
	// if point_in_circle(mx, my, lp + 155, y+88, 8)
	// 	difThumbEnable = !difThumbEnable;
	
	if point_in_circle(mx, my, lp + 155, y+88, 8) {
		AAlevel += 2;
		if AAlevel > 8 
			AAlevel = 0;
			
		display_reset(AAlevel, false);
	}
	
	if point_in_circle(mx, my, lp + 155, y+123, 8) 
		setKey = setKey == SetKey.null ? SetKey.call : SetKey.null;
	if point_in_circle(mx, my, lp + 155, y+158, 8) 
		setKey = setKey == SetKey.null ? SetKey.down : SetKey.null;
	if !point_in_circle(mx, my, lp + 155, y+158, 8) && !point_in_circle(mx, my, lp + 155, y+123, 8)
		setKey = SetKey.null;
	
	if point_in_circle(mx, my, lp + 155, y+193, 8)  {
		execute_shell_simple("C:\\Windows//explorer.exe", dataPath);
	}
	
	if point_in_circle(mx, my, lp + 155, y+228, 8) && ircName != "" && ircPass != "" {
		tillerinoEnable = !tillerinoEnable;
		
		if tillerinoEnable {
			instance_activate_object(o_tillerinobot);
			with o_tillerinobot exec(ircConnect);
		} else {
			with o_tillerinobot {
				if socket >= 0 {
					network_destroy(socket);
					alarm[1] = -1;
				}
				socket = -1;
			}
			instance_deactivate_object(o_tillerinobot);
		}
	}
	
	if point_in_circle(mx, my, lp + 155, y+298, 8) {
		FPS += 15;
		if FPS > 60
			FPS = 30;
		game_set_speed(FPS, gamespeed_fps);
	}
	
	if point_in_circle(mx, my, lp + 155, y+263, 8) && addictKey != ""
		ppAddictEnable = !ppAddictEnable;
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
