if(canshoot and global.currentammo > 0)
{
	if(!instance_exists(obj_reflectshield))
	{
		if(global.soundfx) audio_play_sound(snd_laser, 0, false);
		var b = instance_create_layer(x, y, "Bullets", obj_bullet_blue);	
		b.direction = point_direction(x, y, mouse_x, mouse_y);
		global.currentammo -= 1;
		canshoot = false;
		regenammo = false;
		alarm[1] = 120;
		alarm[0] = 10;
	}
}