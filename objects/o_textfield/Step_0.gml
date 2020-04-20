

if LMB {
    if point_in_rectangle( mouse_x, mouse_y, bbox_left, bbox_top, bbox_right, bbox_bottom) {
        textfield_active = true;
        keyboard_string = textfield_string;
    } else {
        textfield_active = false;
    }
}

if textfield_active {

	if keyboard_check(vk_control)
		if keyboard_check_pressed(ord("V"))
			if clipboard_has_text()
				keyboard_string += clipboard_get_text();

    textfield_string = keyboard_string;
    if keyboard_check_pressed(vk_enter) {
    
    
    	if exePath == "" {
    		o_settings.see = true;
    		exit;
    	}
    
		with (o_control) {
			var catLink = "https://bloodcat.com/osu/?mod=json&q=";
			var link = catLink+other.textfield_string;
			
			{/*!#lamdef __lf_o_textfield_step_linkAdd*/};
	
			link += "&s="+__lf_o_textfield_step_linkAdd(o_ranks.ranks);
			link += "&m="+__lf_o_textfield_step_linkAdd(o_modes.mods);
			link += "&c="+o_type.typeIdent[o_type.type];
			log_mf0 "o_textfield" log_mf1 "56" log_mf2 link log_mf3;
			pageRequest = http_get(link);
		}
    }
}
