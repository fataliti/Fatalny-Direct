/// __lf_o_tillerinobot_create_ircConnect()
//!#lambda ircConnect
{
	connecting = true;
	socket = network_create_socket(network_socket_tcp);
	var connect = network_connect_raw(socket, "irc.ppy.sh", 6667);
	if connect < 0 {
		scr_message("IRC connect fail");
		network_destroy(socket);
		fail = true;
		connecting = false;
	}
	log_mf0 "o_tillerinobot" log_mf1 "22" log_mf2 "Connected to ORC: " + string(connect) log_mf3;
}