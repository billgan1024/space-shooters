if(visible)
{
if(resource < 240)
{
	draw_sprite_ext(sprite_index, image_index, __view_get(e__VW.XView, 0) + x, __view_get(e__VW.YView, 0) + y, image_xscale, image_yscale, image_angle, c_white, 0.5);
}
else
{
	draw_sprite_ext(sprite_index, image_index, __view_get(e__VW.XView, 0) + x, __view_get(e__VW.YView, 0) + y, image_xscale, image_yscale, image_angle, c_white, 1);
}

draw_set_font(fnt_medium);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_colour(c_white);

draw_set_font(fnt_main);
draw_text(__view_get(e__VW.XView, 0) + x, __view_get(e__VW.YView, 0) + y - 76, "SHIFT");
draw_healthbar(__view_get(e__VW.XView, 0) + x - (sprite_width/2), __view_get(e__VW.YView, 0) + y - 115, __view_get(e__VW.XView, 0) + x + (sprite_width/2), __view_get(e__VW.YView, 0) + y - 105, (resource/maxres) * 100, c_gray, c_white, c_white, 0, true, false);
}
