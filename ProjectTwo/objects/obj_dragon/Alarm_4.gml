/// @description Insert description here
// You can write your code in this editor
if(roomFlipped){
	if(image_xscale == 1){
		instance_create_depth(x-406,y+126,layer_get_id("instances"), obj_cFireball);
	} else {
		instance_create_depth(x+406,y+126,layer_get_id("instances"), obj_cFireball);
	}
canShoot = true;
} else {
	if(image_xscale == 1){
		instance_create_depth(x-406,y-126,layer_get_id("instances"), obj_cFireball);
	} else {
		instance_create_depth(x+406,y-126,layer_get_id("instances"), obj_cFireball);
	}
	canShoot = true;
}