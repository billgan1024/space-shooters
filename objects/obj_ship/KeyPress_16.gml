if(warp and icon_warp.cooldown == 0)
{
	warptarget = !warptarget;
	if(global.soundfx) audio_play_sound(snd_mouseover, 0, false);
}
else if(dodgeroll)
{
	if(!invulnerable and icon_dodgeroll.resource >= 240)
	{
		icon_dodgeroll.resource -= 240;
		if(global.soundfx) audio_play_sound(snd_whoosh, 0, false);
		//direction = point_direction(x, y, mouse_x, mouse_y);
		switch(sign(hsp))
		{
			case 0:
			switch(sign(vsp))
			{
				case 0: direction = 90;
				break;
				
				case 1: direction = 270;
				break;
				
				case -1: direction = 90;
				break;
			}
			break;
			
			case 1:
			switch(sign(vsp))
			{
				case 0: direction = 0;
				break;
				
				case 1: direction = 330;
				break;
				
				case -1: direction = 30;
				break;
			}
			break;
			
			case -1:
			switch(sign(vsp))
			{
				case 0: direction = 180;
				break;
				
				case 1: direction = 210;
				break;
				
				case -1: direction = 150;
				break;
			}
			break;
		}
		speed = 40;
		invulnerable = true;
		isrolling = true;
		canshoot = false;
		alarm[0] = 20;
		fric = 2;
		alarm[7] = 20;
	}
}