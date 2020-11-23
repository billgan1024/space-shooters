if(mouse_over() and visible)
{
	if(mouse_x + 40 + sprite_get_width(info_emp) > room_width)
	{
		if(mouse_y + sprite_get_height(info_emp) > room_height)
		{
			draw_sprite(info_emp, -1, mouse_x - 40 - sprite_get_width(info_emp), mouse_y - sprite_get_height(info_emp));
		}
		else
		{
			draw_sprite(info_emp, -1, mouse_x - 40 - sprite_get_width(info_emp), mouse_y);
		}
	}
	else
	{
		if(mouse_y + sprite_get_height(info_emp) > room_height)
		{
			draw_sprite(info_emp, -1, mouse_x + 40, mouse_y - sprite_get_height(info_emp));
		}
		else
		{
			draw_sprite(info_emp, -1, mouse_x + 40, mouse_y);
		}
	}

}