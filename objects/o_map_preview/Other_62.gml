
if ppReqv == HttpId {
	if HttpStatus == 0 {
		var res = HttpResult;
		//log(res);
		if res == "Invalid key" {
			ppReqv = -1;
			scr_message("PPaddict invalid key");
			exit;
		}
		
		var json = json_decode(res);
		var ppForAcc = json[? "ppForAcc"];
		if ppForAcc == undefined
			exit;
		var entry = ppForAcc[? "entry"];
		
		var _acc/*:Acc*/ = array_create(Acc.sizeOf);
		
		{/*!#lamdef __lf_o_map_preview_async_http_pp*/};
		
		var g;
		for (var a = 0; a < ds_list_size(entry); a++) {
			g = entry[| a];
			switch(g[? "key"]) {
				case 0.93:	_acc[@Acc.acc93] = "93%: " + __lf_o_map_preview_async_http_pp(g); break;
				case 0.95:	_acc[@Acc.acc95] = "95%: " + __lf_o_map_preview_async_http_pp(g); break;
				case 0.98:	_acc[@Acc.acc98] = "98%: " + __lf_o_map_preview_async_http_pp(g); break;
				case 0.99:	_acc[@Acc.acc99] = "99%: " + __lf_o_map_preview_async_http_pp(g); break;
				case 1:	_acc[@Acc.acc100] = "100%: " + __lf_o_map_preview_async_http_pp(g); break;
			}
		}
		acc = _acc;
		ds_map_destroy(json);
	} else if HttpStatus < 0 {
		ppReqv = -1;
		fail = true;
	}
}