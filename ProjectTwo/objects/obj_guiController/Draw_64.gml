/// @description GUI display

//drew a healthbar with maximum health of 100, and falls by 10% when hit by an enemy.
//draw_healthbar(100, 100, 500, 150, health, c_white, c_red, c_green, 0, true, true)

draw_set_color(c_lime);

if(!variable_instance_exists(id, "score")) score = 0;
draw_text(50, 50, string("Score: ") + string(score));


//if(!variable_instance_exists(id, "lives"))
draw_text(50,75, string("Lives: ")+string(lives+1));

offset = 0;
offset2 = 0;
if(!variable_instance_exists(id, "pHealth"))
for(var i = 0; i < pHealth; ++i) {
	if(i<5){
	draw_sprite(spr_health, 0, 185 + offset, 50);
	offset += sprite_get_width(spr_health)+15;
	}
	if(i>=5 && i<=10){
		draw_sprite(spr_life, 0, 200 + offset2, 50);
		offset2 += sprite_get_width(spr_life)+15;
	}
	if(i >= 11){
	}
	
	
}


if(pHealth <= 0 ){
		if(lives <= 0){
			alarm[0] = room_speed * 3;
		} else {
			alarm[1] = room_speed * 3;
			if(score>=10){
			score -=10;
			}
		}
	instance_destroy(obj_playerPart2);
	instance_destroy(obj_player);
	pHealth = 5;
	lives -=1;
}

if(!instance_exists(obj_player) && lives > -1 && !win) draw_text(view_wport[0]/2, view_hport[0]/2, "You Died!");
if(!instance_exists(obj_player) && lives == -1 && !win) draw_text(view_wport[0]/2, view_hport[0]/2, "Game Over!");
	
if(win){
	draw_text(view_wport[0]/2, view_hport[0]/2, "Thank you for playing the demo! \nPress Enter to restart");
	instance_destroy(obj_playerPart2);
	instance_destroy(obj_player);
}


if(powerup1&&notforlong){
	notforlong = false;
	notforlong2 = true;
	alarm[2] = 300;
	
	
}
if(notforlong2){
	draw_text(view_wport[0]/2, view_hport[0]/2, "You've collected a slowfall potion! \nHold E to fall slowly,\nHold E and press W to super jump!");
}

if(powerup2&&notforlong3){
	notforlong3 = false;
	notforlong4 = true;
	alarm[3] = 300;
	
	
}
if(notforlong4){
	draw_text(view_wport[0]/2, view_hport[0]/2, "You've collected a strength potion! \nFireballs dont hurt as much,\nTap W in the air to double-jump!");
}

