if(global.soundfx) audio_play_sound(snd_warp2, 0, false);
x = xpos;
y = ypos;
var effect = instance_create_layer(x, y, "Particles", obj_effect);
effect.sprite_index = spr_warp;
image_xscale = 1;
move = true;
canshoot = true;
invulnerable = false;