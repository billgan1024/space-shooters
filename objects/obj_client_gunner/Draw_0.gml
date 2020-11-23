if(image_alpha == 1)
{
	draw_sprite_ext(spr_jets, -1, x - 61, y + (sprite_height/2) - 12, 1, wave(0.7, 1.1, 0.5, 0, ct), 0, c_white, 1);
	draw_sprite_ext(spr_jets, -1, x + 61, y + (sprite_height/2) - 12, 1, wave(0.7, 1.1, 0.5, 0, ct), 0, c_white, 1);
}
draw_self();
if(image_alpha == 1)
{
	draw_set_font(fnt_menu2);
	draw_set_colour(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(x, y - (sprite_height/2) - 25, global.playername);
	draw_text(x, y - (sprite_height/2) - 65, text);
}

if(dead)
{
draw_set_colour(c_white);
draw_set_font(fnt_space);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(__view_get(e__VW.XView, 0) + 1280, __view_get(e__VW.YView, 0) + 360, "You died!");
}

