/// __lf_o_settings_draw_option(str, xPos, yPos, sub = 0)
//!#lambda option($)
var str = argument[0], xPos = argument[1], yPos = argument[2];
var sub = argument_count > 3 ? argument[3] : 0;
{
	draw_text(xPos, yPos, str);
	draw_circle(xPos + 155, yPos + 8, 8, false);
}