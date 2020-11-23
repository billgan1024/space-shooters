alarm[0] = 120;

part_cloud = part_type_create();
part_type_shape(part_cloud, pt_shape_cloud);
part_type_size(part_cloud, 0.14, 0.14, 0.02, 0);
part_type_colour2(part_cloud, 12632256, 8421504);
part_type_alpha2(part_cloud, 1, 0);
part_type_life(part_cloud, 60, 60);

part_cloud2 = part_type_create();
part_type_shape(part_cloud2, pt_shape_sphere);
part_type_size(part_cloud2, 1, 1, 0.01, 0);
part_type_colour2(part_cloud2, 8421631, 65535);
part_type_alpha2(part_cloud2, 1, 0);
part_type_life(part_cloud2, 4, 4);
part_type_speed(part_cloud2, 35, 35, 2, 0);//2 is -2
part_type_direction(part_cloud2, 0, 359, 0, 0);
part_type_step(part_cloud2, 0, part_cloud);
part_type_death(part_cloud2, 1, part_cloud);

partemit_explosion = part_emitter_create(global.partsys);
part_emitter_region(global.partsys, partemit_explosion, x - 5, x + 5, y - 5, y + 5, ps_shape_ellipse, ps_distr_linear);
part_emitter_burst(global.partsys, partemit_explosion, part_cloud2, 100);





