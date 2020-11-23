if(room == rm_menu)
{
	switch(global.gameState)
	{
		case state.Menu:
			__view_set( e__VW.XView, 0, smooth_approach(__view_get(e__VW.XView, 0), view_menux, 0.06) );
			__view_set( e__VW.YView, 0, smooth_approach(__view_get(e__VW.YView, 0), view_menuy, 0.06) );
		break;
		
		case state.ServerMenu:
			__view_set( e__VW.XView, 0, smooth_approach(__view_get(e__VW.XView, 0), view_multiplayerx, 0.06) );
			__view_set( e__VW.YView, 0, smooth_approach(__view_get(e__VW.YView, 0), view_multiplayery, 0.06) );
		break;
		
		case state.ServerLobby:
			__view_set( e__VW.XView, 0, smooth_approach(__view_get(e__VW.XView, 0), view_serverx, 0.06) );
			__view_set( e__VW.YView, 0, smooth_approach(__view_get(e__VW.YView, 0), view_servery, 0.06) );
		break;
		
		case state.PlaySelect:
			__view_set( e__VW.XView, 0, smooth_approach(__view_get(e__VW.XView, 0), view_playselectx, 0.06) );
			__view_set( e__VW.YView, 0, smooth_approach(__view_get(e__VW.YView, 0), view_playselecty, 0.06) );
		break;
		
		case state.Ship:
			__view_set( e__VW.XView, 0, smooth_approach(__view_get(e__VW.XView, 0), view_shipx, 0.06) );
			__view_set( e__VW.YView, 0, smooth_approach(__view_get(e__VW.YView, 0), view_shipy, 0.06) );
		break;
		
		case state.Options:
			__view_set( e__VW.XView, 0, smooth_approach(__view_get(e__VW.XView, 0), view_optionsx, 0.06) );
			__view_set( e__VW.YView, 0, smooth_approach(__view_get(e__VW.YView, 0), view_optionsy, 0.06) );
		break;
		case state.Credits:
			__view_set( e__VW.XView, 0, smooth_approach(__view_get(e__VW.XView, 0), view_creditsx, 0.06) );
			__view_set( e__VW.YView, 0, smooth_approach(__view_get(e__VW.YView, 0), view_creditsy, 0.06) );
		break;
	}
}
else if(room == rm_game)
{
	__view_set( e__VW.XView, 0, vx );
	__view_set( e__VW.YView, 0, vy );
	///shake the screen. (must be after other views setting stuffs)
	screen_shake_step(vx,vy,0);
}