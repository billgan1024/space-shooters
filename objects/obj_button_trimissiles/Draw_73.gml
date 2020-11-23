if(mouse_over() and visible)
{
	if(mouse_x + 40 + sprite_get_width(info_trimissiles) > room_width)
	{
		if(mouse_y + sprite_get_height(info_trimissiles) > room_height)
		{
			draw_sprite(info_trimissiles, -1, mouse_x - 40 - sprite_get_width(info_trimissiles), mouse_y - sprite_get_height(info_trimissiles));
		}
		else
		{
			draw_sprite(info_trimissiles, -1, mouse_x - 40 - sprite_get_width(info_trimissiles), mouse_y);
		}
	}
	else
	{
		if(mouse_y + sprite_get_height(info_trimissiles) > room_height)
		{
			draw_sprite(info_trimissiles, -1, mouse_x + 40, mouse_y - sprite_get_height(info_trimissiles));
		}
		else
		{
			draw_sprite(info_trimissiles, -1, mouse_x + 40, mouse_y);
		}
	}

}