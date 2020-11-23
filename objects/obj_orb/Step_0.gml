part_emitter_region(global.partsysbelow, partemit_pixel, x - 50, x + 50, y - 50, y + 50, ps_shape_ellipse, ps_distr_linear);
if(global.particles) part_emitter_stream(global.partsysbelow, partemit_pixel, part_pixel, -3);
if(x <= sprite_width/2)
{
	hspeed *= -1;
	effect_create_above(ef_ring, 0, y, 1, c_purple);
}
else if(x >= room_width - (sprite_width/2))
{
	hspeed *= -1;
	effect_create_above(ef_ring, room_width, y, 1, c_purple);
}

if(y <= sprite_height/2)
{
	vspeed *= -1;
	effect_create_above(ef_ring, x, 0, 1, c_purple);
}else if(y >= room_height - (sprite_height/2))
{
	vspeed *= -1;	
	effect_create_above(ef_ring, x, room_height, 1, c_purple);
}