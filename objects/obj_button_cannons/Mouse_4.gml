if(instance_exists(obj_sharpshooter))
{
	if(global.soundfx) audio_play_sound(snd_blip, 0, false);
	obj_sharpshooter.cannons = true;
	instance_destroy();
	//with(obj_button_seeker) instance_destroy();
	with(obj_downarrow) instance_destroy();
}