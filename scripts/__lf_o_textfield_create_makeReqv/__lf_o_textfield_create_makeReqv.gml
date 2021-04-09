/// __lf_o_textfield_create_makeReqv()
function __lf_o_textfield_create_makeReqv() {
	//!#lambda makeReqv
	 {
		if exePath == "" {
	    	o_settings.see = true;
	    	exit;
	    }
	    
		var parametAdd = function(parameter, obj) {
			if obj.item == -1 
				return "";
			return "&"+parameter+"="+string(obj.itemsCode[@ obj.item]);
		}
	    
		with (o_control) {
			var link = ""; 
			if o_type.type == 2 {
				link = "https://api.chimu.moe/v1/search?";
				link += "query="+other.textfield_string;
				link += "&amount=50";
				link += "&offset="+string((other.page-1)*50);
				link += parametAdd("status", o_ranks);
				link += parametAdd("mode", o_modes);
				link += parametAdd("language", o_languages);
				link += parametAdd("genre", o_geners);
				// link += "&min_ar=0";
				// link += "&max_ar=10";
				// link += "&min_od=0";
				// link += "&max_od=10";
				// link += "&min_cs=0";
				// link += "&max_cs=10";
				// link += "&min_hp=0";
				// link += "&min_hp=10";
				// link += "&min_hp=0";
				// link += "&max_hp=10";
				// link += "&min_diff=0";
				// link += "&max_diff=10";
				// link += "&min_bpm=0";
				// link += "&max_bpm=1000";
				// link += "&min_length=0";
				// link += "&max_length=1000";
				// link += "&c="+o_type.typeIdent[o_type.type];
				// link += o_type.type == 2"&p="+string(other.page);
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
			log_mf0 "__lf_o_textfield_create_makeReqv" log_mf1 "57" log_mf2 link log_mf3;
			pageRequest = http_get(link);
			
		}
		click_mf0;
	}


}
