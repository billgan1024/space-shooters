var eventType = ds_map_find_value(async_load, "type");
switch(eventType)
{
	
	case network_type_data:
		var buffer = ds_map_find_value(async_load, "buffer");
		buffer_seek(buffer, buffer_seek_start, 0);
		scr_handleIncomingPackets(buffer);
	break;
}

