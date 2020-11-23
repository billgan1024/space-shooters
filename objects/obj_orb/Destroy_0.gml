with(obj_view_controller)
{
	screen_shake_init_ext(8,8,0.5,0.5,0);	
}
if(global.particles)
{
	effect = instance_create_layer(x, y, "Particles", obj_effect);
	effect.sprite_index = spr_plasma_explosion;
}
part_type_destroy(part_pixel);
part_emitter_destroy(global.partsysbelow, partemit_pixel);
if(global.soundfx) audio_play_sound(snd_explosion2, 0, false);