if(y >= -100 and y <= 0 and !move)
{
	move = true;
	alarm[2] = 45;
}
displaylife = smooth_approach(displaylife, life, 0.4);
if(life <= 0)
{
	instance_destroy();
}
life = clamp(life, 0, lifemax);
if(speed > 0)
{
	speed -= 1;
}
if(alpha > 0 and !revealed)
{
	alpha -= 0.05;
}

if(!stunned)
{
	if(move)
	{
		y = smooth_approach(y, 100, 0.05);
	}
	else
	{
		y += 1.6;
	}
}

x = clamp(x, 0 + (sprite_width/2), room_width - (sprite_width/2));
if(y > room_height + (sprite_height/2))
{
	loot = false;
	instance_destroy();
}