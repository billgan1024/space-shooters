//tell the server our ping
buffer_seek(global.buffer, buffer_seek_start, 0);
buffer_write(global.buffer, buffer_u8, message_player_info);
buffer_write(global.buffer, buffer_u32, ping);
network_send_packet(socket, global.buffer, buffer_tell(global.buffer));

alarm[1] = 300;