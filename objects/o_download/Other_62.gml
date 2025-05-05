
if HttpId == _id {
	size = HttpContentLength;
	downloaded = HttpSizeDownloaded;
	if HttpResult != undefined {
		if autoOpen {
			execute_shell_simple(exePath, HttpResult);
			apr = false;	
		} else 
			path = exePath+" "+HttpResult;
		//log( exePath+" " + HttpResult);
		log_mf0 "o_download" log_mf1 "58" log_mf2 "downloaded: "+ HttpResult log_mf3;
		size = 1;
		downloaded = 1;
	}
	
	if HttpStatus < 0 {
		scr_message("Download error",c_red);
		kill();
	}
}