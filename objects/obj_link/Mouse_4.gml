if(global.soundfx) audio_play_sound(snd_blip, 0, false);
switch(sprite_index)
{
	case spr_youtube:
	url_open("https://youtube.com/c/FormsTunes");
	break;
	
	case spr_instagram:
	url_open("https://instagram.com/formsgamestudios");
	break;
	
	case spr_website:
	url_open("https://formsgamestudios.wordpress.com");
	break;
	
	case spr_reddit:
	url_open("https://www.reddit.com/r/SpaceShooters");
	break;
}