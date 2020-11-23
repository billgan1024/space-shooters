if(global.gameState == state.Multiplayer)
{
	target = instance_nearest(x, y, obj_client_gunner);
}
else
{
	target = instance_nearest(x, y, obj_ship);
}
if(instance_exists(target))
{
	xd = target.x - x;
	yd = target.y - y;
}