draw_self();
draw_set_alpha(alpha);
draw_healthbar(x - (sprite_width/2), y - (sprite_height/2) - 50, x + (sprite_width/2), y - (sprite_height/2) - 25, (displaylife / lifemax) * 100, c_black, c_red, make_colour_rgb(0, 204, 0), 0, true, true);
draw_set_alpha(1);
if(stunned)
{
	draw_sprite(spr_stun, stun, x, y);
}