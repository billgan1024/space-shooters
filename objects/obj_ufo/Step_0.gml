ct += 1/60;
image_angle += 1;
if(wave((room_height/4) - 15, (room_height/4) + 15, 2, 0, ct) >= y - 1 and wave((room_height/4) - 15, (room_height/4) + 15, 2, 0, ct) <= y + 1 and !move)
{
	move = true;
}

displaylife = smooth_approach(displaylife, life, 0.4);
if(life <= 0)
{
	instance_destroy();
}
life = clamp(life, 0, lifemax);
if(life < lifemax/2)
{
	if(!spawn)
	{
		spawn = true;
		alarm[6] = 1;
	}
}
if(speed > 0)
{
	speed -= 1;
}
if(alpha > 0 and !revealed)
{
	alpha -= 0.05;
}
if(!move)
{
	y = smooth_approach(y, room_height/4, 0.05);
}
else
{
x = smooth_approach(x, xpos, 0.05);
if(y >= room_height/4 + 30 or y <= room_height/4 - 30)
{
	y = approach(y, room_height/4, 3);	
}
else
{
	y += wave(-1, 1, 2, 0, ct);
}
}

x = clamp(x, sprite_width/2, room_width - (sprite_width/2));
if(move)
{
	y = clamp(y, sprite_height/2, room_height - (sprite_height/2));
}
