client_show_notification("Successfully joined the lobby!", 1280, 400);

var xx = irandom(room_width - sprite_get_width(spr_gunner)) + (sprite_get_width(spr_gunner) / 2);
var yy = irandom(room_height - sprite_get_height(spr_gunner)) + (sprite_get_height(spr_gunner) / 2);
instance_create_layer(xx, yy, "Ship", obj_client_gunner);

//tell the server we're joining
buffer_seek(global.buffer, buffer_seek_start, 0);
buffer_write(global.buffer, buffer_u8, message_player_join);
buffer_write(global.buffer, buffer_u32, global.playerid);
buffer_write(global.buffer, buffer_f32, xx);
buffer_write(global.buffer, buffer_f32, yy);
network_send_packet(obj_client_controller.socket, global.buffer, buffer_tell(global.buffer));
obj_client_controller.alarm[1] = 1;

if(global.music)
{
	audio_stop_all();
	audio_play_sound(mus_lobby, 0, true);
}

global.currenthealth = 200;
global.displayhealth = 200;
global.maxhealth = 200;

global.currentammo = 100;
global.maxammo = 100;
global.displayammo = 100;