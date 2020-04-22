/// __lf_o_textfield_create_makeReqv()
//!#lambda makeReqv
 {
	if exePath == "" {
    	o_settings.see = true;
    	exit;
    }
	with (o_control) {
		var catLink = "https://bloodcat.com/osu/?mod=json&q=";
		var link = catLink+other.textfield_string;
		
		{/*!#lamdef __lf_o_textfield_create_makeReqv_linkAdd*/};
	
		link += "&s="+__lf_o_textfield_create_makeReqv_linkAdd(o_ranks.ranks);
		link += "&m="+__lf_o_textfield_create_makeReqv_linkAdd(o_modes.mods);
		link += "&l="+__lf_o_textfield_create_makeReqv_linkAdd(o_languages.langs);
		link += "&g="+__lf_o_textfield_create_makeReqv_linkAdd(o_geners.geners);
		link += "&c="+o_type.typeIdent[o_type.type];
		link += "&p="+string(other.page);
		log_mf0 "o_textfield" log_mf1 "37" log_mf2 link log_mf3;
		pageRequest = http_get(link);
	}
}