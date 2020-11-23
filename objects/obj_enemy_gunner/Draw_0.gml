if(image_alpha == 1)
{
	draw_sprite_ext(spr_jets, -1, x - 61, y + (sprite_height/2) - 12, 1, wave(0.8, 1.2, 0.6, 0, ct), 0, c_white, 1);
	draw_sprite_ext(spr_jets, -1, x + 61, y + (sprite_height/2) - 12, 1, wave(0.8, 1.2, 0.6, 0, ct), 0, c_white, 1);
}
draw_self();
if(image_alpha == 1)
{
	draw_set_alpha(alpha);

	draw_healthbar(x - (sprite_width/2), y + (sprite_height/2) + 50, x + (sprite_width/2), y + (sprite_height/2) + 25, (displayhealth / 200) * 100, c_black, c_red, make_colour_rgb(0, 204, 0), 0, true, true);
	draw_set_alpha(1);

	draw_set_font(fnt_menu2);
	draw_set_colour(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(x, y - (sprite_height/2) - 25, remotePlayerName);
	draw_text(x, y - (sprite_height/2) - 65, text);
}

