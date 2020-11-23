part_emitter_region(global.partsys, partemit_plasma, x, x, y, y, ps_shape_ellipse, ps_distr_linear);
ct += 1/60;
if(warptarget)
{
	cursor_sprite = spr_icon_target;	
}
else
{
	cursor_sprite = spr_icon_mouse;	
}
if(isrolling)
{
	if(global.particles) effect_create_below(ef_smoke, x, y, 1, c_purple);
}
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