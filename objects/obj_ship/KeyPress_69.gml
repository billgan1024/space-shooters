if(reflect and icon_reflect.cooldown == 0 and image_xscale == 1)
{
	icon_reflect.cooldown = 10;
	if(global.soundfx) audio_play_sound(snd_shieldup, 0, false);
	instance_create_layer(x, y - 32, "Items", obj_reflectshield);
}
else if(phase and icon_phase.cooldown == 0 and image_xscale == 1)
{
	if(!isrolling)
	{
		icon_phase.cooldown = 6;
		if(global.soundfx) audio_play_sound(snd_shieldup, 0, false);
		if(global.particles) effect_create_above(ef_ring, x, y, 2, c_lime);
		invulnerable = true;
		movespeed = 5;
		sprite_index = spr_phase_load;
	}
}
