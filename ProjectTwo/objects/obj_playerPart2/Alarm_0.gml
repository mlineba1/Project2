// Create the arrow
//instance_create_layer(obj_player.x, obj_player.y-1000, "Instances",obj_arrow);
instance_create_layer(obj_player.x, obj_player.y, "Instances",obj_arrow);
//obj_arrow.sprite_index = spr_arrow;
//if (obj_playerPart2.image_xscale)
//{
//	obj_arrow.hspeed =  4;
//}else
//{
//	obj_arrow.sprite_index = spr_arrowReverse;
//	obj_arrow.hspeed =  -4;
//}

attack = false;
//image_speed = 0;