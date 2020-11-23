if(sprite_index == spr_phase_load)
{
	sprite_index = spr_phase;
	movespeed = 13;
	alarm[5] = 96;
}
else if(sprite_index == spr_phase_unload)
{
	invulnerable = false;
	movespeed = 10;
	sprite_index = spr_gunner;	
}