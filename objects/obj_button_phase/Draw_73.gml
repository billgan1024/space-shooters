if(mouse_over() and visible)
{
	if(mouse_x + 40 + sprite_get_width(info_phase) > room_width)
	{
		if(mouse_y + sprite_get_height(info_phase) > room_height)
		{
			draw_sprite(info_phase, -1, mouse_x - 40 - sprite_get_width(info_phase), mouse_y - sprite_get_height(info_phase));
		}
		else
		{
			draw_sprite(info_phase, -1, mouse_x - 40 - sprite_get_width(info_phase), mouse_y);
		}
	}
	else
	{
		if(mouse_y + sprite_get_height(info_phase) > room_height)
		{
			draw_sprite(info_phase, -1, mouse_x + 40, mouse_y - sprite_get_height(info_phase));
		}
		else
		{
			draw_sprite(info_phase, -1, mouse_x + 40, mouse_y);
		}
	}

}