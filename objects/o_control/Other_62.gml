
if HttpId == pageRequest {
	if HttpStatus == 0 {
		pageRequest = -1;
		
		log_mf0 "o_control" log_mf1 "124" log_mf2 "list loaded" log_mf3;
		with o_map kill();
		with o_scroll yy=0;
		trace(HttpResult);
		
		if HttpResult == "Not Found" {
			exit;
		}
		var mapList = json_parse(HttpResult);
		var maps = mapList;
		
		if array_length(maps) > 0 {
			for (var i = 0; i < array_length(maps); i++) {
				var get = maps[i];
				var map = instance_create_depth(o_textfield.x, 100 + 70*i, 0, o_map);
				map.title  = string_trim(get.Artist + " - " + get.Title, 700);
				map.creator= get.Creator;
				map._id    = get.SetID;
				map.status = real(get.RankedStatus);	
				
				if mapThumbEnable {
					var tumb = New_mf0 o_tumbload New_mf1;
					tumb.objectId = map;
					tumb.download = sprite_add("https://assets.ppy.sh/beatmaps/"+string(get.SetID)+"/covers/cover.jpg", 1,0,1,0,0);
				}
				
				var difs = get.ChildrenBeatmaps;	
				for (var b = 0; b<array_length(difs); b++) {
					var beatmap = difs[ b];
					var d/*:Dif*/ = array_create(Dif.sizeOf); 
					d[@Dif.hp] = beatmap.HP;
					d[@Dif.cs] = beatmap.CS;
					d[@Dif.od] = beatmap.OD;
					d[@Dif.ar] = beatmap.AR;
					d[@Dif._id] = beatmap.BeatmapID;
					d[@Dif.bpm] = beatmap.BPM;
					d[@Dif.star] = beatmap.DifficultyRating;
					d[@Dif.name] = beatmap.DiffName;
					d[@Dif.leng] = beatmap.TotalLength;
					d[@Dif.setId] = map._id;
					map.maps[b] = d;
					map.mapsIcons[b] = [real(beatmap.Mode), clamp(floor(real(beatmap.DifficultyRating)),1,6)];
				}
			}
		} else {
			var map = instance_create_depth(o_textfield.x, 100, 0, o_map);
			var get = maps;
			if mapThumbEnable {
				var tumb = New_mf0 o_tumbload New_mf1;
				tumb.objectId = map;
				tumb.download = sprite_add("https://assets.ppy.sh/beatmaps/"+string(get.ParentSetID)+"/covers/cover.jpg", 1,0,1,0,0);
			}
			if maps[$ "ChildrenBeatmaps"] != undefined {//maps.ChildrenBeatmaps != undefined {
				map.title  = string_trim(get.Artist + " - " + get.Title, 700);
				map.creator= get.Creator;
				map._id    = get.SetId;
				map.status = real(get.RankedStatus);
				var difs = get.ChildrenBeatmaps;
				for (var b = 0; b<array_length(difs); b++) {
					var beatmap = difs[ b];
					var d/*:Dif*/ = array_create(Dif.sizeOf);
					d[@Dif.hp] = beatmap.HP;
					d[@Dif.cs] = beatmap.CS;
					d[@Dif.od] = beatmap.OD;
					d[@Dif.ar] = beatmap.AR;
					d[@Dif._id] = beatmap.BeatmapId;
					d[@Dif.bpm] = beatmap.BPM;
					d[@Dif.star] = beatmap.DifficultyRating;
					d[@Dif.name] = beatmap.DiffName;
					d[@Dif.leng] = beatmap.TotalLength;
					d[@Dif.setId] = map._id;
					map.maps[b] = d;
					map.mapsIcons[b] = [real(beatmap.Mode), clamp(floor(real(beatmap.DifficultyRating)),1,6)];
				}
			} else {
				
				map._id    = get.ParentSetId;
				
				var beatmap = maps;
				var d/*:Dif*/ = array_create(Dif.sizeOf);
				d[@Dif.hp] = beatmap.HP;
				d[@Dif.cs] = beatmap.CS;
				d[@Dif.od] = beatmap.OD;
				d[@Dif.ar] = beatmap.AR;
				d[@Dif._id] = beatmap.BeatmapId;
				d[@Dif.bpm] = beatmap.BPM;
				d[@Dif.star] = beatmap.DifficultyRating;
				d[@Dif.name] = beatmap.DiffName;
				d[@Dif.leng] = beatmap.TotalLength; 
				d[@Dif.setId] = map._id;
				map.maps[0] = d;
				map.mapsIcons[0] = [real(beatmap.Mode), clamp(floor(real(beatmap.DifficultyRating)),1,6)];
				map.title  = string_trim(beatmap.DiffName, 700);
				map.creator= "";
				map._id    = "";
			}
			
		}
		
	} else if HttpStatus < 0 {
		scr_message("Download Error", c_red);
		log_mf0 "o_control" log_mf1 "225" log_mf2 "list load failed" log_mf3;
		pageRequest = -1;
	}
}
