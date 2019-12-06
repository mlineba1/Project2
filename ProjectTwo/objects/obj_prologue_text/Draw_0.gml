text = "Prologue: You are the Almighty Anna! defender of your kingdom.\nAn evil dragon has been harrassing your home, and it is up to you\nto slay it.\nThe town wizard warns you that you must collect his two lost potions before\nattempting to fight the dragon, they can\nbe found hidden in secure portals along the journey there.\n Press Left Mouse Button to Move on";
draw_set_color(c_white);
//draw_text((window_get_width()/2)+string_width(text),window_get_height()/3,text);
//draw_set_halign(fa_center);
draw_text((camera_get_view_width(view_camera[0])/2)-(string_width(text)/2),camera_get_view_height(view_camera[0])/3,text);