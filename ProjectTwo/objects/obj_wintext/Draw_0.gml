text = "You have slain the dragon! \nUshering a new era a peace and prosperity, you reclaim your lost arrows.\nAs you pull your arrows from your foe, you notice a large white piece of...porcelain? in the dead dragons scale.\nIt can't be porcelain, its too flakey, eggshell?\n As you come to the realization, you hear a deafing roar in the distance as you're overcome with fear\n To be Continued...\nPress Left Mouse Button to return to the home screen, thank you for playing!\nTotal score: "+string(score);
draw_set_color(c_white);
//draw_text((window_get_width()/2)+string_width(text),window_get_height()/3,text);
//draw_set_halign(fa_center);
draw_text((camera_get_view_width(view_camera[0])/2)-(string_width(text)/2),camera_get_view_height(view_camera[0])/3,text);