// Change the room angle by a small amount, until the view reaches it's final position
if (global.angle_increment > 0)
{
	// if the increment is positive
	global.room_angle = min(global.room_angle + global.angle_increment, global.final_position);
}else if (global.angle_increment < 0)
{
	// if the increment is negative
	global.room_angle = max(global.room_angle + global.angle_increment, global.final_position);
}

// Set the view angle to the new amount
camera_set_view_angle(view_camera[0], global.room_angle);