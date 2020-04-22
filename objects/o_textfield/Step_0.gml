

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
    	page = 1;
    	exec(makeReqv);
    }
}
