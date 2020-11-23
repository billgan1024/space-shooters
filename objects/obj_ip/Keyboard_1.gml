if(selected)
{
	blink = true;
	alarm[0] = 30;
	if(string_width(global.ip) < max_width)
	global.ip = keyboard_string;
}
