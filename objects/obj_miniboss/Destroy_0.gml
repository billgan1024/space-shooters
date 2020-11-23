with(obj_view_controller)
{
	screen_shake_init_ext(10,10,0.625,0.625,0);	
}
audio_stop_sound(snd_chargeup);
if(global.soundfx) audio_play_sound(snd_explosion2, 0, false);
if(global.soundfx) audio_play_sound(snd_complete, 0, false);

if(global.particles)
{
	effect_create_above(ef_ring, x, y, 2, c_orange);
	effect_create_above(ef_spark, x, y, 2, c_white);
	effect_create_above(ef_firework, x, y, 2, c_yellow);
}

if(drop != noone)
{
	var h = instance_create_layer(x, y, "Items", drop);
	h.hp = 200;
}
var pts = round(500 + (500 * global.combo / 25));
score += pts;
p = instance_create_layer(x, y, "DamageText", obj_message);
p.text = "+" + string(pts);
global.combo++;

if(instance_number(obj_enemy) <= 1)
{
	if(instance_exists(obj_stage_controller))
	{
		obj_stage_controller.alarm[0] = 180;
	}
}