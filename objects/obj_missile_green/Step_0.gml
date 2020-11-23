effect_create_below(ef_smoke, x, y, 0, c_gray);
if(instance_exists(obj_ship_parent))
{
	if(obj_ship_parent.image_xscale == 1)
	{
		direction = angle_approach(direction, point_direction(x, y, obj_ship_parent.x, obj_ship_parent.y), 5);
	}
}
image_angle = direction - 90;
