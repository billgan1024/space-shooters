if(instance_exists(obj_ship))
{
	if(global.soundfx) audio_play_sound(snd_blip, 0, false);
	obj_ship.dodgeroll = true;
	instance_destroy();
	with(obj_downarrow) instance_destroy();
	with(obj_button_warp) instance_destroy();
}