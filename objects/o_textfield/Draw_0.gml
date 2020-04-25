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


draw_sprite_ext(s_arrow, 0, x + 760, y + 40, 1, 1, 0, mouseIn_mf0 x+760 mouseIn_mf1 y+40 mouseIn_mf2 x+760+33 mouseIn_mf3 y+40+29 mouseIn_mf4?c_yellow:c_white, 1);
draw_sprite_ext(s_arrow, 0, x + 700, y + 40, -1, 1, 0, mouseIn_mf0 x+700-33 mouseIn_mf1 y+40 mouseIn_mf2 x+700 mouseIn_mf3 y+40+29 mouseIn_mf4?c_yellow:c_white, 1);
halign(fa_middle);
draw_text(x+730, y+45, page);

if LMB{
	var p = mouseIn_mf0 x+760 mouseIn_mf1 y+40 mouseIn_mf2 x+760+33 mouseIn_mf3 y+40+29 mouseIn_mf4 - mouseIn_mf0 x+700-33 mouseIn_mf1 y+40 mouseIn_mf2 x+700 mouseIn_mf3 y+40+29 mouseIn_mf4;
	if p != 0 {
		page += p;
		page = clamp(page, 1, 1000);
		exec(makeReqv);
	}
}

if o_control.pageRequest >= 0
	draw_sprite_ext(s_arrow_load, 0, bbox_right - 24, y + 16, 1, 1, get_timer() / 5000, c_white, 1);

