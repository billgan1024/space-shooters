if(emp and icon_emp.resource == 1000)
{
	if(!ult)
	{
		ult = true;
		alarm[8] = 15;
	}
	else
	{
		if(global.soundfx) audio_play_sound(snd_emp, 0, false);
		ult = false;
		alarm[8] = 0;
		icon_emp.resource = 0;
		with(obj_view_controller)
		{
			screen_shake_init_ext(16,16,0.7,0.7,0);		
		}
		part_emitter_burst(global.partsys, partemit_plasma, part_plasma2, 1);
		part_emitter_burst(global.partsys, partemit_plasma, part_plasma, 1);
		instance_create_layer(0, 0, "Flash", obj_flash);
		
		with(obj_enemy)
		{
			if(point_distance(x, y, obj_ship.x, obj_ship.y) <= 1024)
			{
				if(instance_exists(obj_ship))
				{
					life -= obj_ship.empdamage;
				}
		
				if(life > 0)
				{
					alpha = 1;
				}
				revealed = true;
				stunned = true;
				alarm[9] = 180;
				alarm[1] = 180;
				direction = point_direction(obj_ship.x, obj_ship.y, x, y);
				speed += 20;
				if(image_index == 0 and !hit)
				{
					image_index = 1;
					alarm[11] = 5;
				}
			}
		}
	}
}