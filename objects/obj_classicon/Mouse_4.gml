switch(sprite_index)
{
	case spr_gunner:
	if(global.class != 1)
	{
		if(global.soundfx) audio_play_sound(snd_blip, 0, false);
		ini_open("data.ini");
		ini_write_real("profile", "class", 1);
		ini_close();
		global.class = 1;
	}
	break;
	
	case spr_sharpshooter:
	if(global.class != 2)
	{
		if(global.soundfx) audio_play_sound(snd_blip, 0, false);
		ini_open("data.ini");
		ini_write_real("profile", "class", 2);
		ini_close();
		global.class = 2;
	}
	break;
}