switch(global.gameState)
{
	case state.Menu:
		switch(text)
		{
			case "Let's Go!":
				ini_open("data.ini");
				ini_write_real("settings", "update", false);
				ini_close();
				room_goto(rm_menu);
			break;
			
			case "Ship":
				if(global.soundfx) audio_play_sound(snd_blip, 0, false);
				global.gameState = state.Ship;
			break;
		}
	break;
	
	case state.ServerMenu:
		switch(text)
		{
			case "Register":
				if(global.soundfx) audio_play_sound(snd_blip, 0, false);
				if(obj_textbox_username.txt == "")
				{
					client_show_notification("A username is required.", 1280, 1200);
					exit;
				}
			
				if(string_length(obj_textbox_username.txt) < 3 or string_length(obj_textbox_username.txt) > 16)
				{
					client_show_notification("Username must be between 3-16 characters long.", 1280, 1200);
					exit;
				}
				
				for(var i = 1; i <= string_length(obj_textbox_username.txt); i++)
				{
					if string_pos(string_char_at(obj_textbox_username.txt, i), "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_") == 0 {
					    client_show_notification("Username cannot contain any special characters.", 1280, 1200);
						exit;
					}
				}
			
				if(obj_textbox_password1.txt == "")
				{
					client_show_notification("A password is required.", 1280, 1200);
					exit;
				}
			
				if(obj_textbox_password2.txt == "")
				{
					client_show_notification("Password confirmation is required.", 1280, 1200);
					exit;
				}

				if(obj_textbox_password1.txt == obj_textbox_password2.txt)
				{
					//register
					var playerUsername = obj_textbox_username.txt;
					var playerPassword = obj_textbox_password1.txt;
					var playerPasswordHash = sha1_string_unicode(playerPassword);
				
					buffer_seek(global.buffer, buffer_seek_start, 0);
					buffer_write(global.buffer, buffer_u8, message_type_register);
					buffer_write(global.buffer, buffer_u32, global.playerid);
					buffer_write(global.buffer, buffer_string, playerUsername);
					buffer_write(global.buffer, buffer_string, playerPasswordHash);
					network_send_packet(obj_client_controller.socket, global.buffer, buffer_tell(global.buffer));
				}
				else
				{
					client_show_notification("Passwords do not match.", 1280, 1200);
					exit;
				}
			break;
			
			case "Login":
				if(global.soundfx) audio_play_sound(snd_blip, 0, false);
				if(obj_login_username.txt == "")
				{
					client_show_notification("A username is required.", 1280, 1200);
					exit;
				}
			
				if(obj_login_password1.txt == "")
				{
					client_show_notification("A password is required.", 1280, 1200);
					exit;
				}
			
				//login
				var playerUsername = obj_login_username.txt;
				var playerPassword = obj_login_password1.txt;
				var playerPasswordHash = sha1_string_unicode(playerPassword);
				
				buffer_seek(global.buffer, buffer_seek_start, 0);
				buffer_write(global.buffer, buffer_u8, message_type_login);
				buffer_write(global.buffer, buffer_u32, global.playerid);
				buffer_write(global.buffer, buffer_string, playerUsername);
				buffer_write(global.buffer, buffer_string, playerPasswordHash);
				network_send_packet(obj_client_controller.socket, global.buffer, buffer_tell(global.buffer));
			break;
		}
	break;
	
	case state.PlaySelect:
		switch(text)
		{
			case "Story Mode":
			break;
		}
	break;
	
	case state.Options:
		switch(text)
		{
			case "Fullscreen: On":
				if(global.soundfx) audio_play_sound(snd_blip, 0, false);
				text = "Fullscreen: Off";
				ini_open("data.ini");
				ini_write_real("settings", "fullscreen", false);
				ini_close();
				global.fullscreen = false;
				window_set_fullscreen(false);
				window_set_size(display_get_height() / 3 * 4, display_get_height() / 4 * 3);
			break;
			
			case "Fullscreen: Off":
				if(global.soundfx) audio_play_sound(snd_blip, 0, false);
				text = "Fullscreen: On";
				ini_open("data.ini");
				ini_write_real("settings", "fullscreen", true);
				ini_close();
				global.fullscreen = true;
				window_set_fullscreen(true);
			break;
			
			case "Particles: On":
				if(global.soundfx) audio_play_sound(snd_blip, 0, false);
				text = "Particles: Off";
				ini_open("data.ini");
				ini_write_real("settings", "particles", false);
				ini_close();
				global.particles = false;
			break;
			
			case "Particles: Off":
				if(global.soundfx) audio_play_sound(snd_blip, 0, false);
				text = "Particles: On";
				ini_open("data.ini");
				ini_write_real("settings", "particles", true);
				ini_close();
				global.particles = true;
			break;
		}
	break;
	
	case state.Game:
		switch(text)
		{
			case "Back to Game":
				if(global.soundfx) audio_play_sound(snd_unpause, 0, false);
				obj_pause.paused = false;
				scr_activate_entities();
				scr_unstore_variables();
				with(obj_pause.b1) instance_destroy();
                with(obj_pause.b2) instance_destroy();
			break;
		}
	break;
	
	case state.Multiplayer:
		switch(text)
		{
			case "Back to Game":
				if(global.soundfx) audio_play_sound(snd_unpause, 0, false);
				obj_pause.paused = false;
				with(obj_pause.b1) instance_destroy();
                with(obj_pause.b2) instance_destroy();
			break;
			
			case "Respawn":
				if(global.soundfx) audio_play_sound(snd_blip, 0, false);
				buffer_seek(global.buffer, buffer_seek_start, 0);
				buffer_write(global.buffer, buffer_u8, message_player_respawn);
				buffer_write(global.buffer, buffer_u32, global.playerid);
				network_send_packet(obj_client_controller.socket, global.buffer, buffer_tell(global.buffer));
			break;
		}
	break;
	
	case state.End:
		switch(text)
		{
			case "Retry":
				if(global.soundfx) audio_play_sound(snd_blip, 0, false);
				global.gameState = state.Game;
				scr_destroy_particles();
				room_restart();
			break;
		}
	break;
}