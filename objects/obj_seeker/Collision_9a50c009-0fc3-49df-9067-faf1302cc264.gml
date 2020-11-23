var xpos = x;
var ypos = y;
var dir = direction;
with(obj_view_controller)
{
	screen_shake_init_ext(8,8,0.5,0.5,0);	
}
instance_destroy();
if(global.particles) 
{
	var effect = instance_create_layer(x, y, "Particles", obj_effect);
	effect.sprite_index = spr_explosion;
}
if (global.soundfx) audio_play_sound(snd_explosion2, 0, false);

with(obj_enemy)
{
	if(point_distance(x, y, xpos, ypos)) <= sprite_get_height(spr_explosion)
	{
		if(instance_exists(obj_ship))
		{
			life -= obj_ship.seekerdamage;
		}
		
		if(life > 0)
		{
			alpha = 1;
		}
		revealed = true;
		alarm[1] = 180;
		direction = point_direction(xpos, ypos, x, y);
		speed += 20;
		if(image_index == 0 and !hit)
		{
			image_index = 1;
			alarm[11] = 5;
		}
	}
}
