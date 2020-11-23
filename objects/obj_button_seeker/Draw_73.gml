if(mouse_over() and visible)
{
	if(mouse_x + 40 + sprite_get_width(info_seeker) > room_width)
	{
		if(mouse_y + sprite_get_height(info_seeker) > room_height)
		{
			draw_sprite(info_seeker, -1, mouse_x - 40 - sprite_get_width(info_seeker), mouse_y - sprite_get_height(info_seeker));
		}
		else
		{
			draw_sprite(info_seeker, -1, mouse_x - 40 - sprite_get_width(info_seeker), mouse_y);
		}
	}
	else
	{
		if(mouse_y + sprite_get_height(info_seeker) > room_height)
		{
			draw_sprite(info_seeker, -1, mouse_x + 40, mouse_y - sprite_get_height(info_seeker));
		}
		else
		{
			draw_sprite(info_seeker, -1, mouse_x + 40, mouse_y);
		}
	}

}