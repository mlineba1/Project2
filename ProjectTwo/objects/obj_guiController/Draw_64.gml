/// @description GUI display
draw_set_color(c_black);

if(!variable_instance_exists(id, "score")) score = 0;
draw_text(50, 50, string("Score: ") + string(score));


if(!variable_instance_exists(id, "lives")) lives = 3;
draw_text(800,50, string("Lives: ")+string(lives));

offset = 0;
if(!variable_instance_exists(id, "pHealth")) pHealth = 5;
for(var i = pHealth; i > 0; --i) {
	draw_sprite(spr_player, 0, 200 + offset, 50);
	offset += sprite_get_width(spr_player) + 16;
}