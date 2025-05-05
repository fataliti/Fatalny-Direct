function Channel() constructor {
	__id = ChannelCreate();
	__volume = 100;
	__fileName = "";
	
 	static setSound = function(soundPath) {
		__fileName = filename_name(soundPath);
		var s = ChannelSet(__id, soundPath);
		stop();
		return s;
	}
	
	static getName = function() {
		return __fileName;	
	}
	
	static play = function() {
		return ChannelPlay(__id);	
	}
	
	static pause = function() {
		return ChannelPause(__id);
	}
	
	static stop = function() {
		return ChannelStop(__id);	
	}
	
	static setVolume = function(volume) {
		__volume = volume;
		return ChannelVolume(__id, volume);
	}
	
	static getVolume = function(volume) {
		return __volume;
	}
	
	static kill = function() {
		return ChannelKill(__id);
	}
	
	static getDuration = function() {
		return ChannelDuration(__id);	
	}
	
	static getPosition = function() {
		return ChannelPosition(__id);	
	}
	
	static setPosition = function(position) {
		return ChannelSetPosition(__id, position);	
	}
}

