draw_set_colour(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_alpha(alpha);
if(fade){
	draw_set_font(fnt_large);
	draw_text(__view_get(e__VW.XView, 0) + 1280, __view_get(e__VW.YView, 0) + 360, "Stage " + string(global.stage));

	draw_set_font(fnt_space);
	switch(global.stage)
	{
		case 2: draw_text(__view_get(e__VW.XView, 0) + 1280, __view_get(e__VW.YView, 0) + 480, "A new ability is available!");
		break;
	
		case 4: draw_text(__view_get(e__VW.XView, 0) + 1280, __view_get(e__VW.YView, 0) + 480, "A new ability is available!");
		break;
		
		case 5: draw_text(__view_get(e__VW.XView, 0) + 1280, __view_get(e__VW.YView, 0) + 480, "Mini-boss incoming!");
		break;
	
		case 7: draw_text(__view_get(e__VW.XView, 0) + 1280, __view_get(e__VW.YView, 0) + 480, "A new ability is available!");
		break;
		
		case 9: draw_text(__view_get(e__VW.XView, 0) + 1280, __view_get(e__VW.YView, 0) + 480, "An ultimate ability is available!");
		break;
	
		case 10: draw_text(__view_get(e__VW.XView, 0) + 1280, __view_get(e__VW.YView, 0) + 480, "Boss incoming!");
		break;
		
		case 12: draw_text(__view_get(e__VW.XView, 0) + 1280, __view_get(e__VW.YView, 0) + 480, "A new upgrade is available!");
		break;
	}
}else
{
	draw_set_font(fnt_space);
	draw_text(__view_get(e__VW.XView, 0) + 1280, __view_get(e__VW.YView, 0) + 360, "Game Over");
	draw_set_font(fnt_menu2);
	draw_text(__view_get(e__VW.XView, 0) + 1280, __view_get(e__VW.YView, 0) + 480, string_hash_to_newline("You died!#Score: " + string(score)));
}
draw_set_alpha(1);