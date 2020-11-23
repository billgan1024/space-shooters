switch(global.gameState)
{
	case state.Menu:
		switch(text)
		{
			case "Options":
				if(global.soundfx) audio_play_sound(snd_blip, 0, false);
				global.gameState = state.Options;
			break;
		}
	break;
	
	case state.PlaySelect:
		switch(text)
			{
				case "Join Server":
					if(global.soundfx) audio_play_sound(snd_blip, 0, false);
					client_show_notification("Connecting...", 1280 + view_playselectx, 1000 + view_playselecty);
					alarm[0] = 1;
				break;
			}
	break;
	
	case state.Options:
		switch(text)
		{
			case "Credits":
				if(global.soundfx) audio_play_sound(snd_blip, 0, false);
				global.gameState = state.Credits;
			break;
		}
	break;
}