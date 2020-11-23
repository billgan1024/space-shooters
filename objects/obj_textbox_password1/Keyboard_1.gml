if(selected)
{
	blink = true;
	alarm[0] = 30;
	
	var password = "";
	for(var i = 0; i < string_length(txt); i++)
	{
		password += "*";
	}
	
	if(string_width(password) < max_width)
	txt = keyboard_string;
}

