/// @description Insert description here
// You can write your code in this editor
if(roomFlipped){
	image_yscale = -1;
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


