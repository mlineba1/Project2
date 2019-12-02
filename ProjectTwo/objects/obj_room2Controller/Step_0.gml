/// @description Insert description here
// You can write your code in this editor
if(roomFlipped && onlyonce){
	instance_create_depth(64,64,layer_get_id("Instances"), obj_powerUp2 );
	instance_create_depth(3712,1664,layer_get_id("Instances"), obj_exit );

	onlyonce = false;
}
