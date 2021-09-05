function scr_areyousure_menu(){
	draw_sprite_ext(spr_menuscreen, 0, 0, 0, 1, 1, 0, c_white, 1);
	draw_sprite_ext(spr_title, 0, 0, 0, 1, 1, 0, c_white, 1);
	
	draw_set_font(fn_menutext);
	
	draw_text(50, 140, "Start");
	draw_text(50, 160, "Continue Run");
	draw_text(50, 180, "Options");
	draw_text(50, 200, "Exit");
	
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(0, 0, window_get_width(), window_get_height(), false);
	
	draw_set_alpha(1);
	draw_set_color(c_white);
	
	draw_sprite_ext(spr_menuscreen, 0, 60, 48, 0.6, 0.6, 0, c_white, 1);
	
	draw_set_color(c_yellow);
	var menu_text = "Are You Sure?";
	draw_text(room_width/2 - ((string_length(menu_text)) * font_get_size(fn_menutext) / 2), 75, menu_text);
	var menu_text1 = "Any Progress made in your \nLast Saved Run will be lost";
	draw_text(70, 90, menu_text1);
	
	draw_set_color(c_white);
	draw_text(95, 130, "Yes");
	draw_text(185, 130, "No");
	
	if(keyboard_check_pressed(vk_right)){
		if(selection == 1){
			selection = 1;	
		} else {
			selection++;	
		}
	}
	
	if(keyboard_check_pressed(vk_left)){
		if(selection == 0){
			selection = 0;	
		} else {
			selection--;	
		}
	}
	
	draw_sprite_ext(spr_pointer, 0, 120 + (selection * 90), 140, 1, 1, 270, c_white, 1);
	
	
	if(keyboard_check_pressed(vk_space)){
		switch(selection){
			case 0:
				selection = 0;
				options_toggle = 3;
				break;
				
			case 1:
				options_toggle = 0;
				selection = 0;
				break;
		}
	}
}