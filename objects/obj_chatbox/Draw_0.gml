draw_set_font(fnt_menu2);
draw_set_colour(c_white);
if(selected)
{
	draw_sprite(sprite_index, image_index, x, y);
}
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
if(selected)
{
	draw_text(x - 260, y - 70, "Chat");
}
draw_set_colour(c_black);

if(selected)
{
	if(blink)
	{
		draw_text(x - 260, y + 8, txt);
		draw_sprite(spr_spacer, -1, x - 260 + (string_width(txt)), y);
	}
	else
	{
		draw_text(x - 260, y + 8, txt);
	}
}