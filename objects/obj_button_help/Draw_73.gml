if(mouse_over() and visible)
{
	if(mouse_x + 40 + sprite_get_width(info_help) > room_width)
	{
		if(mouse_y + sprite_get_height(info_help) > room_height)
		{
			draw_sprite(info_help, -1, mouse_x - 40 - sprite_get_width(info_help), mouse_y - sprite_get_height(info_help));
		}
		else
		{
			draw_sprite(info_help, -1, mouse_x - 40 - sprite_get_width(info_help), mouse_y);
		}
	}
	else
	{
		if(mouse_y + sprite_get_height(info_help) > room_height)
		{
			draw_sprite(info_help, -1, mouse_x + 40, mouse_y - sprite_get_height(info_help));
		}
		else
		{
			draw_sprite(info_help, -1, mouse_x + 40, mouse_y);
		}
	}

}