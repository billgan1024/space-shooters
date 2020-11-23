draw_self();

draw_set_colour(c_white);
if(image_xscale = 1.1)
{
	draw_set_font(fnt_menu2);
}
else
{
	draw_set_font(fnt_menu);
}
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text(x, y, text);

