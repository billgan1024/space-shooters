if(selected)
{
	keyboard_string = txt;
}

if(!selected)
{
	if(keyboard_lastchar == "/")
	{
		selected = true;
		blink = true;
		alarm[0] = 30;
		txt = "/";
		keyboard_string = txt;	
	}
}
