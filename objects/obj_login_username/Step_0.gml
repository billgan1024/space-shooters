if(selected)
{
	keyboard_string = txt;
}
if(mouse_check_button_pressed(mb_left))
{
	if(mouse_over())
	{
		if(can_click)
		{
			selected = true;
			blink = true;
			alarm[0] = 30;
			keyboard_string = txt;
		}	
	}
	else
	{
		if(can_click)
		{
			selected = false;
			blink = false;
		}
	}
}