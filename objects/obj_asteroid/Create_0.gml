played = false;
r = true;
if(r)
{
	x = random(room_width - sprite_width) + (sprite_width/2);
}

speed = 35;
image_index = irandom(image_number - 1);
if(instance_exists(obj_ship))
{
	direction = point_direction(x, y, obj_ship.x, obj_ship.y);
	direction += (irandom(10) * choose(1, -1));
}
else
{
	direction = point_direction(x, y, room_width/2, room_height/2);
	direction += (irandom(10) * choose(1, -1));
}
image_angle = direction - 90;
spd = 0;
dir = 0;