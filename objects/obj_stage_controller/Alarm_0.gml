if(instance_exists(obj_button_trimissiles) or instance_exists(obj_button_seeker) or instance_exists(obj_button_reflect) or instance_exists(obj_button_phase) or instance_exists(obj_button_warp) or instance_exists(obj_button_dodgeroll) or instance_exists(obj_button_emp))
{
	alarm[0] = 1;
}
else if(instance_exists(obj_enemy))
{
	alarm[0] = 1;
}
else
{
	if(global.soundfx) audio_play_sound(snd_levelup, 0, false);
	global.stage++;
	canscore = true;
	with(obj_stageinfo) instance_destroy();
	instance_create_layer(0, 0, "UI", obj_stageinfo);
	instance_create_layer(-1500, -1500, "Enemies", obj_enemy_spawner);
	switch(global.stage)
	{
		case 2:
			with(obj_button_help) instance_destroy();
			switch(global.class)
			{
				case 1:
					instance_create_layer(80, 1240, "UI", obj_button_trimissiles);
					instance_create_layer(80, 1360, "UI", obj_button_seeker);
					instance_create_layer(80, 1140, "UI", obj_downarrow);
				break;
				
				case 2:
					instance_create_layer(80, 1240, "UI", obj_button_cannons);
					instance_create_layer(80, 1140, "UI", obj_downarrow);
				break;
			}
		break;
		
		case 4:
			switch(global.class)
				{
					case 1:
						instance_create_layer(80, 1140, "UI", obj_downarrow);
						instance_create_layer(80, 1240, "UI", obj_button_reflect);
						instance_create_layer(80, 1360, "UI", obj_button_phase);
					break;
					
					case 2:
					break;
				}
		break;
			
		case 7: 
			switch(global.class)
			{
				case 1:
					instance_create_layer(80, 1140, "UI", obj_downarrow);
					instance_create_layer(80, 1240, "UI", obj_button_warp);
					instance_create_layer(80, 1360, "UI", obj_button_dodgeroll);
				break;
				
				case 2:
				break;
			}
		break;
		
		case 9:
			switch(global.class)
			{
				case 1:
					instance_create_layer(80, 1140, "UI", obj_downarrow);
					instance_create_layer(80, 1240, "UI", obj_button_emp);
				break;
				
				case 2:
				break;
			}
		break;
		
		case 12:
			switch(global.class)
			{
				case 1:
					instance_create_layer(80, 1240, "UI", obj_upgrade_trimissiles);
					with(instance_create_layer(80, 1360, "UI", obj_upgrade_trimissiles)) upgrade = 2;
					instance_create_layer(80, 1140, "UI", obj_downarrow);
				break;
				
				case 2:
				break;
			}
		break;
	}
}
