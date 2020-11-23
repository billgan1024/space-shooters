if(paused){
    draw_set_colour(c_black);
    draw_set_alpha(0.5);
    draw_rectangle(0, 0, room_width, room_height, false);
    draw_set_alpha(1);
    draw_set_colour(c_white);
    draw_set_font(fnt_large);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
    draw_text(__view_get(e__VW.XView, 0) + 1280, __view_get(e__VW.YView, 0) + 360, "Game Paused");
}

