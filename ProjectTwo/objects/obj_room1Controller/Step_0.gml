/// @description Insert description here
// You can write your code in this editor
if(roomFlipped && onlyonce){
	instance_create_depth(1090,510,layer_get_id("Instances"), obj_powerUp1 );
	instance_destroy(rat1);
	instance_destroy(rat2);
	instance_destroy(rat3);
	var rat4 = instance_create_depth(0,0,layer_get_id("Instances"), obj_rat);
		with(rat4){
		path_start(ratPath4, 2, path_action_reverse, true);
		
		}
	var rat5 = instance_create_depth(0,0,layer_get_id("Instances"), obj_rat);
		with(rat5){
		path_start(ratPath5, 2, path_action_reverse, true);	
		
		}
	onlyonce = false;
}