if(instance_exists(obj_ship_parent))
{
	if(obj_ship_parent.y < room_height/2)
	{
		if(global.soundfx) audio_play_sound(snd_launch, 0, false);	
		instance_create_layer(x, y, "Bullets", obj_missile_green);
	}
}

alarm[7] = 30;