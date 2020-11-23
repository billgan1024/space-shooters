ct += 1/60;

if(global.currenthealth <= 0)
{
	instance_destroy();
}

if(speed > 0)
{
	speed -= fric;
}
else
{
	if(image_xscale == 1)
	{
		move = true;	
	}
}

if(global.currentammo == global.maxammo)
{
	regenammo = false;
}
else if(regenammo)
{
	global.currentammo += 1;
}


left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));

hsp = movespeed * (right - left);
vsp = movespeed * (down - up);

if(move)
{
x += hsp;
y += vsp;
}

x = clamp(x, 0 + (sprite_width/2), room_width - (sprite_width/2));
y = clamp(y, 0 + (sprite_height/2), room_height - (sprite_height/2));