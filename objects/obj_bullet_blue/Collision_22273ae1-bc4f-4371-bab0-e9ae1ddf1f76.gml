instance_destroy();
if(global.particles)
{
	var hit = instance_create_layer(x, y, "Particles", obj_bullet_blue_hit);
	hit.image_angle = image_angle;
}
if(global.soundfx) audio_play_sound(snd_attack2, 0, false);

other.life -= damage;

if(other.life > 0)
{
	other.alpha = 1;
}
other.revealed = true;
other.alarm[1] = 180;
if(other.image_index == 0)
{
	other.image_index = 1;
	other.alarm[11] = 5;
}