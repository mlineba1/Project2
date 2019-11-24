x = obj_player.x - dcos(obj_player.move_angle) * (sprite_height / 2) + dcos(obj_player.move_angle) * (obj_player.sprite_height / 2)
y = obj_player.y - dsin(obj_player.move_angle) * (sprite_height / 2) + dsin(obj_player.move_angle) * (obj_player.sprite_height / 2)
image_angle = -global.room_angle;

if (keyboard_check(ord("A")))
{
	image_xscale = left_side;
	sprite_index = spr_playerWalk_right;
}else if (keyboard_check(ord("D")))
{
	image_xscale = right_side;
	sprite_index = spr_playerWalk_right;
}else
{
	sprite_index = spr_player;
}