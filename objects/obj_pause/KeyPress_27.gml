if(global.gameState == state.Game)
{
	paused = !paused;
	if(paused)
	{
		if(global.soundfx) audio_play_sound(snd_pause, 0, false);
		if(instance_exists(obj_ship))
		{
			if(obj_ship.warp and obj_ship.warptarget)
			{
				obj_ship.warptarget = false;	
				cursor_sprite = spr_icon_mouse;
			}
		}
		scr_store_variables();
		scr_deactivate_entities();
		b1 = instance_create_layer(__view_get(e__VW.XView, 0) + 1280, __view_get(e__VW.YView, 0) + 960, "PauseMenu", obj_button_green);
		b1.text = "Back to Game";
		b2 = instance_create_layer(__view_get(e__VW.XView, 0) + 1280, __view_get(e__VW.YView, 0) + 1120, "PauseMenu", obj_button_red);
		b2.text = "Main Menu";
	}
	else if (!paused)
	{
		if(global.soundfx) audio_play_sound(snd_unpause, 0, false);
		scr_activate_entities();
		scr_unstore_variables();
		with(b1) instance_destroy();
		with(b2) instance_destroy();
	}
}
else if(global.gameState == state.Multiplayer and !obj_client_gunner.dead)
{
	if(obj_chatbox.selected)
	{
		obj_chatbox.selected = false;
		obj_chatbox.blink = false;	
		obj_chatbox.txt = "";
	}
	else
	{
		paused = !paused;
		if(paused)
		{
			if(global.soundfx) audio_play_sound(snd_pause, 0, false);
			b1 = instance_create_layer(__view_get(e__VW.XView, 0) + 1280, __view_get(e__VW.YView, 0) + 960, "PauseMenu", obj_button_green);
			b1.text = "Back to Game";
			b2 = instance_create_layer(__view_get(e__VW.XView, 0) + 1280, __view_get(e__VW.YView, 0) + 1120, "PauseMenu", obj_button_red);
			b2.text = "Leave Server";
		}
		else if (!paused)
		{
			if(global.soundfx) audio_play_sound(snd_unpause, 0, false);
			with(b1) instance_destroy();
			with(b2) instance_destroy();
		}
	}
}