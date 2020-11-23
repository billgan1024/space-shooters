if(!invulnerable)
{
	if(global.soundfx) audio_play_sound(snd_attack, 0, false);

	if(image_index == 0 and !hit)
	{
		image_index = 1;
		alarm[11] = 5;
	}
	if(global.currenthealth < 1)
	{
		global.currenthealth = 0;
	}
	else
	{
		global.currenthealth -= 1;
	}
	
	if(global.combo > 3 and global.soundfx)
	{
		audio_play_sound(snd_combobreak, 0, false);	
	}
	global.combo = 0;
}