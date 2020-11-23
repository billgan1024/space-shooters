if(y >= 0 - (sprite_height/2) and !stunned)
{
	if(global.soundfx) audio_play_sound(snd_laser2, 0, false);
	b1 = instance_create_layer(x, y, "Bullets", obj_bullet_red);
	b2 = instance_create_layer(x, y, "Bullets", obj_bullet_red);
	b2.direction = 250;
	b2.image_angle = 160;
	b3 = instance_create_layer(x, y, "Bullets", obj_bullet_red);
	b3.direction = 290;
	b3.image_angle = 200;
}
alarm[0] = 60;
