ct += 1/60;
displayhealth = smooth_approach(displayhealth, remotePlayerHealth, 0.4);

if(alpha > 0 and !revealed)
{
	alpha -= 0.05;
}