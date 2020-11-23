if(trimissiles and icon_trimissiles.cooldown == 0 and image_xscale == 1)
{
	icon_trimissiles.cooldown = 7;
	if(global.soundfx) audio_play_sound(snd_missiles, 0, false);
	m1 = instance_create_layer(x, y, "Bullets", obj_trimissile);
	m1.direction = 90;
	m1.image_angle = 0;
	m2 = instance_create_layer(x, y, "Bullets", obj_trimissile);
	m2.direction = 75;
	m2.image_angle = -15;
	m3 = instance_create_layer(x, y, "Bullets", obj_trimissile);
	m3.direction = 105;
	m3.image_angle = 15;
	missilecount = 1;
	alarm[2] = 15;
}
else if(seeker and icon_seeker.cooldown == 0 and image_xscale == 1)
{
	icon_seeker.cooldown = 9;
	if(global.soundfx) audio_play_sound(snd_launch, 0, false);
	instance_create_layer(x, y, "Bullets", obj_seeker);
}
