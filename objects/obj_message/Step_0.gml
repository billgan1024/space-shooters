if(alpha > 0)
{
	alpha -= decay;
}
else
{
	instance_destroy();
}
if(vspeed < 0)
{
	vspeed += 0.06;	
}

