if(global.music)
{
	audio_stop_all();
	audio_play_sound(mus_game, 0, true);
}

switch(global.class)
{
	case 1:
		global.currenthealth = 200;
		global.displayhealth = 200;
		global.maxhealth = 200;
	break;
	
	case 2:
		global.currenthealth = 150;
		global.displayhealth = 150;
		global.maxhealth = 150;
	break;
}

global.currentammo = 100;
global.maxammo = 100;
global.displayammo = 100;
global.stage = 1;
score = 0;
global.displayscore = 0;
global.combo = 0;