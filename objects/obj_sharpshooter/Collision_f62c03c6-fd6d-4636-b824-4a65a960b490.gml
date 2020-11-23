if(global.soundfx) audio_play_sound(snd_item, 0, false);
instance_create_layer(x, y, "Particles", obj_ammoeffect);
if(global.particles) effect_create_above(ef_ring, x, y, 2, c_yellow);

if(global.currentammo > global.maxammo - other.ammo)
{
	global.currentammo = global.maxammo;
}
else
{
	global.currentammo += other.ammo;
}

with(other)
{
	instance_destroy();
}