reflected = false;
if(reflected)
{
	target = instance_nearest(x, y, obj_enemy);
}else
{
	target = instance_nearest(x, y, obj_ship);
}
if(instance_exists(target))
{
	xd = target.x - x;
	yd = target.y - y;
}