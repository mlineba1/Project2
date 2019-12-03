/// @description This will set the horizontal speed of the arrow object
// You can write your code in this editor

image_angle = -global.room_angle;

speed_amount = 6;

if (obj_playerPart2.image_xscale == 1)
{
	hspeed =  dcos(obj_player.move_angle - 90) * speed_amount;
	vspeed = dsin(obj_player.move_angle - 90) * speed_amount;
}else
{
	//obj_arrow.sprite_index = spr_arrowReverse;
	image_xscale = -1;
	hspeed =  dcos(obj_player.move_angle - 90) * -speed_amount;
	vspeed = dsin(obj_player.move_angle - 90) * -speed_amount;
}

//hspeed = 0;
//x = obj_player.x;
//y = obj_player.y - 5;