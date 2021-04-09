
image_alpha = lerp(apr?1:0, image_alpha, 0.85);

if !apr && image_alpha <= 0.01 {
	kill();
}

if !place_meeting(x, y-1, o_solid) {
	spd -= 0.3;
	if spd > -1
		spd = -1;
}
if place_meeting(x, y+spd, o_solid) {
	while !place_meeting(x, y+sign(spd), o_solid)
		y += sign(spd);
	spd = 0;
}
y += spd;


//trace(downloadComplete(_id));
if downloadComplete(_id) == -1 {
	scr_message("Download error",c_red);
	kill();
}
