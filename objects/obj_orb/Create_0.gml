vspeed = irandom(42) - 21;
hspeed = sqrt(450 - (vspeed * vspeed));
alarm[0] = 600;
hspd = 0;
vspd = 0;

part_pixel = part_type_create();
part_type_shape(part_pixel, pt_shape_square);
part_type_size(part_pixel, 0.08, 0.1, 0, 0);
part_type_colour2(part_pixel, make_colour_rgb(255, 51, 123), c_purple);
part_type_orientation(part_pixel, 0, 360, 15, 0, 0);
part_type_alpha2(part_pixel, 1, 0);
part_type_life(part_pixel, 30, 30);

partemit_pixel = part_emitter_create(global.partsysbelow);
part_emitter_region(global.partsysbelow, partemit_pixel, x - 50, x + 50, y - 50, y + 50, ps_shape_ellipse, ps_distr_linear);