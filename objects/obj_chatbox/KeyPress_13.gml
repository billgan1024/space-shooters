if(selected)
{
	if(txt != "")
	{
		//send our message
		buffer_seek(global.buffer, buffer_seek_start, 0);
		buffer_write(global.buffer, buffer_u8, message_player_chat);
		buffer_write(global.buffer, buffer_u32, global.playerid);
		buffer_write(global.buffer, buffer_string, txt);
		network_send_packet(obj_client_controller.socket, global.buffer, buffer_tell(global.buffer));
		
		txt = "";
		selected = false;
		blink = false;
	}
}