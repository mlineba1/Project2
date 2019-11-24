/// @description Insert description here
// You can write your code in this editor
if(roomFlipped && onlyonce){
	instance_create_depth(960,576,layer_get_id("Instances"), obj_powerUp1 );
	instance_create_depth(1792,640,layer_get_id("Instances"), obj_exit );
	instance_destroy(rat1);
	instance_destroy(rat2);
	instance_destroy(rat3);
	instance_destroy(obj_tempBlock1);
	instance_destroy(obj_tempSpike1);
	var rat4 = instance_create_depth(0,0,layer_get_id("Instances"), obj_rat);
		with(rat4){
		path_start(ratPath4, 2, path_action_reverse, true);
		
		}
	var rat5 = instance_create_depth(0,0,layer_get_id("Instances"), obj_rat);
		with(rat5){
		path_start(ratPath5, 2, path_action_reverse, true);	
		
		}
		//var back_id = layer_background_get_id(layer_get_id("Background"));
		//layer_background_sprite(back_id, spr_Level1b);
	onlyonce = false;
}

if(startFlip && onlyoncePart2){
	instance_create_depth(1696,544,layer_get_id("Instances"), obj_tempBlock1 );
	instance_create_depth(1696,480,layer_get_id("Instances"), obj_tempBlock1);
	instance_create_depth(1696,416,layer_get_id("Instances"), obj_tempBlock1 );
	instance_create_depth(1664,320,layer_get_id("Instances"), obj_tempSpike1 );
	onlyoncePart2 = false;
}