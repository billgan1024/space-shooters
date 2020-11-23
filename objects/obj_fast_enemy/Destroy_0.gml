with(obj_view_controller)
{
	screen_shake_init_ext(8,8,0.5,0.5,0);	
}
if(global.soundfx) audio_play_sound(snd_explosion, 0, false);
if(loot)
{
	if(global.particles) instance_create_layer(x, y, "Particles", obj_explosion);
	if(drop != noone)
	{
		if(global.particles) effect_create_above(ef_firework, x, y, 1, c_yellow);
		instance_create_layer(x, y, "Items", drop);
	}
	var pts = round(60 + (60 * global.combo / 25));;
	score += pts;
	p = instance_create_layer(x, y, "DamageText", obj_message);
	p.text = "+" + string(pts);
	p.colour = make_colour_rgb(178, 102, 255);
	p.colour2 = make_colour_rgb(51, 0, 102);
	global.combo++;
}
else
{
	if(global.particles) 
	{
		var effect = instance_create_layer(x, y, "Particles", obj_effect);
		effect.sprite_index = spr_smoke;
	}
	//effect_create_above(ef_ring, x, y, 1, c_purple);
	if(global.combo > 3 and global.soundfx)
	{
		audio_play_sound(snd_combobreak, 0, false);	
	}
	global.combo = 0;
}
if(instance_number(obj_enemy) <= 1)
{
	if(instance_exists(obj_stage_controller))
	{
		obj_stage_controller.alarm[0] = 180;
	}
}