if(life < lifemax/2)
{
	if(global.soundfx) audio_play_sound(snd_spawn, 0, false);
	if(life < lifemax/6)
	{
		if(global.particles) effect_create_above(ef_ring, x, y, 1, c_red);
	}
	else
	{
		if(global.particles) effect_create_above(ef_ring, x, y, 1, c_lime);
	}
	instance_create_layer(room_width/2, -83, "Enemies", obj_basic_green);
}
if(life < lifemax/6)
{
	alarm[6] = 180;	
}
else
{
	alarm[6] = 360;
}