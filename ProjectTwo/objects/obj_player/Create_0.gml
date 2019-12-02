// Player Movement Variables
player_speed = 3; // How fast the player moves
jump_strength = 50; // How quickly and high the player jumps upwards
grav_strength = -5; // How quickly the player falls back down
jump_remaining = 0; // The remaining amount of jump velocity/gravity the player has
jcount = 0; // how many times the player has jumped
jlimit = 1; // how many times the player can jump in the air
jcooldown = true;
// How much the player is going to move in the side directions
side_mov_x = 0;
side_mov_y = 0;
// How much the player is going to move in the jump direction
jump_mov_x = 0;
jump_mov_y = 0;

globalvar invincible; // for when the player is attacked
invincible = false;

attacked = false;
