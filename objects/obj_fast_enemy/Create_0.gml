speed = 12;
if(instance_exists(obj_ship_parent))
{
	direction = point_direction(x, y, obj_ship_parent.x, obj_ship_parent.y);
}
else
{
	direction = 270;
}
image_angle = direction + 90;
life = 50;
displaylife = 50;
lifemax = 50;
revealed = false;
alpha = 0;
drop = noone;
hit = false;
r = true;
loot = true;
if(r)
{
	x = random(room_width - sprite_width) + (sprite_width/2);
}
spd = 0;
dir = 0;
stunned = false;
stun = 0;
alarm[4] = 4;