ct += 1/60;
if(!display)
{
switch(sprite_index)
{
	case spr_gunner:
	if(global.class == 1)
	{
		image_alpha = 1;
	}
	else
	{
		image_alpha = 0.5;	
	}
	break;
	
	case spr_sharpshooter:
	if(global.class == 2)
	{
		image_alpha = 1;
	}
	else
	{
		image_alpha = 0.5;	
	}
	break;
}
}