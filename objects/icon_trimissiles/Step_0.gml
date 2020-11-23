if(instance_exists(obj_ship))
{
	if(obj_ship.trimissiles)
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