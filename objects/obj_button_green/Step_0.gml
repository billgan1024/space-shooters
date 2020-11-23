if(fullscreen)
{
	text = window_get_fullscreen() ? "Fullscreen: On" : "Fullscreen: Off";
}else if(particles)
{
	text = global.particles ? "Particles: On" : "Particles: Off";	
}

if(global.gameState == state.Multiplayer)
{
	x = __view_get(e__VW.XView, 0) + xpos;
	y = __view_get(e__VW.YView, 0) + ypos;
}