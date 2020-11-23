switch(global.stage)
{
	case 1:
		switch(time)
		{
			case 240: instance_create_layer(room_width/2, -100, "Enemies", obj_basic_green);
			break;
			case 360: instance_create_layer(room_width/2, -100, "Enemies", obj_basic_green);
			break;
			case 480: instance_create_layer(room_width/2, -100, "Enemies", obj_basic_green);
			break;
			case 600: instance_create_layer(room_width/2, -100, "Enemies", obj_basic_green);
			break;
			case 720: instance_create_layer(room_width/2, -100, "Enemies", obj_basic_green);
			break;
			case 840: instance_create_layer(room_width/2, -100, "Enemies", obj_basic_green);
			with(obj_stage_controller)
			{
				canscore = false;	
			}
			instance_destroy();
			break;
		}
	break;
	
	case 2:
		switch(time)
		{
			case 240: instance_create_layer(room_width/2, -100, "Enemies", obj_fighter_red);
			break;
			case 360: instance_create_layer(room_width/2, -100, "Enemies", obj_basic_green);
			break;
			case 480: instance_create_layer(room_width/2, -100, "Enemies", obj_basic_green);
			break;
			case 600: instance_create_layer(room_width/2, -100, "Enemies", obj_basic_green);
			break;
			case 720: instance_create_layer(room_width/2, -100, "Enemies", obj_basic_green);
			break;
			case 840: instance_create_layer(room_width/2, -100, "Enemies", obj_fighter_red);
			break;
			case 960: instance_create_layer(room_width/2, -100, "Enemies", obj_basic_green);
			break;
			case 1080: instance_create_layer(room_width/2, -100, "Enemies", obj_basic_green);
			break;
			case 1200: var b = instance_create_layer(room_width/2, -100, "Enemies", obj_basic_green);
			b.drop = obj_healthpack;
			with(obj_stage_controller)
			{
				canscore = false;	
			}
			instance_destroy();
			break;
		}
	break;
	
	case 3:
		switch(time)
		{
			case 240: instance_create_layer(room_width/2, -100, "Enemies", obj_seeker_orange);
			break;
			case 360: instance_create_layer(room_width/2, -100, "Enemies", obj_seeker_orange);
			break;
			case 480: instance_create_layer(room_width/2, -100, "Enemies", obj_basic_green);
			break;
			case 600: instance_create_layer(room_width/2, -100, "Enemies", obj_fighter_red);
			break;
			case 720: instance_create_layer(room_width/2, -100, "Enemies", obj_basic_green);
			break;
			case 840: instance_create_layer(room_width/2, -100, "Enemies", obj_basic_green);
			break;
			case 960: instance_create_layer(room_width/2, -100, "Enemies", obj_seeker_orange);
			break;
			case 1080: instance_create_layer(room_width/2, -100, "Enemies", obj_fighter_red);
			break;
			case 1200: instance_create_layer(room_width/2, -100, "Enemies", obj_seeker_orange);
			break;
			case 1320: instance_create_layer(room_width/2, -100, "Enemies", obj_basic_green);
			break;
			case 1440: instance_create_layer(room_width/2, -100, "Enemies", obj_basic_green);
			break;
			case 1560: var b = instance_create_layer(room_width/2, -100, "Enemies", obj_basic_green);
			b.drop = obj_healthpack;
			with(obj_stage_controller)
			{
				canscore = false;	
			}
			instance_destroy();
			break;
		}
	break;
	
	case 4:
		switch(time)
		{
			case 240: instance_create_layer(room_width/2, -100, "Enemies", obj_fighter_red);
			break;
			case 360: instance_create_layer(room_width/2, -100, "Enemies", obj_basic_green);
			break;
			case 480: instance_create_layer(room_width/2, -100, "Enemies", obj_seeker_orange);
			break;
			case 600: instance_create_layer(room_width/2, -100, "Enemies", obj_seeker_orange);
			break;
			case 720: instance_create_layer(room_width/2, -100, "Enemies", obj_seeker_orange);
			break;
			case 840: instance_create_layer(room_width/2, -100, "Enemies", obj_basic_green);
			break;
			case 960: instance_create_layer(room_width/2, -100, "Enemies", obj_fighter_red);
			break;
			case 1080: instance_create_layer(room_width/2, -100, "Enemies", obj_seeker_orange);
			break;
			case 1200: instance_create_layer(room_width/2, -100, "Enemies", obj_basic_green);
			break;
			case 1320: instance_create_layer(room_width/2, -100, "Enemies", obj_seeker_orange);
			break;
			case 1440: instance_create_layer(room_width/2, -100, "Enemies", obj_basic_green);
			break;
			case 1560: var s = instance_create_layer(room_width/2, -100, "Enemies", obj_seeker_orange);
			s.drop = obj_healthpack;
			with(obj_stage_controller)
			{
				canscore = false;	
			}
			instance_destroy();
			break;
		}
	break;
	
	case 5:
		switch(time)
		{
			case 60: var b = instance_create_layer(room_width/2, -100, "Enemies", obj_miniboss);
			b.drop = obj_healthpack;
			instance_create_layer(-2560, room_height/2, "UI", obj_line);
			with(obj_stage_controller)
			{
				canscore = false;	
			}
			instance_destroy();
			break;
		}
	break;
	
	case 6:
		switch(time)
		{
			case 240: instance_create_layer(room_width/2, -100, "Enemies", obj_basic_green);
			break;
			case 360: instance_create_layer(room_width/2, -100, "Enemies", obj_fighter_red);
			break;
			case 480: instance_create_layer(room_width/2, -100, "Enemies", obj_seeker_orange);
			break;
			case 600: instance_create_layer(room_width/2, -100, "Enemies", obj_seeker_orange);
			break;
			case 720: instance_create_layer(room_width/2, -100, "Enemies", obj_basic_green);
			break;
			case 840: instance_create_layer(room_width/2, -100, "Enemies", obj_seeker_orange);
			break;
			case 960: instance_create_layer(room_width/2, -100, "Enemies", obj_fighter_red);
			break;
			case 1080: instance_create_layer(room_width/2, -100, "Enemies", obj_basic_green);
			break;
			case 1200: instance_create_layer(room_width/2, -100, "Enemies", obj_basic_green);
			break;
			case 1320: instance_create_layer(room_width/2, -100, "Enemies", obj_basic_green);
			break;
			case 1440: instance_create_layer(room_width/2, -100, "Enemies", obj_seeker_orange);
			break;
			case 1560: instance_create_layer(room_width/2, -100, "Enemies", obj_seeker_orange);
			break;
			case 1680: instance_create_layer(room_width/2, -100, "Enemies", obj_seeker_orange);
			break;
			case 1800: instance_create_layer(room_width/2, -100, "Enemies", obj_basic_green);
			break;
			case 1920: var s = instance_create_layer(room_width/2, -100, "Enemies", obj_seeker_orange);
			s.drop = obj_healthpack;
			break;
			case 2040: var b = instance_create_layer(room_width/2, -100, "Enemies", obj_basic_green);
			b.drop = obj_asteroid_wave;
			with(obj_stage_controller)
			{
				canscore = false;	
			}
			instance_destroy();
			break;
		}
	break;
		
		case 7:
		switch(time)
		{
			case 240: instance_create_layer(room_width/2, -100, "Enemies", obj_basic_green);
			break;
			case 360: instance_create_layer(room_width/2, -100, "Enemies", obj_seeker_orange);
			break;
			case 480: instance_create_layer(room_width/2, -100, "Enemies", obj_fighter_red);
			break;
			case 600: instance_create_layer(room_width/2, -100, "Enemies", obj_seeker_orange);
			break;
			case 720: instance_create_layer(room_width/2, -100, "Enemies", obj_basic_green);
			break;
			case 840: instance_create_layer(room_width/2, -100, "Enemies", obj_basic_green);
			break;
			case 960: instance_create_layer(room_width/2, -100, "Enemies", obj_basic_green);
			break;
			case 1080: var s = instance_create_layer(room_width/2, -100, "Enemies", obj_seeker_orange);
			s.drop = obj_asteroid_wave;
			break;
			case 1200: instance_create_layer(room_width/2, -100, "Enemies", obj_fighter_red);
			break;
			case 1320: instance_create_layer(room_width/2, -100, "Enemies", obj_basic_green);
			break;
			case 1440: var b = instance_create_layer(room_width/2, -100, "Enemies", obj_basic_green);
			b.drop = obj_ammopack;
			break;
			case 1560: instance_create_layer(room_width/2, -100, "Enemies", obj_basic_green);
			break;
			case 1800: var f = instance_create_layer(room_width/2, -100, "Enemies", obj_fighter_red);
			f.drop = obj_healthpack;
			break;
			case 1920: instance_create_layer(room_width/2, -100, "Enemies", obj_seeker_orange);
			break;
			case 2040: instance_create_layer(room_width/2, -100, "Enemies", obj_basic_green);
			break;
			case 2160: instance_create_layer(room_width/2, -100, "Enemies", obj_basic_green);
			break;
			case 2280: var s = instance_create_layer(room_width/2, -100, "Enemies", obj_seeker_orange);
			s.drop = obj_healthpack;
			with(obj_stage_controller)
			{
				canscore = false;	
			}
			instance_destroy();
			break;
		}
	break;
	
	case 8:
		switch(time)
		{
			case 240: instance_create_layer(room_width/2, -100, "Enemies", obj_basic_green);
			break;
			case 360: instance_create_layer(room_width/2, -100, "Enemies", obj_fighter_red);
			break;
			case 480: instance_create_layer(room_width/2, -100, "Enemies", obj_seeker_orange);
			break;
			case 510: instance_create_layer(room_width/2, -100, "Enemies", obj_fast_enemy);
			break;
			case 600: instance_create_layer(room_width/2, -100, "Enemies", obj_seeker_orange);
			break;
			case 720: instance_create_layer(room_width/2, -100, "Enemies", obj_basic_green);
			break;
			case 840: instance_create_layer(room_width/2, -100, "Enemies", obj_seeker_orange);
			break;
			case 960: instance_create_layer(room_width/2, -100, "Enemies", obj_basic_green);
			break;
			case 1080: instance_create_layer(room_width/2, -100, "Enemies", obj_basic_green);
			break;
			case 1200: instance_create_layer(room_width/2, -100, "Enemies", obj_basic_green);
			break;
			case 1260: var f = instance_create_layer(room_width/2, -100, "Enemies", obj_fast_enemy);
			f.drop = obj_ammopack;
			break;
			case 1290: instance_create_layer(room_width/2, -100, "Enemies", obj_fast_enemy);
			break;
			case 1320: instance_create_layer(room_width/2, -100, "Enemies", obj_fast_enemy);
			instance_create_layer(room_width/2, -100, "Enemies", obj_basic_green);
			break;
			case 1350: instance_create_layer(room_width/2, -100, "Enemies", obj_fast_enemy);
			break;
			case 1380: instance_create_layer(room_width/2, -100, "Enemies", obj_fast_enemy);
			break;
			case 1440: instance_create_layer(room_width/2, -100, "Enemies", obj_basic_green);
			break;
			case 1560: instance_create_layer(room_width/2, -100, "Enemies", obj_seeker_orange);
			break;
			case 1740: instance_create_layer(room_width/2, -100, "Enemies", obj_seeker_orange);
			break;
			case 1860: instance_create_layer(room_width/2, -100, "Enemies", obj_seeker_orange);
			instance_create_layer(room_width/2, -100, "Enemies", obj_fast_enemy);
			break;
			case 1890: instance_create_layer(room_width/2, -100, "Enemies", obj_fast_enemy);
			break;
			case 1920: instance_create_layer(room_width/2, -100, "Enemies", obj_fast_enemy);
			break;
			case 1930: instance_create_layer(room_width/2, -100, "Enemies", obj_basic_green);
			break;
			case 1950: instance_create_layer(room_width/2, -100, "Enemies", obj_fast_enemy);
			break;
			case 1980: instance_create_layer(room_width/2, -100, "Enemies", obj_fast_enemy);
			break;
			case 2040: instance_create_layer(room_width/2, -100, "Enemies", obj_fighter_red);
			break;
			case 2160: var s = instance_create_layer(room_width/2, -100, "Enemies", obj_seeker_orange);
			s.drop = obj_healthpack;
			with(obj_stage_controller)
			{
				canscore = false;	
			}
			instance_destroy();
			break;
		}
	break;
	
	case 9:
		switch(time)
		{
			case 240: var b = instance_create_layer(room_width/2, -100, "Enemies", obj_basic_green);
			b.r = false;
			break;
			case 270: var b = instance_create_layer(room_width/4, -100, "Enemies", obj_basic_green);
			b.r = false;
			break;
			case 300: var b = instance_create_layer(room_width/4*3, -100, "Enemies", obj_basic_green);
			b.r = false;
			break;
			case 330: var b = instance_create_layer(0, -100, "Enemies", obj_basic_green);
			b.r = false;
			break;
			case 360: var b = instance_create_layer(room_width, -100, "Enemies", obj_basic_green);
			b.r = false;
			b.drop = obj_asteroid_wave;
			break;
			case 700: instance_create_layer(room_width/2, -100, "Enemies", obj_seeker_orange);
			break;
			case 730: instance_create_layer(room_width/2, -100, "Enemies", obj_seeker_orange);
			break;
			case 760: instance_create_layer(room_width/2, -100, "Enemies", obj_seeker_orange);
			break;
			case 790: instance_create_layer(room_width/2, -100, "Enemies", obj_seeker_orange);
			break;
			case 1120: instance_create_layer(room_width/2, -100, "Enemies", obj_seeker_orange);
			break;
			case 1180: var f = instance_create_layer(room_width/2, -100, "Enemies", obj_fighter_red);
			f.drop = obj_ammopack;
			break;
			case 1240: var f = instance_create_layer(room_width/2, -100, "Enemies", obj_fighter_red);
			f.drop = obj_healthpack;
			break;
			case 1720: instance_create_layer(room_width/2, -100, "Enemies", obj_fast_enemy);
			break;
			case 1750: instance_create_layer(room_width/2, -100, "Enemies", obj_fast_enemy);
			break;
			case 1780: instance_create_layer(room_width/2, -100, "Enemies", obj_fast_enemy);
			break;
			case 1810: instance_create_layer(room_width/2, -100, "Enemies", obj_fast_enemy);
			break;
			case 1840: instance_create_layer(room_width/2, -100, "Enemies", obj_fast_enemy);
			break;
			case 1960: var b = instance_create_layer(room_width/2, -100, "Enemies", obj_basic_green);
			b.r = false;
			break;
			case 1990: var s = instance_create_layer(0, -100, "Enemies", obj_seeker_orange);
			s.r = false;
			break;
			case 2020: var s = instance_create_layer(room_width, -100, "Enemies", obj_seeker_orange);
			s.r = false;
			break;
			case 2050: var f = instance_create_layer(room_width/2, -100, "Enemies", obj_fighter_red);
			f.drop = obj_healthpack;
			with(obj_stage_controller)
			{
				canscore = false;	
			}
			instance_destroy();
			break;
		}
	break;
	
	case 10:
	switch(time)
		{
			case 60: var b = instance_create_layer(room_width/2, -100, "Enemies", obj_ufo);
			b.drop = obj_healthpack;
			with(obj_stage_controller)
			{
				canscore = false;	
			}
			instance_destroy();
			break;
		}
	break;
}
time++;