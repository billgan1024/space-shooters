alpha = clamp(alpha + (alphadir * 0.05), 0, 1);
if(alpha == 1){
    alphadir = -1;
}else if(alpha == 0)
{
	alphadir = 1;	
}
draw_set_alpha(alpha);
draw_sprite(spr_downarrow, -1, x, y);
draw_set_alpha(1);