/// @description Insert description here
// You can write your code in this editor

	if(startFlip){
		instance_create_depth(obj_respawnPoints.After_flip_X,obj_respawnPoints.After_flip_Y,layer_get_id("Instances"), obj_player);
		instance_create_depth(obj_respawnPoints.After_flip_X,obj_respawnPoints.After_flip_Y,layer_get_id("Instances"), obj_playerPart2);

	} else {
		instance_create_depth(obj_respawnPoints.before_flip_X,obj_respawnPoints.before_flip_Y,layer_get_id("Instances"), obj_player);
		instance_create_depth(obj_respawnPoints.before_flip_X,obj_respawnPoints.before_flip_Y,layer_get_id("Instances"), obj_playerPart2);
	}


	
	