if(instance_exists(obj_sharpshooter))
{
	if(obj_sharpshooter.cannons)
	{
		visible = true;
	}else
	{
		visible = false;
	}
}else{
	visible = false;	
}

if(cooldown > 0)
{
	cooldown -= (1/60);
}