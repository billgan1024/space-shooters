if(visible)
{
if(cooldown > 0)
{
	draw_sprite_ext(sprite_index, image_index, __view_get(e__VW.XView, 0) + x, __view_get(e__VW.YView, 0) + y, image_xscale, image_yscale, image_angle, c_white, 0.5);
}
else
{
	draw_sprite_ext(sprite_index, image_index, __view_get(e__VW.XView, 0) + x, __view_get(e__VW.YView, 0) + y, image_xscale, image_yscale, image_angle, c_white, 1);
}

draw_sprite(spr_rmb, -1, __view_get(e__VW.XView, 0) + x, __view_get(e__VW.YView, 0) + y - 60);

draw_set_font(fnt_medium);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_colour(c_white);

if(cooldown > 0)
{
	draw_text(__view_get(e__VW.XView, 0) + x, __view_get(e__VW.YView, 0) + y, ceil(cooldown));
}
}