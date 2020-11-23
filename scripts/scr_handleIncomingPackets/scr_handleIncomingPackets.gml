var buffer = argument0;
var msgId = buffer_read(buffer, buffer_u8);

switch(msgId)
{
	case message_type_ping:
		var time = buffer_read(buffer, buffer_u32);
		obj_client_controller.ping = current_time - time;
	break;
	
	case message_type_register:
	var response = buffer_read(buffer, buffer_u8);
	    var playerUsername = buffer_read(buffer, buffer_string);
		switch(response)
		{
			case 0://failure
				client_show_notification("Registration failed: A player with that username already exists!", 1280, 1200);
			break;
			
			case 1://success
				global.gameState = state.ServerLobby;
				client_show_notification("Successfully registered!", 1280 + view_serverx, 1200 + view_servery);
				global.playername = playerUsername;
			break;
		}
	break;
	
	case message_type_login:
		var response = buffer_read(buffer, buffer_u8);
		var playerUsername = buffer_read(buffer, buffer_string);
		switch(response)
		{
			case 0://failure
				client_show_notification("Login failed: Incorrect username or password!", 1280, 1200);
			break;
			
			case 1://success
				global.gameState = state.ServerLobby;
				client_show_notification("Successfully logged in!", 1280 + view_serverx, 1200 + view_servery);
				global.playername = playerUsername;
			break;
			
			case 2: //already logged in
				client_show_notification("You are already logged in from another computer!", 1280, 1200);
			break;
		}
	break;
	
	case message_player_id:
		global.playerid = buffer_read(buffer, buffer_u32);
		client_show_notification("Player ID has been received!", 1280, 1200);
	break;
	
	case message_player_left:
		var pId = buffer_read(buffer, buffer_u32);
		with(obj_enemy_gunner)
		{
			if(remotePlayerId == pId)
			{
				client_show_notification(remotePlayerName + " has left.", 1280, 400);
				instance_destroy();	
			}
		}
	break;
	
	case message_player_join:
		var pId = buffer_read(buffer, buffer_u32);
		var pName = buffer_read(buffer, buffer_string);
		var xx = buffer_read(buffer, buffer_f32);
		var yy = buffer_read(buffer, buffer_f32);
		var join = buffer_read(buffer, buffer_bool);
		
		var instance = noone;
		
		with(obj_enemy_gunner)
		{
			if(remotePlayerId == pId)
			{
				instance = id;
			}	
		}
		
		if(instance == noone)
		{
			if(instance_exists(obj_client_gunner)) //if we're in game
			{
				//create a enemy player
				var remotePlayer = instance_create_layer(xx, yy, "EnemyShips", obj_enemy_gunner);
				remotePlayer.remotePlayerId = pId;
				remotePlayer.remotePlayerName = pName;
				if(join)
				{
					client_show_notification(remotePlayer.remotePlayerName + " has joined!", 1280, 400);
				}
			}
		}
		else
		{
			with(instance)
			{
				instance_destroy();	
			}
		}
	break;
	
	case message_player_move:
		var pId = buffer_read(buffer, buffer_u32);
		var xx = buffer_read(buffer, buffer_f32);
		var yy = buffer_read(buffer, buffer_f32);
		
		with(obj_enemy_gunner)
		{
			if(remotePlayerId == pId)
			{
				x = xx;
				y = yy;
			}
		}
	break;
	
	case message_player_chat:
		var pId = buffer_read(buffer, buffer_u32);
		var text = buffer_read(buffer, buffer_string);
		
		if(global.playerid == pId)
		{
			//display the chat above the player
			obj_client_gunner.text = text;
			obj_client_gunner.alarm[0] = 180;
		}
		else
		{
			with(obj_enemy_gunner)
			{
				if(remotePlayerId == pId)
				{
					//update the chat on this enemy
					self.text = text;
					alarm[0] = 180;
				}
			}
		}
	break;
	
	case message_server_closed:
		if(global.gameState == state.Multiplayer)
		{
			scr_destroy_particles();
			room_goto(rm_menu);
		}
		global.gameState = state.Menu;
		with(obj_client_controller) instance_destroy();
		obj_controller.alarm[1] = 1;
	break;
	
	case message_player_info:
		var pId = buffer_read(buffer, buffer_u32);
		var ping = buffer_read(buffer, buffer_u32);
		
		//find the owner of this message
		with(obj_enemy_gunner)
		{
			if(remotePlayerId == pId)
			{
				remotePlayerPing = ping;
			}
		}
	break;
	
	case message_player_shoot:
		var pId = buffer_read(buffer, buffer_u32);
		var laserId = buffer_read(buffer, buffer_u32);
		var xx = buffer_read(buffer, buffer_f32);
		var yy = buffer_read(buffer, buffer_f32);
		var dir = buffer_read(buffer, buffer_u16);
		var spd = buffer_read(buffer, buffer_u8);
		var sound = buffer_read(buffer, buffer_bool);
		
		var player = noone;
		with(obj_enemy_gunner)
		{
			if(remotePlayerId == pId)
			{
				player = id;	
			}
		}
		
		if(player == noone) //player is yourself
		{
			with(obj_client_gunner)
			{
				player = id;
			}
			
			var laser = noone;
			with(obj_client_bullet)
			{
				if(self.owner == pId and self.laserId = laserId)	
				{
					laser = id;
				}
			}
		
			if(laser != noone)
			{
				laser.x = xx;
				laser.y = yy;
				laser.direction = dir;
				laser.speed = spd;
			}
			else
			{
				if(global.soundfx and sound)
				{
					audio_play_sound(snd_laser, 0, false);
				}
				with(obj_client_gunner)
				{
					var b = instance_create_layer(xx, yy, "Bullets", obj_client_bullet);
					b.owner = pId;
					b.laserId = laserId;
					b.direction = dir;
					b.speed = spd;
				
					global.currentammo -= 1;
					canshoot = false;
					regenammo = false;
					alarm[2] = 120;
					alarm[1] = 10;
					laserCount++;
				}
			}
		}
		else //player is someone else
		{
		
			var laser = noone;
			with(obj_enemy_bullet)
			{
				if(self.owner == pId and self.laserId = laserId)	
				{
					laser = id;
				}
			}
		
			if(laser != noone)
			{
				laser.x = xx;
				laser.y = yy;
				laser.direction = dir;
				laser.speed = spd;
			}
			else
			{
				if(global.soundfx and sound)
				{
					audio_play_sound(snd_laser, 0, false);
				}
				var b = instance_create_layer(xx, yy, "EnemyBullets", obj_enemy_bullet);
				b.owner = pId;
				b.laserId = laserId;
				b.direction = dir;
				b.speed = spd;
			}
		}
	break;
	
	case message_bullet_destroy:
		var pId = buffer_read(buffer, buffer_u32);
		var laserId = buffer_read(buffer, buffer_u32);
		
		with(obj_client_bullet)
		{
			if(self.owner == pId and self.laserId = laserId)	
			{
				instance_destroy();
			}
		}
		
		with(obj_enemy_bullet)
		{
			if(self.owner == pId and self.laserId = laserId)	
			{
				instance_destroy();
			}
		}
	break;
	
	case message_bullet_hit:
		var pId = buffer_read(buffer, buffer_u32);
		var laserId = buffer_read(buffer, buffer_u32);
		var dir = buffer_read(buffer, buffer_u16);
		var hitId = buffer_read(buffer, buffer_u32);
		var eliminated = buffer_read(buffer, buffer_bool);
		
		var laser = noone;
		with(obj_enemy_bullet)
		{
			if(self.owner == pId and self.laserId = laserId)	
			{
				laser = id;
			}
		}
		
		if(laser == noone)
		{
			//your bullet hit someone	
			with(obj_client_bullet)
			{
				if(self.owner == pId and self.laserId = laserId)	
				{
					laser = id;
				}
			}
			
			if(laser != noone)
			{
				if(global.particles)
				{
					var hit = instance_create_layer(laser.x, laser.y, "Particles", obj_bullet_blue_hit);
					hit.image_angle = laser.image_angle;
				}
				with(laser) instance_destroy();
			}	
			
		}
		else //someone else's bullet hit someone
		{
			if(global.particles)
			{
				var hit = instance_create_layer(laser.x, laser.y, "Particles", obj_bullet_red_hit);
				hit.image_angle = laser.image_angle;
			}
			with(laser) instance_destroy();
		}
		
		//find the player hit by the bullet
		var player = noone;
		with(obj_enemy_gunner)
		{
			if(remotePlayerId == hitId)
			{
				player = id;	
			}
		}	
		
		if(player != noone) //enemy got hit
		{
			if(!eliminated)
			{
				player.alpha = 1;
				player.revealed = true;
				player.alarm[1] = 180;
				if(player.image_index == 0 and !player.hit)
				{
					player.image_index = 1;
					player.alarm[11] = 5;
				}
			}
			else
			{
				if(global.soundfx) audio_play_sound(snd_explosion, 0, false);
				player.image_alpha = 0;
				instance_create_layer(player.x, player.y, "Particles", obj_explosion);
			}
		}
		else //you got hit
		{
			if(!eliminated)
			{
				if(obj_client_gunner.image_index == 0 and !obj_client_gunner.hit)
				{
					obj_client_gunner.image_index = 1;
					obj_client_gunner.alarm[11] = 5;
				}
			
				if(obj_client_gunner.speed == 0)
				{
					obj_client_gunner.direction = dir;
					obj_client_gunner.speed += 10;
				}
			}
			else
			{
				if(global.soundfx) audio_play_sound(snd_explosion, 0, false);
				obj_client_gunner.image_alpha = 0;
				obj_client_gunner.dead = true;
				global.currenthealth = 0;
				instance_create_layer(obj_client_gunner.x, obj_client_gunner.y, "Particles", obj_explosion);
				
				with(obj_pause)
				{
					if(obj_chatbox.selected)
					{
						obj_chatbox.selected = false;
						obj_chatbox.blink = false;	
						obj_chatbox.txt = "";
					}	
					
					if(paused)
					{
						paused = false;	
						with(b1) instance_destroy();
						with(b2) instance_destroy();
					}
					
					c1 = instance_create_layer(__view_get(e__VW.XView, 0) + 1280, __view_get(e__VW.YView, 0) + 960, "UI", obj_button_green);
					c1.text = "Respawn";
					c2 = instance_create_layer(__view_get(e__VW.XView, 0) + 1280, __view_get(e__VW.YView, 0) + 1120, "UI", obj_button_red);
					c2.text = "Leave Server";
				}
			}
		}
		
		//find the names of the players (if eliminated)
		var pName = "";
		var hitName = "";
		
		if(global.playerid == pId)
		{
			pName = global.playername;	
		}
		else
		{
			with(obj_enemy_gunner)
			{
				if(remotePlayerId == pId)
				{
					pName = remotePlayerName;	
				}
			}
		}
		
		if(global.playerid == hitId)
		{
			hitName = global.playername;	
		}
		else
		{
			with(obj_enemy_gunner)
			{
				if(remotePlayerId == hitId)
				{
					hitName = remotePlayerName;	
				}
			}
		}
		
		if(eliminated)
		{
			client_show_notification(pName + " eliminated " + hitName, 1280, 400);
		}
		
		if(global.soundfx) audio_play_sound(snd_attack2, 0, false);
	break;
	
	case message_player_health:
		var pId = buffer_read(buffer, buffer_u32);
		var pHealth = buffer_read(buffer, buffer_u32);
		
		if(global.playerid == pId)
		{
			global.currenthealth = pHealth;	
		}
		else
		{
			with(obj_enemy_gunner)
			{
				if(remotePlayerId == pId)	
				{
					remotePlayerHealth = pHealth;
				}
			}
		}
	break;
	
	case message_player_respawn:
		var pId = buffer_read(buffer, buffer_u32);
		var xx = buffer_read(buffer, buffer_f32);
		var yy = buffer_read(buffer, buffer_f32);
		
		if(global.playerid == pId)
		{
			obj_client_gunner.image_alpha = 1;
			obj_client_gunner.dead = false;
			global.currenthealth = 200;
			global.currentammo = 100;
			obj_client_gunner.x = xx;
			obj_client_gunner.y = yy;
			
			with(obj_pause)
			{
				with(c1) instance_destroy();
				with(c2) instance_destroy();
			}	
		}
		else
		{
			with(obj_enemy_gunner)
			{
				if(remotePlayerId == pId)
				{
					image_alpha = 1;
					x = xx;
					y = yy;
				}
			}
		}
	break;
}