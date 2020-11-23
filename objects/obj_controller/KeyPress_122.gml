window_set_fullscreen(!window_get_fullscreen());
if(!window_get_fullscreen())
{
	ini_open("data.ini");
	ini_write_real("settings", "fullscreen", false);
	ini_close();
	global.fullscreen = false;
	window_set_size(display_get_height() / 3 * 4, display_get_height() / 4 * 3);
}
else
{
	ini_open("data.ini");
	ini_write_real("settings", "fullscreen", true);
	ini_close();
	global.fullscreen = true;
}