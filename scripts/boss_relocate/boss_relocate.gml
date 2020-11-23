if(xpos == sprite_width)
	{
		xpos = choose(room_width/2, room_width - sprite_width);
	}
	else if(xpos == room_width/2)
	{
		xpos = choose(sprite_width, room_width - sprite_width);
	}
	else if(xpos == room_width - sprite_width)
	{
		xpos = choose(sprite_width, room_width/2);
	}