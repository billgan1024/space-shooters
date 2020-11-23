if(instance_exists(obj_ship))
{
	if(global.soundfx) audio_play_sound(snd_blip, 0, false);
	obj_ship.trimissilesupgrade = upgrade;
	with(obj_upgrade_trimissiles) instance_destroy();
	with(obj_downarrow) instance_destroy();
}