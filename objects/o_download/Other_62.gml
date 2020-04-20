if HttpId == _id {
	size = HttpContentLength;
	downloaded = HttpSizeDownloaded;
	if HttpResult != undefined {
		if autoOpen {
			execute_shell(exePath+" "+HttpResult, false);
			apr = false;	
		} else 
			path = exePath+" "+HttpResult;
		//log( exePath+" " + HttpResult);
		log_mf0 "o_download" log_mf1 "47" log_mf2 "downloaded: "+ HttpResult log_mf3;
		size = 1;
		downloaded = 1;
	}
	
	if HttpStatus < 0 {
		scr_message("Ошибка загрузки",c_red);
		kill();
	}
}