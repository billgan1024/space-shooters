if(sound)
{
	switch(global.soundfx)
	{
		case true: text = "Sound Effects: On";
		break;
		
		case false: text = "Sound Effects: Off";
		break;
	}
}

if(music)
{
	switch(global.music)
	{
		case true: text = "Music: On";
		break;
		
		case false: text = "Music: Off";
		break;
	}
}

if(global.gameState == state.Multiplayer)
{
	x = __view_get(e__VW.XView, 0) + xpos;
	y = __view_get(e__VW.YView, 0) + ypos;
}