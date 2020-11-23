if(y >= 0 - (sprite_height/2) and canfire)
{
	if(global.soundfx) audio_play_sound(snd_laser2, 0, false);
	
	b1 = instance_create_layer(x, y, "Bullets", obj_bullet_red);
	if(instance_exists(obj_ship_parent))
	{
		b1.direction = point_direction(x, y, obj_ship_parent.x, obj_ship_parent.y);
	}
	b1.image_angle = direction - 90;
	
	b2 = instance_create_layer(x, y, "Bullets", obj_bullet_red);
	if(instance_exists(obj_ship_parent))
	{
		b2.direction = point_direction(x, y, obj_ship_parent.x, obj_ship_parent.y) - 20;
	}
	else
	{
		b2.direction = 250;
	}
	b2.image_angle = direction - 90;
	
	b3 = instance_create_layer(x, y, "Bullets", obj_bullet_red);
	if(instance_exists(obj_ship_parent))
	{
		b3.direction = point_direction(x, y, obj_ship_parent.x, obj_ship_parent.y) + 20;
	}
	else
	{
		b3.direction = 290;
	}
	b3.image_angle = direction - 90;
}
alarm[0] = 60;
