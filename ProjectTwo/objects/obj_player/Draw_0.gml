draw_self();

// Draw the dots in front of everything
depth = -1000;

// Draw colored dots to show the directions changing as the room view turns

// Center
draw_set_color(c_white);
draw_circle(x,y,5,false)
// Down
draw_set_color(c_orange);
draw_circle(x + dcos(move_angle) * 32, y + dsin(move_angle) * 32, 5, false);
// Left
draw_set_color(c_blue);
draw_circle(x + dcos(move_angle + 90) * 32, y + dsin(move_angle + 90) * 32, 5, false);
// Right
draw_set_color(c_red);
draw_circle(x + dcos(move_angle - 90) * 32, y + dsin(move_angle - 90) * 32, 5, false);
// UP
draw_set_color(c_yellow);
draw_circle(x + dcos(move_angle + 180) * 32, y + dsin(move_angle + 180) * 32, 5, false);
