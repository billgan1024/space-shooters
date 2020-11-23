switch(global.gameState)
{
	case state.Menu:
		switch(text)
		{
			case "Quit":
				if(global.soundfx) audio_play_sound(snd_blip, 0, false);
				game_end();
			break;
		}
	break;
	
	case state.ServerMenu:
		switch(text)
		{
			case "Leave Server":
				if(global.soundfx) audio_play_sound(snd_blip, 0, false);
				with(obj_client_controller) instance_destroy();
				global.gameState = state.PlaySelect;
			break;
		}
	break;
	
	case state.ServerLobby:
		switch(text)
		{
			case "Leave Server":
				if(global.soundfx) audio_play_sound(snd_blip, 0, false);
				global.gameState = state.Menu;
				with(obj_client_controller) instance_destroy();
			break;
		}
	break;
	
	case state.PlaySelect:
		switch(text)
		{
			case "Back":
				if(global.soundfx) audio_play_sound(snd_blip, 0, false);
				global.gameState = state.Menu;
			break;
		}
	break;
	
	case state.Options:
		switch(text)
		{
			case "Back":
				if(global.soundfx) audio_play_sound(snd_blip, 0, false);
				global.gameState = state.Menu;
			break;
		}
	break;
	
	case state.Credits:
		switch(text)
		{
			case "Back":
				if(global.soundfx) audio_play_sound(snd_blip, 0, false);
				global.gameState = state.Options;
			break;
		}
	break;
	
	case state.Ship:
		switch(text)
		{
			case "Back":
				if(global.soundfx) audio_play_sound(snd_blip, 0, false);
				global.gameState = state.Menu;
			break;
		}
	break;
	
	case state.Game:
		switch(text)
		{
			case "Main Menu":
				if(global.soundfx) audio_play_sound(snd_blip, 0, false);
				global.gameState = state.Menu;
				scr_destroy_particles();
				room_goto(rm_menu);
			break;
		}
	break;
	
	case state.Multiplayer:
		switch(text)
		{
			case "Leave Server":
				if(global.soundfx) audio_play_sound(snd_blip, 0, false);
				global.gameState = state.Menu;
				scr_destroy_particles();
				room_goto(rm_menu);
				with(obj_client_controller) instance_destroy();
			break;
		}
	break;
	
	case state.End:
		switch(text)
		{
			case "Main Menu":
				if(global.soundfx) audio_play_sound(snd_blip, 0, false);
				global.gameState = state.Menu;
				scr_destroy_particles();
				room_goto(rm_menu);
			break;
		}
	break;
}