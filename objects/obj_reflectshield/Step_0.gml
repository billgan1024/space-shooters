if(image_alpha < 1)
{
	image_alpha += 0.03;
}
if(instance_exists(obj_ship))
{
	x = obj_ship.x;
    y = obj_ship.y - 32;
}
else
{
	instance_destroy();
}
