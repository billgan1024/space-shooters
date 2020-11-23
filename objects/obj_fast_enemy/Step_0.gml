if(instance_exists(obj_ship_parent))
{
	if(obj_ship_parent.image_xscale == 1 and !stunned)
	{
		direction = angle_approach(direction, point_direction(x, y, obj_ship_parent.x, obj_ship_parent.y), 5);
	}
}
image_angle = direction + 90;

displaylife = smooth_approach(displaylife, life, 0.4);
if(life <= 0)
{
	instance_destroy();
}

life = clamp(life, 0, lifemax);

if(stunned)
{
	speed = 0;
}else
{
	speed = 12;
}

if(alpha > 0 and !revealed)
{
	alpha -= 0.05;
}
spd = 0;
dir = 0;
