if(instance_exists(obj_orb))
{
	with(obj_orb)
	{
		part_type_destroy(part_pixel);
		part_emitter_destroy(global.partsysbelow, partemit_pixel);	
	}
}

if(instance_exists(obj_ship))
{
	with(obj_ship)
	{
		part_type_destroy(part_plasma);
		part_type_destroy(part_plasma2);
		part_emitter_destroy(global.partsys, partemit_plasma);
	}
}

if(instance_exists(obj_explosion))
{
	with(obj_explosion)
	{
		part_type_destroy(part_cloud);
		part_type_destroy(part_cloud2);
		part_emitter_destroy(global.partsys, partemit_explosion);
	}
}