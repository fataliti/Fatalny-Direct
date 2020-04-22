if HttpId == download {
	if HttpStatus == 0 {
		if instance_exists(objectId) {
			objectId.thumbnail = download;
			
			if objectId.object_index == o_map
				sprite_set_offset(download, sprite_get_width(download), 0);
		}
		else 
			sprite_delete(download);
	kill();
	} else if HttpStatus < 0 
		kill();
}