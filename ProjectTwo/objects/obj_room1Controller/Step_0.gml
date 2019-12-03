/// @description Insert description here
// You can write your code in this editor
if(roomFlipped && onlyonce){
	instance_create_depth(960,576,layer_get_id("Instances"), obj_powerUp1 );
	instance_create_depth(1728,640,layer_get_id("Instances"), obj_exit );
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
		var back_id = layer_background_get_id(layer_get_id("Background"));
		layer_background_sprite(back_id, spr_Level1b);
	onlyonce = false;
}

if(startFlip && onlyoncePart2){
	var b1 = instance_create_depth(1696,544,layer_get_id("Instances"), obj_block );
	var b2 = instance_create_depth(1696,480,layer_get_id("Instances"), obj_block );
	var b3 = instance_create_depth(1696,416,layer_get_id("Instances"), obj_block  );
	var s1 = instance_create_depth(1664,320,layer_get_id("Instances"), obj_spike );
	with(b1){
		alarm[0] = room_speed * 15;
	}
	with(b2){
		alarm[0] = room_speed * 15;
	}
	with(b3){
		alarm[0] = room_speed * 15;
	}
	with(s1){
		alarm[0] = room_speed * 15;
	}
	onlyoncePart2 = false;
}