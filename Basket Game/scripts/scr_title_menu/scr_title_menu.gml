function scr_title_menu(){
	draw_sprite_ext(spr_menuscreen, 0, 0, 0, 1, 1, 0, c_white, 1);
	draw_sprite_ext(spr_title, 0, 0, 0, 1, 1, 0, c_white, 1);
	
	draw_set_font(fn_menutext);
	
	draw_text(50, 140, "Start");
	draw_text(50, 160, "Continue Run");
	draw_text(50, 180, "Options");
	draw_text(50, 200, "Exit");
	
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
	
	draw_sprite_ext(spr_pointer, 0, 150, 127 + (selection * 20), 1, 1, 0, c_white, 1);
	
	
	
	if(keyboard_check_pressed(vk_space)){
		switch(selection){
			case 0:
				options_toggle = 2;
				selection = 0;
				break;
				
			case 1:
				if(file_exists("data.sav")){
					selection = 0;
					scr_loadgame();
					global.game_started = true;
				}
				break;
				
			case 2:
				options_toggle = 1;
				selection = 0;
				break;
				
			case 3:
				game_end();
				break;
		}
	}
}