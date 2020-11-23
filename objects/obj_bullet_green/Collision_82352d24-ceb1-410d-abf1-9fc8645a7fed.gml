if(instance_exists(obj_ship) and !reflected)
{
	if(global.soundfx) audio_play_sound(snd_block, 0, false);
	other.image_alpha = 0.5;
	direction = point_direction(obj_ship.x, obj_ship.y, mouse_x, mouse_y);
	reflected = true;
}
