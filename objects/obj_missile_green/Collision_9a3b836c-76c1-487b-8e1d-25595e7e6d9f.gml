if(other.image_xscale == 1)
{
	if(global.soundfx) audio_play_sound(snd_explosion, 0, false);
	instance_destroy();

	if(other.image_index == 0 and !other.hit)
	{
		other.image_index = 1;
		other.alarm[11] = 5;
	}
	other.regen = false;
	other.alarm[3] = 180;
		
	if(global.currenthealth < 20)
	{
		global.currenthealth = 0;
	}
	else
	{
		global.currenthealth -= 20;
	}

	if(other.speed == 0)
	{
		other.direction = direction;
		other.speed += 15;
		other.move = false;
	}
	
	if(global.combo > 3 and global.soundfx)
	{
		audio_play_sound(snd_combobreak, 0, false);	
	}
	global.combo = 0;
}