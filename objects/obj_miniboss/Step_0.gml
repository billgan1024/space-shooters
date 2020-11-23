ct += 1/60;
if(wave(150, 250, 2, 0, ct) >= y - 1 and wave(150, 250, 2, 0, ct) <= y + 1 and !move)
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
if(life < lifemax / 6)
{
	if(!spawnfast)
	{
		spawnfast = true;
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


bullet = instance_nearest(x, y, obj_bullet_blue);
if(instance_exists(bullet))
{
	if(point_distance(x, y, bullet.x, bullet.y) < (sprite_width*3) and speed == 0)
	{
		if(point_direction(bullet.x, bullet.y, x, y) >= 1 and point_direction(bullet.x, bullet.y, x, y) <= 90)
		{
			if(x > room_width/8*7)
			{
				if(candodge)
				{
					direction = 180;
					speed = 50;
				}
			}
			else
			{
				if(candodge)
				{
					direction = 0;
					speed = 20;
				}
			}
		}
		else if(point_direction(bullet.x, bullet.y, x, y) >= 91 and point_direction(bullet.x, bullet.y, x, y) <= 180)
		{
			if(x < room_width/8)
			{
				if(candodge)
				{
					direction = 0;
					speed = 50;
				}
			}
			else
			{
				if(candodge)
				{
					direction = 180;
					speed = 20;
				}
			}
		}
	}
}

bullet = instance_nearest(x, y, obj_bullet2_blue);
if(instance_exists(bullet))
{
	if(point_distance(x, y, bullet.x, bullet.y) < sprite_width and speed == 0)
	{
		if(point_direction(bullet.x, bullet.y, x, y) >= 1 and point_direction(bullet.x, bullet.y, x, y) <= 90)
		{
			if(x > room_width/8*7)
			{
				if(candodge)
				{
					direction = 180;
					speed = 50;
				}
			}
			else
			{
				if(candodge)
				{
					direction = 0;
					speed = 20;
				}
			}
		}
		else if(point_direction(bullet.x, bullet.y, x, y) >= 91 and point_direction(bullet.x, bullet.y, x, y) <= 180)
		{
			if(x < room_width/8)
			{
				if(candodge)
				{
					direction = 0;
					speed = 50;
				}
			}
			else
			{
				if(candodge)
				{
					direction = 180;
					speed = 20;
				}
			}
		}
	}
}
/*if(y != 200)
{
	if(!move)
	{
		y = smooth_approach(y, 200, 0.02);
	}
	else
	{
		y = approach(y, 200, 2);
	}
}
*/
if(!move)
{
	y = smooth_approach(y, 200, 0.04);
}
else
{
y = wave(150, 250, 2, 0, ct);
}

x = clamp(x, sprite_width/2, room_width - (sprite_width/2));

if(x >= room_width - (sprite_width/2))
{
	speed = 50;
	direction = 180;
}
else if(x <= sprite_width/2)
{
	speed = 50;
	direction = 0;
}