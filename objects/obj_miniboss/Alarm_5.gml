if(count < 10)
{
	if(global.soundfx) audio_play_sound(snd_laser3, 0, false);
	instance_create_layer(x, y, "Bullets", obj_spike_green);
	count++;
	alarm[5] = 8;
}
else
{
	candodge = true;
	canfire = true;
	count = 0;
	alarm[4] = (irandom(2) + 14) * 60;
}