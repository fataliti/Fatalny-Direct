//!#import "global"

#macro trace	show_debug_message
#macro exec 	script_execute
#macro kill 	instance_destroy
#macro color	draw_set_color
#macro alpha    draw_set_alpha
#macro halign	draw_set_halign
#macro LMB		mouse_check_button_pressed(mb_left)
#macro RMB		mouse_check_button_pressed(mb_right)

#macro HttpId				async_load[? "id"]
#macro HttpStatus			async_load[? "status"]
#macro HttpResult			async_load[? "result"]
#macro HttpUrl				async_load[? "url"]
#macro HttpHttpStatus		async_load[? "http_status"]
#macro HttpContentLength	async_load[? "contentLength"]
#macro HttpSizeDownloaded	async_load[? "sizeDownloaded"]

//!#mfunc log {"args":["msg"],"order":[[2,"__FILE__"],[2,"__LINE_STR__"],0]}
#macro log_mf0  show_debug_message("[" + 
#macro log_mf1  + ":" + 
#macro log_mf2  + "] " + string(
#macro log_mf3 ))
//!#mfunc New {"args":["obj"],"order":[0]}
#macro New_mf0 	instance_create_depth(0,0,0, 
#macro New_mf1 )
//!#mfunc mouseIn {"args":["x1"," y1"," x2"," y2"],"order":[0,1,2,3]}
#macro mouseIn_mf0  point_in_rectangle(mouse_x, mouse_y, 
#macro mouseIn_mf1 , 
#macro mouseIn_mf2 , 
#macro mouseIn_mf3 , 
#macro mouseIn_mf4 )

//!#mfunc playSnd {"args":["snd"],"order":[0]}
#macro playSnd_mf0  var s=audio_play_sound(
#macro playSnd_mf1 ,0,false)

#macro vk_tilde 192

enum Vec2 {
	x,
	y, 
	sizeOf,
}
enum Vec3 {
	x,
	y, 
	z,
	sizeOf,
}