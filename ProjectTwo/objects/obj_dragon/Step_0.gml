/// @description Insert description here
// You can write your code in this editor
if(roomFlipped){
	image_yscale = -1;
} else {
	image_yscale = 1;
}

if(instance_exists(obj_playerPart2)){ //The enemy faces the player
	if(roomFlipped){
		if(obj_playerPart2.x < x){
			image_xscale = 1;
		} else {
			image_xscale = -1;
		}
	} else {
		if(obj_playerPart2.x < x){
			image_xscale = 1;
		} else {
			image_xscale = -1;
		}
	}
} else {
	
}

if(dLife <= 0){
	instance_destroy();
}

if(attack3a){
	if(roomFlipped){
		if(image_xscale == 1){
			instance_create_depth(x-406,y+126,layer_get_id("instances"), obj_dFireball1a);
		} else {
			instance_create_depth(x+406,y+126,layer_get_id("instances"), obj_dFireball1a);
		}
	alarm[4] = room_speed *4;
	alarm[5] = room_speed * 2;
	} else {
		if(image_xscale == 1){
			instance_create_depth(x-406,y-126,layer_get_id("instances"), obj_dFireball1a);
		} else {
			instance_create_depth(x+406,y-126,layer_get_id("instances"), obj_dFireball1a);
		}
	alarm[4] = room_speed *4;
	alarm[5] = room_speed * 2;
		}
}

if(flipper){

	alarm[8] = 60;
	flipper = false;
}