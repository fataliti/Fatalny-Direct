/// @param str
/// @param maxWi
function string_trim(argument0, argument1) {
	var str = argument0, maxWi = argument1;

	var t = str;

	if string_width(t) > maxWi {
		var len = 0;
		for(var a = 0; a < string_length(str); a++){
			len += string_width(string_char_at(t, a));
			if len > maxWi {
				t = string_copy(str, 1, a) + "...";
				break;
			}
		}
	}
	return t;


}
