if(mouse_over() and visible)
{
	if(mouse_x + 40 + sprite_get_width(info_reflect) > room_width)
	{
		if(mouse_y + sprite_get_height(info_reflect) > room_height)
		{
			draw_sprite(info_reflect, -1, mouse_x - 40 - sprite_get_width(info_reflect), mouse_y - sprite_get_height(info_reflect));
		}
		else
		{
			draw_sprite(info_reflect, -1, mouse_x - 40 - sprite_get_width(info_reflect), mouse_y);
		}
	}
	else
	{
		if(mouse_y + sprite_get_height(info_reflect) > room_height)
		{
			draw_sprite(info_reflect, -1, mouse_x + 40, mouse_y - sprite_get_height(info_reflect));
		}
		else
		{
			draw_sprite(info_reflect, -1, mouse_x + 40, mouse_y);
		}
	}

}