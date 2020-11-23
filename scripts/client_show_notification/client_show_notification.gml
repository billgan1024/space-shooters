var txt = argument0;
var xx = argument1;
var yy = argument2;

with(obj_message){
	instance_destroy();
}
var msg = instance_create_layer(xx, yy, "UI", obj_message);
msg.vspeed = 0;
msg.decay = 0.01;
msg.font = fnt_menu2;
msg.text = txt;