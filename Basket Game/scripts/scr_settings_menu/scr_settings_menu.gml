function scr_settings_menu(){
	draw_sprite_ext(spr_menuscreen, 0, 0, 0, 1, 1, 0, c_white, 1);
	
	draw_set_color(c_white);
	draw_set_font(fn_menutext);
	var menu_text = "Back";
	draw_text(room_width/2 - ((string_length(menu_text)) * font_get_size(fn_menutext) / 2), 80, menu_text);
	/*if(global.toggle_fullscreen == true){
		var menu_text1 = string("Fullscreen");
	} else {
		var menu_text1 = string("Windowed");	
	}
	draw_text(room_width/2 - ((string_length(menu_text1)) * font_get_size(fn_menutext) / 2), 100, menu_text1);
	*/
	var menu_text2 = "Master: " + string(ceil(global.sound_master * 100)) + "%";
	draw_text(room_width/2 - ((string_length(menu_text2)) * font_get_size(fn_menutext) / 2), 120, menu_text2);
	var menu_text3 = "Sounds: " + string(ceil(global.sound_sounds * 100)) + "%";
	draw_text(room_width/2 - ((string_length(menu_text3)) * font_get_size(fn_menutext) / 2), 140, menu_text3);
	var menu_text4 = "Music: " + string(ceil(global.sound_music * 100)) + "%";
	draw_text(room_width/2 - ((string_length(menu_text4)) * font_get_size(fn_menutext) / 2), 160, menu_text4);
	var menu_text4 = "Zoom: " + string(global.camera_zoom);
	draw_text(room_width/2 - ((string_length(menu_text4)) * font_get_size(fn_menutext) / 2), 100, menu_text4);
	
	draw_sprite_ext(spr_pointer, 0, room_width/2 + 40, 67 + (selection * 20), 1, 1, 0, c_white, 1);
	
	if(keyboard_check_pressed(vk_down)){
		if(selection == 4){
			selection = 4;	
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
	
	if(keyboard_check_pressed(vk_escape)){	
		if(global.game_started == true){
			global.pause = 1;
			selection = 2;	
		} else {
			options_toggle = 0;
			selection = 2;
		}
	} 
	
	draw_sprite_ext(spr_pointer, 0, room_width/2 + 40, 67 + (selection * 20), 1, 1, 0, c_white, 1);
	
	var right = keyboard_check(vk_right);
	var left = keyboard_check(vk_left);

	switch(selection){
		case 0:
			if(keyboard_check_pressed(vk_space)){
				if(global.game_started == true){
					global.pause = 1;
					selection = 2;
				} else {
					options_toggle = 0;
					selection = 2;
				}
			}
			break;
				
		case 1:
			/*if(keyboard_check_pressed(vk_space)){
				if(global.toggle_fullscreen == true){
					global.toggle_fullscreen = false;
					window_set_fullscreen(false);
				} else {
					global.toggle_fullscreen = true;
					window_set_fullscreen(true);
				}
			}*/
			if(keyboard_check_pressed(vk_left) && global.camera_zoom > 1) global.camera_zoom--;
			if(keyboard_check_pressed(vk_right) && global.camera_zoom < 5) global.camera_zoom++;
			window_set_size(room_width * global.camera_zoom, room_height * global.camera_zoom);
			break;
			
		case 2:
			if(left) and (global.sound_master > 0) global.sound_master -= 0.01;
			if(right) and (global.sound_master < 1) global.sound_master += 0.01;
			break;
			
		case 3:
			if(left) and (global.sound_sounds > 0) global.sound_sounds -= 0.01;
			if(right) and (global.sound_sounds < 1) global.sound_sounds += 0.01;
			break;
			
		case 4:
			if(left) and (global.sound_music > 0) global.sound_music -= 0.01;
			if(right) and (global.sound_music < 1) global.sound_music += 0.01;
			break;
				
		
	}
	
}