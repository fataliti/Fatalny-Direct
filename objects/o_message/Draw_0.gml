
image_alpha = lerp(apr?1:0, image_alpha, 0.85);
if !apr && image_alpha < 0.01
	kill();
	
alpha(image_alpha);
color(col);
draw_rectangle(x,y,x+164, y+25, false);
color(c_white);
draw_text(x+5,y+5, text);
alpha(1);


