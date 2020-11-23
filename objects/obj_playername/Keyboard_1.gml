if(selected)
{
	blink = true;
	alarm[0] = 30;
	if(string_width(global.name) < max_width)
	global.name = keyboard_string;
}
