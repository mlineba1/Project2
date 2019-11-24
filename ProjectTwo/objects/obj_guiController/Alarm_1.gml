/// @description Insert description here
// You can write your code in this editor
if(startFlip){
	instance_create_depth(1824,128,layer_get_id("Instances"), obj_player);
	instance_create_depth(1824,128,layer_get_id("Instances"), obj_playerPart2);

} else {
	instance_create_depth(128,864,layer_get_id("Instances"), obj_player);
	instance_create_depth(128,864,layer_get_id("Instances"), obj_playerPart2);
}
	
	