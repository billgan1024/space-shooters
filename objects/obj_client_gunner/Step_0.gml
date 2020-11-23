ct += 1/60;

if(!dead)
{
	if(speed > 0)
	{
		speed -= fric;
	}
	else
	{
		if(image_xscale == 1)
		{
			move = true;	
		}
	}

	if(global.currentammo == global.maxammo)
	{
		regenammo = false;
	}
	else if(regenammo)
	{
		global.currentammo += 1;
	}

	left = keyboard_check(ord("A"));
	right = keyboard_check(ord("D"));
	up = keyboard_check(ord("W"));
	down = keyboard_check(ord("S"));

	hsp = movespeed * (right - left);
	vsp = movespeed * (down - up);

	if(move and !obj_chatbox.selected and !obj_pause.paused)
	{
	x += hsp;
	y += vsp;
	}

	x = clamp(x, 0 + (sprite_width/2), room_width - (sprite_width/2));
	y = clamp(y, 0 + (sprite_height/2), room_height - (sprite_height/2));

	//update coords
	buffer_seek(global.buffer, buffer_seek_start, 0);
	buffer_write(global.buffer, buffer_u8, message_player_move);
	buffer_write(global.buffer, buffer_u32, global.playerid);
	buffer_write(global.buffer, buffer_f32, x);
	buffer_write(global.buffer, buffer_f32, y);
	network_send_packet(obj_client_controller.socket, global.buffer, buffer_tell(global.buffer));
}