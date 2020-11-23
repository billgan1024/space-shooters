if(canshoot and global.currentammo > 0 and !obj_chatbox.selected and !obj_pause.paused and !dead)
{
	if(!instance_exists(obj_reflectshield))
	{
		buffer_seek(global.buffer, buffer_seek_start, 0);
		buffer_write(global.buffer, buffer_u8, message_player_shoot);
		buffer_write(global.buffer, buffer_u32, global.playerid);
		buffer_write(global.buffer, buffer_u32, laserCount);
		buffer_write(global.buffer, buffer_f32, x);
		buffer_write(global.buffer, buffer_f32, y);
		buffer_write(global.buffer, buffer_u16, point_direction(x, y, mouse_x, mouse_y));
		buffer_write(global.buffer, buffer_u8, 32);
		network_send_packet(obj_client_controller.socket, global.buffer, buffer_tell(global.buffer));
	}
}