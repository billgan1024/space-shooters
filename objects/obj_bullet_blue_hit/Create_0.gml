if(global.gameState == state.Multiplayer)
{
	target = instance_nearest(x, y, obj_enemy_gunner);
}
else
{
	target = instance_nearest(x, y, obj_enemy);
}
if(instance_exists(target))
{
	xd = target.x - x;
	yd = target.y - y;
}