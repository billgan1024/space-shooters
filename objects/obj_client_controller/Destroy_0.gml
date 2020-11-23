//destroy all lasers
with(obj_client_bullet)
{
	buffer_seek(global.buffer, buffer_seek_start, 0);
	buffer_write(global.buffer, buffer_u8, message_bullet_destroy);
	buffer_write(global.buffer, buffer_u32, global.playerid);
	buffer_write(global.buffer, buffer_u32, laserId);
	network_send_packet(obj_client_controller.socket, global.buffer, buffer_tell(global.buffer));	
}
network_destroy(socket);
buffer_delete(global.buffer);