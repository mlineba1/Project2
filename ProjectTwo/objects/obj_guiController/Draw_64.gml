/// @description GUI display

//drew a healthbar with maximum health of 100, and falls by 10% when hit by an enemy.
//draw_healthbar(100, 100, 500, 150, health, c_white, c_red, c_green, 0, true, true)

draw_set_color(c_white);

if(!variable_instance_exists(id, "score")) score = 0;
draw_text(50, 50, string("Score: ") + string(score));


//if(!variable_instance_exists(id, "lives"))
draw_text(800,50, string("Lives: ")+string(lives));

offset = 0;
if(!variable_instance_exists(id, "pHealth"))
for(var i = pHealth; i > 0; --i) {
	draw_sprite(spr_player, 0, 200 + offset, 50);
	offset += sprite_get_width(spr_player) + 16;
}

if(pHealth <= 0){
	draw_text(view_wport[0]/2, view_hport[0]/2, "You Lose!");
	lives -=1;
	obj_player.x = 128;
obj_player.y = 864;

if(lives <= 0){
	game_restart()
}
	//alarm[0] = 1;
}
