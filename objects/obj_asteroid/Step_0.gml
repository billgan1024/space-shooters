if(y >= 0 and !played)
{
	played = true;
	if(global.soundfx) audio_play_sound(snd_launch, 0, false);
}
effect_create_below(ef_smoke, x, y, 0, make_colour_rgb(131, 96, 73));
image_angle += 7;

if(y > room_height + (sprite_height/2) + 50)
{
	instance_destroy();
}