randomize();
__init_view();
window_set_size(display_get_height() / 3 * 4, display_get_height() / 4 * 3);
display_set_gui_size(room_width, room_height);
window_set_cursor(cr_none);
cursor_sprite = spr_icon_mouse;
obj_controller.alarm[0] = 1;

enum state
{
	Menu,
	PlaySelect,
	Ship,
	Info,
	Options,
	Credits,
	Game,
	ServerMenu,
	ServerLobby,
	Multiplayer,
	End
}
global.gameState = state.Menu;

//Variables

global.currenthealth = 200;
global.displayhealth = 200;
global.maxhealth = 200;
global.currentammo = 100;
global.maxammo = 100;
global.displayammo = 100;
score = 0;
global.displayscore = 0;
global.combo = 0;

global.ip = "";
global.stage = 1;
global.version = 1;
global.playername = "";

//Settings
ini_open("data.ini");
global.soundfx = ini_read_real("settings", "soundfx", true);
global.music = ini_read_real("settings", "music", true);
global.fullscreen = ini_read_real("settings", "fullscreen", false);
global.particles = ini_read_real("settings", "particles", true);
global.update = ini_read_real("settings", "update", true);
global.name = ini_read_string("profile", "name", "Player");
global.playericon = ini_read_real("profile", "playericon", 1);
global.class = ini_read_real("profile", "class", 1);
ini_close();

if(global.update)
{
	room_goto(rm_update);
}
else
{
	room_goto(rm_menu);
}