if(count < 36)
{
	if(global.soundfx) audio_play_sound(snd_laser3, 0, false);
	var b = instance_create_layer(x, y, "Bullets", obj_bullet_red);
	b.direction = wavedir;
	b.speed = 35;
	if(wavedir == 180)
	{
		wavemove = 1;	
	}
	if(wavedir == 270)
	{
		if(xpos == sprite_width)
		{
			wavemove = 1;
		}
		else if(xpos == room_width - sprite_width)
		{
			wavemove = -1;	
		}
	}
	else if(wavedir == 360)
	{
		wavemove = -1;
	}
	wavedir += (wavemove * 10);
	count++;
	alarm[3] = 4;
}
else
{
	count = 0;
	canfire = true;
	alarm[2] = (irandom(2) + 3) * 60;
}