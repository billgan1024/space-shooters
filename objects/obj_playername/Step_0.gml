if(selected)
{
	keyboard_string = global.name;
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
			keyboard_string = global.name;
		}	
	}
	else
	{
		if(can_click)
		{
			selected = false;
			blink = false;
			if(global.name == "")
			{
				ini_open("data.ini");
				global.name = ini_read_string("profile", "name", "Player");
				ini_close();
			}
		}
	}
}
