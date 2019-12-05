/// @description Insert description here
// You can write your code in this editor

sprite_index = spr_dragonIdle
if(roomFlipped){
	if(image_xscale == 1){
		instance_create_depth(x-406,y+126,layer_get_id("instances"), obj_dFireball1);
	} else {
		instance_create_depth(x+406,y+126,layer_get_id("instances"), obj_dFireball1);
	}
alarm[4] = room_speed *4;
alarm[5] = room_speed * 2;
canShoot = true;
} else {
	if(image_xscale == 1){
		instance_create_depth(x-406,y-126,layer_get_id("instances"), obj_dFireball1);
	} else {
		instance_create_depth(x+406,y-126,layer_get_id("instances"), obj_dFireball1);
	}
alarm[4] = room_speed *4;
alarm[5] = room_speed * 2;
canShoot = true;
	}



