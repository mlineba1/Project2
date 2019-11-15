// The gravity direction and what direction the controls make the player move in are dependent on the angle of the room view
// dcos and dsin are the same as sin and cos, but take degrees as an argument rather than radians
// The unit circle is used to determine where the directions are, since the radius of the circle is always 1
// sin is used to determine how much y, while cos is used to determine how much x, to move 1 pixel in a direction.

// The angle the room view's at plus an offset of 90 degrees
move_angle = global.room_angle + 90;

// Left and Right movement
if (keyboard_check(ord("A")) && keyboard_check(ord("D")))
{
	// Don't move if both left and right are being pressed
	xmov = 0;
	ymov = 0;
}else if (keyboard_check(ord("A")))
{
	// Move in the left direction
	xmov = dcos(move_angle + 90) * player_speed;
	ymov = dsin(move_angle + 90) * player_speed;
}else if (keyboard_check(ord("D")))
{
	// Move in the right direction
	xmov = dcos(move_angle - 90) * player_speed;
	ymov = dsin(move_angle - 90) * player_speed;
}else
{
	// Don't move if neither left nor right is being pressed
	xmov = 0;
	ymov = 0;
}

// If there's not a block below the character
if (!place_meeting(x+dcos(move_angle),y+dsin(move_angle), obj_block))
{
	// Add gravity in the down direction
	xmov += dcos(move_angle) * grav_strength;
	ymov += dsin(move_angle) * grav_strength;
}

// Check for collisions in the x direction
if (place_meeting(x+xmov, y, obj_block))
{
		// There will be a collision in the x direction, so
		while (!place_meeting(x+sign(xmov),y,obj_block))
		{
			// change the player's x position by 1 until they're right up against the block
			x += sign(xmov);
		}
		// change xmov to 0 since we've already moved in that direction all we can
		xmov = 0;
}

// Check for collisions in the y direction
if (place_meeting(x,y+ymov,obj_block))
{
	// There will be a collision in the y direction, so
	while (!place_meeting(x,y+sign(ymov),obj_block))
		{
			// change the player's y position by 1 until they're right up against the block
			y += sign(ymov);
		}
	// change ymov to 0 since we've already moved in that direction all we can
	ymov = 0;
}

// Change the player's position
x += xmov;
y += ymov


//invincibility
