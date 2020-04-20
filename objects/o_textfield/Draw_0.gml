color(c_white);
draw_self();

var msgCut = textfield_string;
var maxWi  = 790;

if string_width(msgCut) > maxWi {
	var len = 0;
	for(var a = string_length(msgCut); a > 0; a--){
		len += string_width(string_char_at(msgCut, a));
		if len > maxWi {
			msgCut = string_delete(msgCut, 1, a);
			break;
		}
	}
}

if string_length(msgCut) > 0 || textfield_active{
    draw_text(x+5, y+8, msgCut);
} else {
    draw_text(x+5, y+8, "название карты");
}
if textfield_active {
    draw_text_color(x+5+string_width(msgCut), y+8, "|", c_white, c_white, c_white, c_white, round(abs(sin(get_timer()/500000))));
}
