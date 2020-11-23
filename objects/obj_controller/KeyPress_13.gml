if(global.gameState == state.Game)
{
	with(obj_enemy) instance_destroy();
	obj_stage_controller.alarm[0] = 60;
}
