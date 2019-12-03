/// @description Shoot fireball
if(roomFlipped){
	instance_create_depth(x,y+64,layer_get_id("instances"), obj_cFireball);
	sprite_index = spr_cultistWalk;
	alarm[0] = 180 + shot_delay
	alarm[1] = (180 + shot_delay) - 60;
} else {
	sprite_index = spr_cultistWalk;
	instance_create_depth(x,y-64,layer_get_id("instances"), obj_cFireball);
	alarm[0] = 180 + shot_delay;
	alarm[1] = (180 + shot_delay) - 60;
}