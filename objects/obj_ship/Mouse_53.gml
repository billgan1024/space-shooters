if(warp and icon_warp.cooldown == 0 and warptarget)
{
	warptarget = false;
	icon_warp.cooldown = 9;
	if(global.soundfx) audio_play_sound(snd_warp, 0, false);
	var effect = instance_create_layer(x, y, "Particles", obj_effect);
	effect.sprite_index = spr_warp;
	with(obj_reflectshield) instance_destroy();
	xpos = mouse_x;
	ypos = mouse_y;
	movespeed = 10;
	sprite_index = spr_gunner;
	alarm[5] = 0;
	image_xscale = 0;
	speed = 0;
	move = false;
	canshoot = false;
	invulnerable = true;
	alarm[6] = 45;
}