with(obj_view_controller)
{
	screen_shake_init_ext(6,6,0.2,0.2,0);	
}
instance_destroy();
if(global.particles) effect_create_above(ef_explosion, x, y, 1, c_orange);
if(global.soundfx) audio_play_sound(snd_explosion, 0, false);

if(instance_exists(obj_ship))
{
	other.life -= obj_ship.missiledamage;
}

if(other.life > 0)
{
	other.alpha = 1;
}

other.revealed = true;
other.alarm[1] = 180;
other.direction = direction;
other.speed += 10;
if(other.image_index == 0)
{
	other.image_index = 1;
	other.alarm[11] = 5;
}

