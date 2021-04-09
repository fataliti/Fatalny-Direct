
var type = async_load[? "type"];

if type == network_type_non_blocking_connect {
	log_mf0 "o_tillerinobot" log_mf1 "76" log_mf2 "conect" log_mf3;
	alarm[1] = room_speed * 10;
	sendpack("PASS " + ircPass+ "\r\nNICK " + ircName+"\r\nUSER " + ircName+" 0 * :"+ircName+"\r\nCHAT #Tillerino");
}  else if type == network_type_data {
	var data = async_load[? "buffer"];
	var txt = buffer_read(data, buffer_string);
	
	
	connecting = false;
	//trace(txt);
	//trace("IRC ACTIVE");
	
	if string_count("Bad authentication token", txt) {
		scr_message("IRC authentication fail");
		network_destroy(socket);
		socket = -1;
		fail = true;
		alarm[1] = -1;
		exit;
	} else 
		alarm[1] = room_speed * 3;
	

	var list = [], p;
	while true {
		p = string_pos("\n",txt);
			if p != 0 {
			list[array_length_1d(list)] = string_copy(txt, 1, p-1);
			txt = string_delete(txt, 1, p+1);
		} else 
			break;
	}
	
	for(var a = 0; a < array_length_1d(list); a++){
		var g = list[a];
		if string_count("PRIVMSG", g) {

			if !string_count("Tillerino", g) {
				log_mf0 "o_tillerinobot" log_mf1 "114" log_mf2 g log_mf3;
				exit;
			}
			g = string_delete(g, 1, string_pos(":", g));
			log_mf0 "o_tillerinobot" log_mf1 "118" log_mf2 g log_mf3;
			
			if string_count("!reset",g) {
				scr_message("NO RECCOMENDS", c_green);
				awaitRecommend = false;
				alarm[0] = -1;
				exit;
			}
			
			if string_count("confusing me", g) {
				scr_message("CONFUSING NAME", c_green);
				awaitRecommend = false;
				alarm[0] = -1;
				exit;
			}
			
			var p1 = string_pos("]", g);
			var map = string_copy(g, 2, p1-1);
			reqDif = string_copy(map, string_pos("[",map), string_pos("]",map));
			var mapId = string_digits(string_copy(map, 1, string_pos(" ",map)));
			//request = http_get("https://bloodcat.com/osu/?mod=json&q="+mapId+"&c=b");
			
			var reqString = "https://api.chimu.moe/cheesegull/b/"+string(mapId);
			show_debug_message(reqString);
			request = http_get(reqString);
			
			var p2;
			for(var i = 1; i < string_length(g); i++)
				if string_char_at(g, i) == "|"
					p2 = i;
			p1 += 2;
			var accStr = string_copy(g, p1, p2 - p1) + "| ";
			
			var acc = array_create(Acc.sizeOf, "");
			var aa = 0;
			for(i = 1; i < string_length(accStr); i++) {
				if string_char_at(accStr, i) == "|" {
					acc[aa] = string_copy(accStr, 1, i-1);
					accStr = string_delete(accStr, 1, i);
					i = 1;
					aa++;
				}
			}
			reqAcc = acc;
		}
	}
} 