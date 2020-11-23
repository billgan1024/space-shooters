if(sprite_index == spr_shieldload_red)
{
	sprite_index = spr_shield_red;
	alarm[0] = 180;
}
else if(sprite_index == spr_shieldunload_red)
{
	instance_destroy();	
}