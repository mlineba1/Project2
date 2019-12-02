/// @description Insert description here
// You can write your code in this editor
if(roomFlipped && onlyonce){
	instance_create_depth(64,128,layer_get_id("Instances"), obj_powerUp2 );
	instance_create_depth(3712,1664,layer_get_id("Instances"), obj_exit );
	instance_destroy(cultist1);
	instance_destroy(cultist2);
	instance_destroy(cultist3);
	instance_destroy(cultist4);
	var cultist5 = instance_create_depth(128,384,layer_get_id("Instances"), obj_cultist);
		with(cultist5){
		image_xscale = -1;
		
		}
	onlyonce = false;
}
