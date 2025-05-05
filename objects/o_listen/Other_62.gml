
if preview == HttpId {
	var r = HttpResult;
	if r != undefined {
		PREVIEW_CHANNEL.setSound(r);
		PREVIEW_CHANNEL.play();
		file_delete(r);
		kill();
	}
	if HttpStatus < 0 
		kill();
}