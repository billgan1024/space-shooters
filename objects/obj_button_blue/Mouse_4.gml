switch(global.gameState)
{
	case state.Menu:
		switch(text)
		{
			case "Play":
				if(global.soundfx) audio_play_sound(snd_blip, 0, false);
				global.gameState = state.PlaySelect;
			break;
		}
	break;
	
	case state.ServerLobby:
		switch(text)
		{
			case "Join Lobby":
				global.gameState = state.Multiplayer;
				room_goto(rm_multiplayer);
			break;
		}
	break;
	
	case state.PlaySelect:
		switch(text)
		{
			case "Endless":
				if(global.soundfx) audio_play_sound(snd_blip, 0, false);
				global.gameState = state.Game;
				room_goto(rm_game);
			break;
		}
	break;
	
	case state.Options:
		switch(text)
		{
			case "Sound Effects: On":
				if(global.soundfx) audio_play_sound(snd_blip, 0, false);
				text = "Sound Effects: Off";
				ini_open("data.ini");
				ini_write_real("settings", "soundfx", false);
				ini_close();
				global.soundfx = false;
			break;
			
			case "Sound Effects: Off":
				if(global.soundfx) audio_play_sound(snd_blip, 0, false);
				text = "Sound Effects: On";
				ini_open("data.ini");
				ini_write_real("settings", "soundfx", true);
				ini_close();
				global.soundfx = true;
			break;
			
			case "Music: On":
				if(global.soundfx) audio_play_sound(snd_blip, 0, false);
				text = "Music: Off";
				ini_open("data.ini");
				ini_write_real("settings", "music", false);
				ini_close();
				global.music = false;
				audio_stop_sound(mus_main);
			break;
			
			case "Music: Off":
				if(global.soundfx) audio_play_sound(snd_blip, 0, false);
				text = "Music: On";
				ini_open("data.ini");
				ini_write_real("settings", "music", true);
				ini_close();
				global.music = true;
				audio_play_sound(mus_main, 0, true);
			break;
		}
	break;
}