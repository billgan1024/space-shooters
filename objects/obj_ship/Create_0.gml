exists = 1;
if(global.class != 1) 
{
	exists = 0;
	instance_destroy();
}
movespeed = 10;
canshoot = false;
ct = 0;
alarm[0] = 10;
regenammo = false;
regen = false;
move = true;
alarm[4] = 20;
fric = 1;
hsp = 0;
vsp = 0;
xpos = x;
ypos = y;
hit = false;
bulletdamage = 20;

missiledamage = 50;
seekerdamage = 120;
missilecount = 0;


seeker = false;
seekerupgrade = 0;
trimissiles = false;
trimissilesupgrade = 0;

reflect = false;
phase = false;
invulnerable = false;

warp = false;
warptarget = false;
dodgeroll = false;
isrolling = false;

emp = false;
empdamage = 60;
ult = false;

spd = 0;
dir = 0;
sprindex = 0;
imgindex = 0;

part_plasma = part_type_create();
//part_type_shape(part_plasma, pt_shape_ring);
part_type_sprite(part_plasma, spr_ring, true, true, false);
part_type_size(part_plasma, 0, 0, 0.125, 0);
part_type_colour1(part_plasma, c_purple);
part_type_alpha2(part_plasma, 1, 1);
part_type_life(part_plasma, 10, 10);

part_plasma2 = part_type_create();
part_type_sprite(part_plasma2, spr_ring, true, true, false);
part_type_size(part_plasma2, 0, 0, 0.0625, 0);
part_type_colour1(part_plasma2, make_colour_rgb(255, 51, 123));
part_type_alpha2(part_plasma2, 1, 0);
part_type_life(part_plasma2, 30, 30);

partemit_plasma = part_emitter_create(global.partsys);
part_emitter_region(global.partsys, partemit_plasma, x, x, y, y, ps_shape_ellipse, ps_distr_linear);