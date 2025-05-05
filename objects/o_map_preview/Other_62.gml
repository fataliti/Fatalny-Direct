
if ppReqv == HttpId {
	if HttpStatus == 0 {
		var res = HttpResult;
		//log(res);
		if res == "Invalid key" {
			ppReqv = -1;
			scr_message("PPaddict invalid key");
			exit;
		}
		trace("pp addice: " + res);
		var json = json_decode(res);
		var ppForAcc = json[? "ppForAcc"];
		if ppForAcc == undefined
			exit;
		var entry = ppForAcc[? "ppForAcc"];
		
		var _acc/*:Acc*/ = array_create(Acc.sizeOf);
		
		_acc[@Acc.acc93] = "93%: " + string(round(ppForAcc[? "0.93"])) + "pp";
		_acc[@Acc.acc95] = "95%: " + string(round(ppForAcc[? "0.95"])) + "pp";
		_acc[@Acc.acc98] = "98%: " + string(round(ppForAcc[? "0.98"])) + "pp";
		_acc[@Acc.acc99] = "99%: " + string(round(ppForAcc[? "0.99"])) + "pp";
		_acc[@Acc.acc100] = "100%: " + string(round(ppForAcc[? "1.0"])) + "pp";
		
		acc = _acc;
		ds_map_destroy(json);
	} else if HttpStatus < 0 {
		ppReqv = -1;
		fail = true;
	}
}