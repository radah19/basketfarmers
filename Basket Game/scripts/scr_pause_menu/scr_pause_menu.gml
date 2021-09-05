function scr_pause_menu(){
draw_sprite_ext(spr_menuscreen, 0, 0, 0, 1, 1, 0, c_white, 1);
	
	draw_set_color(c_white);
	draw_set_font(fn_menutext);
	var menu_text = "Resume";
	draw_text(room_width/2 - ((string_length(menu_text)) * font_get_size(fn_menutext) / 2), 80, menu_text);
	var menu_text4 = "Inventory";
	draw_text(room_width/2 - ((string_length(menu_text4)) * font_get_size(fn_menutext) / 2), 100, menu_text4);
	var menu_text2 = "Settings";
	draw_text(room_width/2 - ((string_length(menu_text2)) * font_get_size(fn_menutext) / 2), 120, menu_text2);
	var menu_text3 = "Save and Quit";
	if(global.shop_pause == false) && (global.player_is_ready == true){
		var menu_text3 = "Save and Quit";
	} else {
		var menu_text3 = "Quit";
	}
	draw_text(room_width/2 - ((string_length(menu_text3)) * font_get_size(fn_menutext) / 2), 140, menu_text3);
	
	if(keyboard_check_pressed(vk_down)){
		if(selection == 3){
			selection = 3;	
		} else {
			selection++;	
		}
	}
	
	if(keyboard_check_pressed(vk_up)){
		if(selection == 0){
			selection = 0;	
		} else {
			selection--;	
		}
	}
	
	draw_sprite_ext(spr_pointer, 0, room_width/2 + 40, 67 + (selection * 20), 1, 1, 0, c_white, 1);
	
	
	if(keyboard_check_pressed(vk_space)){
		switch(selection){
			case 0:
				instance_activate_all();
				global.pause = 0;
				selection = 0;
				break;
				
			case 1:
				global.pause = 2;
				global.inventory_current_row = 1;
				selection = 0;
				break;
				
			case 2:
				global.pause = 3;
				selection = 0;
				break;
				
			case 3:
				game_restart();
				break;
				
		}
	}
}