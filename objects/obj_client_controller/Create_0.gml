socket = network_create_socket(network_socket_tcp);
network_set_config(network_config_connect_timeout, 1000);
isConnected = network_connect(socket, global.ip, 12345);
global.buffer = buffer_create(1024, buffer_fixed, 1);
ping = 0;
if(isConnected < 0)
{
	client_show_notification("Failed to connect to server!", 1280 + view_playselectx, 1000 + view_playselecty);
	instance_destroy();
}
else
{
	global.gameState = state.ServerMenu;
	alarm[0] = 60;
}

alarm[1] = 300;

/*var m = instance_create_layer(3840, 1260, "UI", obj_display);
	m.align = fa_center;
	m.font = fnt_menu2;
	m.text = "Failed to connect to server!";
