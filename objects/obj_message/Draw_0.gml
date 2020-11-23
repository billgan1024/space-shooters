draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_font(font);
if(global.gameState == state.Multiplayer)
{
	draw_text_colour(__view_get(e__VW.XView, 0) + x, __view_get(e__VW.YView, 0) + y, text, colour, colour, colour2, colour2, alpha);
}
else
{
	draw_text_colour(x, y, text, colour, colour, colour2, colour2, alpha);
}
