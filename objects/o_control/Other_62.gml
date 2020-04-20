
if HttpId == pageRequest {
	if HttpStatus == 0 {
		log_mf0 "o_control" log_mf1 "56" log_mf2 "list loaded" log_mf3;
		with o_map kill();
	
		var mapList = json_decode(HttpResult);
		var maps = mapList[? ds_map_find_first(mapList)];
		for (var i = 0; i < ds_list_size(maps); i++) {
			var get = maps[| i];
			var map = instance_create_depth(o_textfield.x, 100 + 75*i, 0, o_map);
			map.artist = get[? "artist"];
			map.title  = get[? "title"];
			map.creator= get[? "creator"];
			map._id    = get[? "id"];
			map.status = real(get[? "status"]);	
			
			if mapThumbEnable {
				var tumb = New_mf0 o_tumbload New_mf1;
				tumb.objectId = map;
				tumb.download = sprite_add("https://b.ppy.sh/thumb/"+get[? "id"]+"l.jpg", 1,0,1,0,0);
			}
			
			var difs = get[? "beatmaps"];	
			for (var b = 0; b<ds_list_size(difs); b++) {
				var beatmap = difs[| b];
				var d/*:Dif*/ = array_create(Dif.name);
				d[@Dif.hp] = beatmap[? "hp"];
				d[@Dif.cs] = beatmap[? "cs"];
				d[@Dif.od] = beatmap[? "od"];
				d[@Dif.ar] = beatmap[? "ar"];
				d[@Dif._id] = beatmap[? "id"];
				d[@Dif.bpm] = beatmap[? "bpm"];
				d[@Dif.star] = beatmap[? "star"];
				d[@Dif.name] = beatmap[? "name"];
				d[@Dif.leng] = beatmap[? "length"];
				map.maps[b] = d;
				map.mapsIcons[b] = real(beatmap[? "mode"]);
			}
			//log([get[? "title"], get[? "artist"], get[? "creator"], get[? "id"], get[? "rankedAt"]]);
		}
		ds_map_destroy(mapList);
	} else if HttpStatus < 0 {
		scr_message("Ошибка загрузки", c_red);
		log_mf0 "o_control" log_mf1 "97" log_mf2 "list load failed" log_mf3;
	}
}