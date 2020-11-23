switch(sprite_index)
{
	case spr_gunner:
		if(image_alpha == 1)
		{
			draw_sprite_ext(spr_jets, -1, x - 61, y + (sprite_height/2) - 12, 1, wave(0.7, 1.1, 0.5, 0, ct), 0, c_white, 1);
			draw_sprite_ext(spr_jets, -1, x + 61, y + (sprite_height/2) - 12, 1, wave(0.7, 1.1, 0.5, 0, ct), 0, c_white, 1);
		}
	break;
	
	case spr_sharpshooter:
		if(image_alpha == 1)
		{
			draw_sprite_ext(spr_jets, -1, x - 61, y + (sprite_height/2) - 20, 1, wave(0.7, 1.1, 0.5, 0, ct), 0, c_white, 1);
			draw_sprite_ext(spr_jets, -1, x + 61, y + (sprite_height/2) - 20, 1, wave(0.7, 1.1, 0.5, 0, ct), 0, c_white, 1);
		}
	break;
}
draw_self();