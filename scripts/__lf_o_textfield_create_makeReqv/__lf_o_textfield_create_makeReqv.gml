/// __lf_o_textfield_create_makeReqv()
function __lf_o_textfield_create_makeReqv() {
	//!#lambda makeReqv
	 {
		if exePath == "" {
	    	o_settings.see = true;
	    	exit;
	    }
	    
		var g = function(parameter, obj) {
			if obj.item == -1 
				return "";
			return "&"+parameter+"="+string(obj.itemsCode[@ obj.item]);
		}
	    
		with (o_control) {
			var link = ""; 
			if o_type.type == 2 {
				link = "https://catboy.best/api/search?";
				link += "query="+other.textfield_string;
				link += "&amount=50";
				link += "&offset="+string((other.page-1)*50);
				link += parametAdd("status", o_ranks);
				link += parametAdd("mode", o_modes);
				link += parametAdd("language", o_languages);
				link += parametAdd("genre", o_geners);
			} else if o_type.type == 1 {
				link = "https://api.chimu.moe/v1/set/" + other.textfield_string;
			} else if o_type.type == 0 {
				link = "https://api.chimu.moe/v1/map/" + other.textfield_string;
			} else if o_type.type == 3 {
				link = "https://api.chimu.moe/cheesegull/search?";
				link += "query="+other.textfield_string;
				link += "&amount=50";
				link += "&offset="+string((other.page-1)*50);
				link += parametAdd("status", o_ranks);
				link += parametAdd("mode", o_modes);
			}
			log_mf0 "__lf_o_textfield_create_makeReqv" log_mf1 "39" log_mf2 link log_mf3;
			pageRequest = http_get(link);
			
		}
		click_mf0;
	}


}
