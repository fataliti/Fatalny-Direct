/// __lf_o_map_draw_downloadTitle(title)
//!#lambda downloadTitle($)
var title = argument0;
 {
			var t = title;
			var maxWi  = 134;
			
			if string_width(t) > maxWi {
				var len = 0;
				for(var a = 0; a < string_length(title); a++){
					len += string_width(string_char_at(t, a));
					if len > maxWi {
						t = string_copy(title, 1, a) + "...";
						break;
					}
				}
			}
			return t;
		}