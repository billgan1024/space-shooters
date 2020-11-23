speed = 20;
if(instance_exists(obj_ship_parent))
{
	direction = point_direction(x, y, obj_ship_parent.x, obj_ship_parent.y);
}
else
{
	direction = 270;
}
image_angle = direction - 90;
reflected = false;
spd = 0;
dir = 0;