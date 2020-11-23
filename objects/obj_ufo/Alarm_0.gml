if(y >= 0 - (sprite_height/2) and canfire and shoot < 4)
{
	if(global.soundfx) audio_play_sound(snd_laser2, 0, false);
	
	s1 = instance_create_layer(x, y, "Bullets", obj_spike_green);
	s1.spread = 5;
	s1.speed = 32;
	shoot++;
	alarm[0] = 6;
}
else
{
	shoot = 0;
	if(percent_chance(30) and canfire)
	{
		boss_relocate();	
	}
	alarm[0] = 60;
}