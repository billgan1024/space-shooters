scr_bar(__view_get(e__VW.XView, 0) + 30, __view_get(e__VW.YView, 0) + 30, global.displayhealth, global.maxhealth, spr_lifeBar, spr_guiBar, __view_get(e__VW.XView, 0) + 102, __view_get(e__VW.YView, 0) + 46, spr_xpBar, global.displayammo, global.maxammo, __view_get(e__VW.XView, 0) + 102, __view_get(e__VW.YView, 0) + 70);

switch(global.playericon)
{
	case 1: draw_sprite(spr_icon_green, -1, __view_get(e__VW.XView, 0) + 66, __view_get(e__VW.YView, 0) + 66);
	break;
	
	case 2: draw_sprite(spr_icon_blue, -1, __view_get(e__VW.XView, 0) + 66, __view_get(e__VW.YView, 0) + 66);
	break;
	
	case 3: draw_sprite(spr_icon_pink, -1, __view_get(e__VW.XView, 0) + 66, __view_get(e__VW.YView, 0) + 66);
	break;
	
	case 4: draw_sprite(spr_icon_yellow, -1, __view_get(e__VW.XView, 0) + 66, __view_get(e__VW.YView, 0) + 66);
	break;
	
	case 5: draw_sprite(spr_icon_beige, -1, __view_get(e__VW.XView, 0) + 66, __view_get(e__VW.YView, 0) + 66);
	break;
}

draw_set_colour(c_white);
draw_set_font(fnt_main);
draw_set_halign(fa_left);
draw_set_valign(fa_center);
if(instance_exists(obj_client_controller))
{
	draw_text(__view_get(e__VW.XView, 0) + 30, __view_get(e__VW.YView, 0) + 140, global.playername);
}
else
{
	draw_text(__view_get(e__VW.XView, 0) + 30, __view_get(e__VW.YView, 0) + 140, global.name);	
}
draw_text(__view_get(e__VW.XView, 0) + 30, __view_get(e__VW.YView, 0) + 180, "HP: " + string(global.currenthealth) + " / " + string(global.maxhealth));
draw_text(__view_get(e__VW.XView, 0) + 30, __view_get(e__VW.YView, 0) + 220, "Ammo: " + string(global.currentammo) + " / " + string(global.maxammo));
draw_set_halign(fa_right);
draw_set_font(fnt_space);
draw_text(__view_get(e__VW.XView, 0) + 2560 - 24, __view_get(e__VW.YView, 0) + 52, "Score: " + string_format(global.displayscore, 0, 0));
draw_set_font(fnt_calibri);
draw_text(__view_get(e__VW.XView, 0) + 2560 - 27, __view_get(e__VW.YView, 0) + 92, "Combo: " + string(global.combo) + "x");

if(global.gameState == state.Multiplayer)
{
	if(!obj_chatbox.selected and keyboard_check(vk_tab))
	{
		draw_set_font(fnt_menu2);
		draw_set_colour(c_white);
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
	
		var yy = __view_get(e__VW.YView, 0) + 60;
		draw_text(__view_get(e__VW.XView, 0) + 1280, yy, "Players");
		yy += 40;
		draw_text(__view_get(e__VW.XView, 0) + 1280, yy, global.playername + ": " + string(obj_client_controller.ping) + " ms");
	
		for(var i = 0; i < instance_number(obj_enemy_gunner); i++)
		{
			yy += 40;
			var remotePlayer = instance_find(obj_enemy_gunner, i);
		
			draw_text(__view_get(e__VW.XView, 0) + 1280, yy, remotePlayer.remotePlayerName + ": " + string(remotePlayer.remotePlayerPing) + " ms");
		}
	}
}

