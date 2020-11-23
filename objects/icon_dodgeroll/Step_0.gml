if(instance_exists(obj_ship))
{
	if(obj_ship.dodgeroll)
	{
		visible = true;
	}else
	{
		visible = false;
	}
}else{
	visible = false;	
}

if(resource < maxres)
{
	resource += 1;	
}
resource = clamp(resource, 0, maxres);