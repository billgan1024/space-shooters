if(mouse_over() and visible)
{
	if(mouse_x + 40 + sprite_get_width(info_warp) > room_width)
	{
		if(mouse_y + sprite_get_height(info_warp) > room_height)
		{
			draw_sprite(info_warp, -1, mouse_x - 40 - sprite_get_width(info_warp), mouse_y - sprite_get_height(info_warp));
		}
		else
		{
			draw_sprite(info_warp, -1, mouse_x - 40 - sprite_get_width(info_warp), mouse_y);
		}
	}
	else
	{
		if(mouse_y + sprite_get_height(info_warp) > room_height)
		{
			draw_sprite(info_warp, -1, mouse_x + 40, mouse_y - sprite_get_height(info_warp));
		}
		else
		{
			draw_sprite(info_warp, -1, mouse_x + 40, mouse_y);
		}
	}

}