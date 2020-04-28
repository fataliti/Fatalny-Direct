
if HttpId == request {
	if HttpStatus == 0 {
		log_mf0 "o_tillerinobot" log_mf1 "49" log_mf2 "bloodcat get" log_mf3;
		with o_map_preview kill();
		var json = json_decode(HttpResult);
		var mapGet = json[? ds_map_find_first(json)];
		
		var map = mapGet[| 0];
		var difs = map[? "beatmaps"];

		for (var b = 0; b<ds_list_size(difs); b++) {
			var beatmap = difs[| b];
			if !string_count(beatmap[? "name"], reqDif)
				continue;
			
			log_mf0 "o_tillerinobot" log_mf1 "62" log_mf2 "geted" log_mf3;
			
			var d/*:Dif*/ = array_create(Dif.sizeOf);
			d[@Dif.hp] = beatmap[? "hp"];
			d[@Dif.cs] = beatmap[? "cs"];
			d[@Dif.od] = beatmap[? "od"];
			d[@Dif.ar] = beatmap[? "ar"];
			d[@Dif._id] = beatmap[? "id"];
			d[@Dif.bpm] = beatmap[? "bpm"];
			d[@Dif.star] = beatmap[? "star"];
			d[@Dif.name] = beatmap[? "name"];
			d[@Dif.leng] = beatmap[? "length"];
			d[@Dif.setId] = map[? "id"];
			
			makePreview(d, map[? "artist"] + " - " + map[? "title"], reqAcc);
			break;
		}
		alarm[0] = -1;
		ds_map_destroy(json);	
		awaitRecommend = false;
	} else if HttpStatus < 0 {
		scr_message("Recommend fail");
		awaitRecommend = false;
		alarm[0] = -1;
	}
}