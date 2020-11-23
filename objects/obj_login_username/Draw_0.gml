draw_set_font(fnt_menu2);
draw_set_colour(c_white);
draw_sprite(sprite_index, image_index, x, y);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x, y - 70, "Username");
draw_set_colour(c_black);

if(blink and selected)
{
	draw_text(x, y + 8, txt);
	draw_sprite(spr_spacer, -1, x + (string_width(txt)/2), y);
}
else
{
	draw_text(x, y + 8, txt);
}