if(y >= 0 - (sprite_height/2) and !stunned)
{
	if(global.soundfx) audio_play_sound(snd_laser2, 0, false);
	instance_create_layer(x, y, "Bullets", obj_bullet_orange);
}
alarm[0] = 60;
