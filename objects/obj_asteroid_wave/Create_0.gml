if(global.soundfx) audio_play_sound(snd_warn, 0, false);
m = instance_create_layer(room_width/2, room_height/3, "UI", obj_warning);
m.text = "Asteroids incoming!";
level = global.stage;
alarm[0] = 1;
time = 0;