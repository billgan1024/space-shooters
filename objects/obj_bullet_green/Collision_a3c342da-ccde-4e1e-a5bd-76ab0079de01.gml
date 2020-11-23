if(reflected)
{
	instance_destroy();
	if(global.particles) 
	{
		hit = instance_create_layer(x, y, "Particles", obj_bullet_green_hit);
		hit.image_angle = image_angle;
		hit.reflected = true;
	}
	if(global.soundfx) audio_play_sound(snd_attack2, 0, false);
	other.life -= 23;
	if(other.life > 0)
	{
		other.alpha = 1;
	}
	else
	{
		if(global.soundfx) audio_play_sound(snd_explosion, 0, false);
	}
	other.revealed = true;
	other.alarm[1] = 180;
	other.direction = direction;
	other.speed += 10;
	if(other.image_index == 0 and !other.hit)
	{
		other.image_index = 1;
		other.alarm[11] = 5;
	}
}
