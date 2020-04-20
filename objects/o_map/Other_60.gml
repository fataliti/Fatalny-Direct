
if HttpId == loading {
	if HttpStatus == 0 {
		thumbnail = loading;
		sprite_set_offset(thumbnail, sprite_get_width(thumbnail), 0);
	}
}