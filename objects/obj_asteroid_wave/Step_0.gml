switch(level)
{
	case 6:
		switch(time)
		{
			case 90: instance_create_layer(room_width/2, -98, "Environment", obj_asteroid);
			break;
			case 105: instance_create_layer(room_width/2, -98, "Environment", obj_asteroid);
			break;
			case 120: instance_create_layer(room_width/2, -98, "Environment", obj_asteroid);
			break;
			case 135: instance_create_layer(room_width/2, -98, "Environment", obj_asteroid);
			break;
			case 150: instance_create_layer(room_width/2, -98, "Environment", obj_asteroid);
			break;
			case 165: instance_create_layer(room_width/2, -98, "Environment", obj_asteroid);
			instance_destroy();
			break;
		}
	break;
	
	case 7:
		switch(time)
		{
			case 90: instance_create_layer(room_width/2, -98, "Environment", obj_asteroid);
			break;
			case 110: instance_create_layer(room_width/2, -98, "Environment", obj_asteroid);
			break;
			case 130: instance_create_layer(room_width/2, -98, "Environment", obj_asteroid);
			break;
			case 150: instance_create_layer(room_width/2, -98, "Environment", obj_asteroid);
			break;
			case 170: instance_create_layer(room_width/2, -98, "Environment", obj_asteroid);
			break;
		}
	break;
	
	case 9:
		switch(time)
		{
			case 90: instance_create_layer(room_width/2, -98, "Environment", obj_asteroid);
			break;
			case 105: instance_create_layer(room_width/2, -98, "Environment", obj_asteroid);
			break;
			case 120: instance_create_layer(room_width/2, -98, "Environment", obj_asteroid);
			break;
			case 135: instance_create_layer(room_width/2, -98, "Environment", obj_asteroid);
			break;
			case 150: instance_create_layer(room_width/2, -98, "Environment", obj_asteroid);
			break;
			case 165: instance_create_layer(room_width/2, -98, "Environment", obj_asteroid);
			instance_destroy();
			break;
		}
	break;
	
	case 10:
	switch(time)
		{
			case 60: instance_create_layer(room_width/2, -98, "Environment", obj_asteroid);
			break;
			case 75: instance_create_layer(room_width/2, -98, "Environment", obj_asteroid);
			break;
			case 90: instance_create_layer(room_width/2, -98, "Environment", obj_asteroid);
			break;
			case 105: instance_create_layer(room_width/2, -98, "Environment", obj_asteroid);
			break;
			case 120: instance_create_layer(room_width/2, -98, "Environment", obj_asteroid);
			break;
			case 135: instance_create_layer(room_width/2, -98, "Environment", obj_asteroid);
			instance_destroy();
			break;
		}
	break;
}
time++;