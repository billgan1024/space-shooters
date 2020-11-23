attack = choose(1, 2, 3);
switch(attack)
{
	case 1: 
	canfire = false;
	if(global.soundfx) audio_play_sound(snd_chargeup, 0, false);
	alarm[3] = 120;
	boss_relocate();
	
	if(xpos == room_width/2)
	{
		wavedir = choose(180, 360);	
	}
	else if(xpos == sprite_width)
	{
		wavedir = choose(270, 360);
	}
	else if(xpos == room_width - sprite_width)
	{
		wavedir = choose(180, 270);
	}
	break;
	
	case 2:
	if(global.soundfx) audio_play_sound(snd_warp, 0, false);
	
	boss_relocate();
	
	canfire = false;
	alarm[4] = 60;
	instance_create_layer(x, y, "Bullets", obj_orb);
	break;
	
	case 3:
	if(global.soundfx) audio_play_sound(snd_spawn, 0, false);
	boss_relocate();
	
	if(global.particles) effect_create_above(ef_ring, x, y, 2, c_orange);
	instance_create_layer(0, 0, "Environment", obj_asteroid_wave);
	
	canfire = false;
	alarm[4] = 120;
	break;
}