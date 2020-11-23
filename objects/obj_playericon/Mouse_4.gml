switch(sprite_index)
{
	case spr_icon_green:
	if(global.playericon != 1)
	{
		if(global.soundfx) audio_play_sound(snd_blip, 0, false);
		ini_open("data.ini");
		ini_write_real("profile", "playericon", 1);
		ini_close();
		global.playericon = 1;
	}
	break;
	
	case spr_icon_blue:
	if(global.playericon != 2)
	{
		if(global.soundfx) audio_play_sound(snd_blip, 0, false);
		ini_open("data.ini");
		ini_write_real("profile", "playericon", 2);
		ini_close();
		global.playericon = 2;
	}
	break;
	
	case spr_icon_pink:
	if(global.playericon != 3)
	{
		if(global.soundfx) audio_play_sound(snd_blip, 0, false);
		ini_open("data.ini");
		ini_write_real("profile", "playericon", 3);
		ini_close();
		global.playericon = 3;
	}
	break;
	
	case spr_icon_yellow:
	if(global.playericon != 4)
	{
		if(global.soundfx) audio_play_sound(snd_blip, 0, false);
		ini_open("data.ini");
		ini_write_real("profile", "playericon", 4);
		ini_close();
		global.playericon = 4;
	}
	break;
	
	case spr_icon_beige:
	if(global.playericon != 5)
	{
		if(global.soundfx) audio_play_sound(snd_blip, 0, false);
		ini_open("data.ini");
		ini_write_real("profile", "playericon", 5);
		ini_close();
		global.playericon = 5;
	}
	break;
}