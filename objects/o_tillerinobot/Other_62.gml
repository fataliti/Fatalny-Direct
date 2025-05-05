
if HttpId == request {
	if HttpStatus == 0 {
		log_mf0 "o_tillerinobot" log_mf1 "39" log_mf2 "bloodcat get" log_mf3;
		with o_map_preview kill();
		log_mf0 "o_tillerinobot" log_mf1 "41" log_mf2 HttpResult log_mf3;
		var map = json_parse(HttpResult);

		log_mf0 "o_tillerinobot" log_mf1 "44" log_mf2 "geted" log_mf3;
		
		var d/*:Dif*/ = array_create(Dif.sizeOf);
		d[@Dif.hp] = map.HP;
		d[@Dif.cs] = map.CS; 
		d[@Dif.od] = map.OD;
		d[@Dif.ar] = map.AR;
		d[@Dif._id] = map.BeatmapID;
		d[@Dif.bpm] = map.BPM;
		d[@Dif.star] = map.DifficultyRating;
		d[@Dif.name] = map.DiffName;
		d[@Dif.leng] = map.TotalLength;
		d[@Dif.setId] = map.ParentSetID;
		// d.hasVideo = map.HasVideo;
		//map.Artist + " - " + map.Title
		makePreview(d, map.DiffName, reqAcc);
		o_map_preview.ppReqv = 0;
		
		alarm[0] = -1;
		awaitRecommend = false;
	} else if HttpStatus < 0 {
		scr_message("Recommend fail");
		awaitRecommend = false;
		alarm[0] = -1;
	}
}