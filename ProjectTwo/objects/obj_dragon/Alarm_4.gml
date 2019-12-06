/// @description Dragon attack
attack1 = 0;
attack2 = 0;
attack3 = 0;

temp = choose(1,2,3);
attack1 = temp;
attack2 = temp;
attack3 = temp;
sprite_index = spr_dragonIdle 

if(attack1 == 1){
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

if(attack2 == 2){
		if(roomFlipped){
		if(image_xscale == 1){
		instance_create_depth(x-406,y+126,layer_get_id("instances"), obj_dFireball1a);
			instance_create_depth(x-406,y+126,layer_get_id("instances"), obj_dFireball1b);
			
			instance_create_depth(x-406,y+126,layer_get_id("instances"), obj_dFireball1c);
			
		} else {
			instance_create_depth(x+406,y+126,layer_get_id("instances"), obj_dFireball1a);
			 instance_create_depth(x+406,y+126,layer_get_id("instances"), obj_dFireball1b);
			instance_create_depth(x+406,y+126,layer_get_id("instances"), obj_dFireball1c);
			
		}
	alarm[4] = room_speed *4;
	alarm[5] = room_speed * 2;
	} else {
		if(image_xscale == 1){
			instance_create_depth(x-406,y-126,layer_get_id("instances"), obj_dFireball1a);
			instance_create_depth(x-406,y-126,layer_get_id("instances"), obj_dFireball1b);
			
			instance_create_depth(x-406,y-126,layer_get_id("instances"), obj_dFireball1c);
			
		} else {
			instance_create_depth(x+406,y-126,layer_get_id("instances"), obj_dFireball1a);
			 instance_create_depth(x+406,y-126,layer_get_id("instances"), obj_dFireball1b);
			 instance_create_depth(x+406,y-126,layer_get_id("instances"), obj_dFireball1c);
			
		}
	alarm[4] = room_speed *4;
	alarm[5] = room_speed * 2;
		}
	

}


if(attack3 == 3){
	attack3a = true;
	alarm[6] = 30;
}


