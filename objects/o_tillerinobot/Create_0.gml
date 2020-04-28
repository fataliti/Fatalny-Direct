network_set_config(network_config_use_non_blocking_socket, 1);
network_set_config(network_config_connect_timeout, 1000);

socket = -1;
connecting = false;
awaitRecommend = false;
ircConnect = __lf_o_tillerinobot_create_ircConnect;


request = -1;
reqDif  = "";
reqAcc  = [];
fail    = false;