if(global.soundfx) audio_play_sound(snd_shielddown, 0, false);
if(global.particles) effect_create_above(ef_ring, x, y, 2, c_lime);
sprite_index = spr_phase_unload;
movespeed = 5;