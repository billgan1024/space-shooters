speed = 40;
if(instance_exists(obj_ship_parent))
{
	direction = point_direction(x, y, obj_ship_parent.x, obj_ship_parent.y);
	direction += (irandom(5) * choose(1, -1));
}
else
{
	direction = 270;
	direction += (irandom(spread) * choose(1, -1));
}
image_angle = direction - 90;
spd = 0;
dir = 0;