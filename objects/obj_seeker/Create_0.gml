speed = 30;

if(instance_exists(obj_basic_green) or instance_exists(obj_seeker_orange) or instance_exists(obj_fighter_red) or instance_exists(obj_miniboss) or instance_exists(obj_fast_enemy) or instance_exists(obj_ufo))
{
target = instance_nearest(mouse_x, mouse_y, obj_enemy);
}
else
{
	target = noone;
}

if(instance_exists(target))
{
	direction = point_direction(x, y, target.x, target.y);
}
else
{
	direction = point_direction(x, y, mouse_x, mouse_y);
}
image_angle = direction - 90;
alarm[0] = 600;
spd = 0;
dir = 0;