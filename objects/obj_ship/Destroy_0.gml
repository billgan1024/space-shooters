if(exists = 1)
{
part_type_destroy(part_plasma);
part_type_destroy(part_plasma2);
part_emitter_destroy(global.partsys, partemit_plasma);
if(global.soundfx)
{
	audio_play_sound(snd_fail, 0, false);
	audio_play_sound(snd_explosion2, 0, false);
}
with(obj_view_controller)
{
	screen_shake_init_ext(16,16,0.5,0.5,0);		
}
if(warp)
{
	cursor_sprite = spr_icon_mouse;
	warptarget = false;
}
global.gameState = state.End;
effect = instance_create_layer(x, y, "Particles", obj_effect);
effect.sprite_index = spr_big_explosion;
with(obj_stageinfo) instance_destroy();
with(obj_stage_controller) instance_destroy();
var i = instance_create_layer(x, y, "UI", obj_stageinfo);
i.fade = false;
var b1 = instance_create_layer(room_width/2, 960, "UI", obj_button_green);
b1.text = "Retry";
var b2 = instance_create_layer(room_width/2, 1120, "UI", obj_button_red);
b2.text = "Main Menu";
}