if(mouse_over() and visible)
{
	if(mouse_x + 40 + sprite_get_width(info_dodgeroll) > __view_get(e__VW.XView, 0) + 2560)
	{
		if(mouse_y + sprite_get_height(info_dodgeroll) > __view_get(e__VW.YView, 0) + 1440)
		{
			draw_sprite(info_dodgeroll, -1, mouse_x - 40 - sprite_get_width(info_dodgeroll), mouse_y - sprite_get_height(info_dodgeroll));
		}
		else
		{
			draw_sprite(info_dodgeroll, -1, mouse_x - 40 - sprite_get_width(info_dodgeroll), mouse_y);
		}
	}
	else
	{
		if(mouse_y + sprite_get_height(info_dodgeroll) > __view_get(e__VW.YView, 0) + 1440)
		{
			draw_sprite(info_dodgeroll, -1, mouse_x + 40, mouse_y - sprite_get_height(info_dodgeroll));
		}
		else
		{
			draw_sprite(info_dodgeroll, -1, mouse_x + 40, mouse_y);
		}
	}

}