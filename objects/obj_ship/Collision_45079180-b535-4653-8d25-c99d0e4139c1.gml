if(global.soundfx) audio_play_sound(snd_item, 0, false);
instance_create_layer(x, y, "Particles", obj_healeffect);
if(global.particles) effect_create_above(ef_ring, x, y, 2, c_red);

if(global.currenthealth > global.maxhealth - other.hp)
{
	global.currenthealth = global.maxhealth;
}
else
{
	global.currenthealth += other.hp;
}

with(other)
{
	instance_destroy();
}