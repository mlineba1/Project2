/// @description Insert description here
// You can write your code in this editor
if(roomFlipped && onlyonce){
	instance_create_depth(64,128,layer_get_id("Instances"), obj_powerUp2 );
	instance_create_depth(3648,1664,layer_get_id("Instances"), obj_exit );
	instance_destroy(cultist1);
	instance_destroy(cultist2);
	instance_destroy(cultist3);
	instance_destroy(cultist4);
	instance_destroy(cultist8);
	var cultist5 = instance_create_depth(128,384,layer_get_id("Instances"), obj_cultist);
		with(cultist5){
		image_xscale = -1;
		shot_delay = -60;
		
		}
	var cultist6 = instance_create_depth(1504,1248,layer_get_id("Instances"), obj_cultist);
		with(cultist6){
		
		shot_delay = -60;
		
		}
	var cultist7 = instance_create_depth(3264,224,layer_get_id("Instances"), obj_cultist);
		with(cultist7){
		
		shot_delay = 60;
		
		}
	var cultist9 = instance_create_depth(1376,1952,layer_get_id("Instances"), obj_cultist);
		with(cultist9){
		
		shot_delay = 0;
		
		}
		var back_id = layer_background_get_id(layer_get_id("Background"));
		layer_background_sprite(back_id, spr_level2b);
		
		// Change the color of the blocks once they flip
		if (instance_exists(obj_block))
		{
			obj_block.image_blend = make_color_rgb(0, 51, 24);
		}
		
	onlyonce = false;
}
