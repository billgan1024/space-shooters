if(instance_exists(obj_miniboss))
{
	x = approach(x, 0, 40);
}
else
{
	x = approach(x, 2560, 40);	
}
if(x >= room_width)
{
	instance_destroy();	
}