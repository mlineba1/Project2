/* Start of Player Movement Code */

// The gravity direction and what direction the controls make the player move in are dependent on the angle of the room view
// dcos and dsin are the same as sin and cos, but take degrees as an argument rather than radians
// The unit circle is used to determine where the directions are, since the radius of the circle is always 1
// sin is used to determine how much y, while cos is used to determine how much x, to move 1 pixel in a direction.

// The angle the room view's at plus an offset of 90 degrees
move_angle = global.room_angle + 90;

// Left and Right Movement

// Reset the side movement to zero
side_mov_x = 0;
side_mov_y = 0;

// Check the left and right movement keys
if (keyboard_check(ord("A")) && keyboard_check(ord("D")))
{
	// Don't move if both left and right are being pressed
	side_mov_x = 0;
	side_mov_y = 0;
}else if (keyboard_check(ord("A")))
{
	// Move in the left direction
	side_mov_x = dcos(move_angle + 90) * player_speed;
	side_mov_y = dsin(move_angle + 90) * player_speed;
	
}else if (keyboard_check(ord("D")))
{
	// Move in the right direction
	side_mov_x = dcos(move_angle - 90) * player_speed;
	side_mov_y = dsin(move_angle - 90) * player_speed;
	
}else
{
	// Don't move if neither left nor right is being pressed
	//sprite_index = spr_player;
	side_mov_x = 0;
	side_mov_y = 0;
}

// Jumping and gravity


// Jumping after the second powerup is grabbed
if(powerup2){
	jlimit = 1; 
	// if W is pressed and the player has available jumps
	if (keyboard_check(ord("W")) &&  powerup2 && jcount < jlimit && jcooldown)
	{
	// Set the amount of jump speed remaining to the max strength

		jump_remaining = jump_strength;
		jcount++;
		jcooldown = false;
		alarm[1] = 15; // so the player can't double-jump in 2 frames
	}
} else {
	// if powerup 2 hasnt been collected;
	// Jump if W is pressed and the player is on the ground
if (keyboard_check(ord("W")) && place_meeting(x+dcos(move_angle),y+dsin(move_angle), obj_block))
{
	// Set the amount of jump speed remaining to the max strength

	jump_remaining = jump_strength;
}
}

	// Resets the double-jump after the player touches the ground
if(place_meeting(x+dcos(move_angle),y+dsin(move_angle), obj_block)){
	jcount = 0
}

// Add gravity to the player, and reduce the jump speed remaining
jump_remaining = max(jump_remaining+grav_strength, grav_strength);

// Add gravity or jumping to the direction that the player is jumping in
jump_mov_x = dcos(move_angle + 180) * jump_remaining;
jump_mov_y = dsin(move_angle + 180) * jump_remaining;

// Set the total amount that the player is moving
total_mov_x = side_mov_x + jump_mov_x;
total_mov_y = side_mov_y + jump_mov_y;

// Check for collisions

// Check for collisions in the x direction
if (place_meeting(x+total_mov_x, y, obj_block))
{
		// There will be a collision in the x direction, so
		while (!place_meeting(x+sign(total_mov_x),y,obj_block))
		{
			// change the player's x position by 1 until they're right up against the block
			x += sign(total_mov_x);
		}
		// change xmov to 0 since we've already moved in that direction all we can
		total_mov_x = 0;
}

// Check for collisions in the y direction
if (place_meeting(x,y+total_mov_y,obj_block))
{
	// There will be a collision in the y direction, so
	while (!place_meeting(x,y+sign(total_mov_y),obj_block))
		{
			// change the player's y position by 1 until they're right up against the block
			y += sign(total_mov_y);
		}
	// change ymov to 0 since we've already moved in that direction all we can
	total_mov_y = 0;
}


// Change the player's position
x += total_mov_x;
y += total_mov_y;

/* End of Player Movement Code */

//invincibility
