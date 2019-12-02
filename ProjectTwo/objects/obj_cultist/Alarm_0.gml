/// @description Insert description here
// You can write your code in this editor
if(roomFlipped){
	instance_create_depth(x,y+64,layer_get_id("instances"), obj_cFireball);
alarm[0] = 180;
} else {
instance_create_depth(x,y-64,layer_get_id("instances"), obj_cFireball);
alarm[0] = 180;
}