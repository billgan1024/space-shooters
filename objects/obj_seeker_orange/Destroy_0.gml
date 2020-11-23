with(obj_view_controller)
{
	screen_shake_init_ext(8,8,0.5,0.5,0);	
}
if(global.soundfx) audio_play_sound(snd_explosion, 0, false);
if(global.particles) instance_create_layer(x, y, "Particles", obj_explosion);
if(loot)
{
	if(drop != noone)
	{
		if(global.particles) effect_create_above(ef_firework, x, y, 1, c_yellow);
		instance_create_layer(x, y, "Items", drop);
	}
	var pts = round(150 + (150 * global.combo / 25));;
	score += pts;
	p = instance_create_layer(x, y, "DamageText", obj_message);
	p.text = "+" + string(pts);
	p.colour = make_colour_rgb(255, 178, 102);
	p.colour2 = make_colour_rgb(153, 76, 0);
	global.combo++;
}
else
{
	if(global.particles) effect_create_above(ef_ring, x, y, 2, c_red);
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