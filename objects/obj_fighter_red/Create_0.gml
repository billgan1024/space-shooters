alarm[0] = random(60) + 1;
randomize();
offset = random(10) + 1;
life = 200;
displaylife = 200;
lifemax = 200;
revealed = false;
alpha = 0;
drop = noone;
move = false;
hit = false;
loot = true;
r = true;
if(r)
{
	x = random(room_width - sprite_width) + (sprite_width/2);
}
spd = 0;
dir = 0;
ct = 0;
stunned = false;
stun = 0;
alarm[4] = 4;