if(mouse_over() and visible)
{
	if(mouse_x + 40 + sprite_get_width(info_seeker) > __view_get(e__VW.XView, 0) + 2560)
	{
		if(mouse_y + sprite_get_height(info_seeker) > __view_get(e__VW.YView, 0) + 1440)
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
		if(mouse_y + sprite_get_height(info_seeker) > __view_get(e__VW.YView, 0) + 1440)
		{
			draw_sprite(info_seeker, -1, mouse_x + 40, mouse_y - sprite_get_height(info_seeker));
		}
		else
		{
			draw_sprite(info_seeker, -1, mouse_x + 40, mouse_y);
		}
	}

}
