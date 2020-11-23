effect_create_above(ef_smoke, x, y, 0, c_gray);
if(instance_exists(target))
{
	direction = angle_approach(direction, point_direction(x, y, target.x, target.y), 5);
}
else
{
	if(instance_exists(obj_basic_green) or instance_exists(obj_seeker_orange) or instance_exists(obj_fighter_red) or instance_exists(obj_miniboss) or instance_exists(obj_fast_enemy) or instance_exists(obj_ufo))
	{
		target = instance_nearest(x, y, obj_enemy);
	}
}
image_angle = direction - 90;
