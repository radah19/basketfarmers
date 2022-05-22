if(global.game_started == true){
	switch(global.pause){
		case 0:
			if(global.status_timer_screenwarpmushroom > 0) || (global.status_timer_confusionmushroom > 0) || (global.status_timer_redmushroom > 0){
				draw_surface_ext(application_surface, surface_xoffset, surface_yoffset, surface_xscale, 1, surface_rotation, surface_color, 1);	
			}
	
			if(global.farmer_total_time == 0) && (!instance_exists(obj_fruit)) && (global.shop_pause == false) && (global.player_is_ready == false){
				scr_item_list();
				global.shop_pause = true;	
				global.shop_temp_timer = 0;
				global.update_shop_items = true;
				global.player_is_ready = true;
				global.popup_y_offset = 240;
				global.tierlist_create = true;
				
				var temp_add = (global.item_devildeal * 50) + (global.item_eyeball * 20);
				global.farmer_cash += temp_add;
				global.farmer_score += temp_add;
		
				if(global.farmer_date mod 3 == 0){
					if(global.farmer_cash >= global.farmer_rent){
							global.farmer_cash -= global.farmer_rent;
							
							rent_counter++;
							if(rent_counter < array_length(rent_arr)){
								global.farmer_rent = rent_arr[rent_counter];
							} else {
								global.farmer_rent += 100;
							}
							
					} else {
							global.farmer_date = -2;
					}
				} 
			}
	
			if(global.status_timer_darkmushroom > 0){
				draw_sprite_ext(spr_darkgradient, 0, 0, 0, 300, 4, 0, c_white, 1);
			}
			
			if(global.status_timer_greenjuice > 0){
				draw_set_color(c_green);
				draw_set_alpha(0.6);
				draw_rectangle(-1, -1, room_width + 1, room_height + 1, false);
				draw_set_color(c_white);
				draw_set_alpha(1);
			}
	
	
			if(global.shop_pause == true) && (global.player_is_ready == true){
				if(global.farmer_date == -1){
					scr_popupbox("Show Message", 0, "Welcome to Basket Farmers! \nUse Left and Right Keys to Move Around, Space to Select / Enter \nMake Sure to have enough Money for Rent every 3 days!");
				} else if(global.farmer_date == -2) {
					scr_popupbox("Show Game Over", 0, "You were unable to pay Rent on time, Game Over! \n\nYour final score: " 
														+ string(global.farmer_score) + " \nDays Lasted: " + string(global.farmer_days_passed)
														+ " \n\nPress Space to go back to the main menu");
					
					
				} else if(global.farmer_date mod 3 == 0) {	
					scr_popupbox("Show Rent and Shop", global.shop_temp_timer, "Rent was paid! Your Rent now is " 
														+ string(global.farmer_rent) + "\nPress Space to Continue");
				}  else {
					scr_popupbox("Show List Pairs", 1, "Hi , I am default message :)");
				}
			}
	
			if(global.shop_pause == false) && (global.player_is_ready == true){
				var peepeepoopoo = "Press 'Space' When Ready";
				draw_set_color(c_white);
				draw_set_font(fn_popuptext);
				draw_text(room_width/2 - ((string_length(peepeepoopoo)*3)/2), 15, peepeepoopoo);
				
				draw_text(10, 5, "Gravity:  " + string(global.player_grav));
				draw_text(10, 15, "Acceleration:  " + string(global.player_acc));
				draw_text(10, 25, "Speed:  " + string(global.player_spd));
				
		
				if(global.space_temp_timer > 0){
					global.space_temp_timer--;	
				}
		
				if(keyboard_check_pressed(vk_space)) && (global.space_temp_timer == 0){
					global.player_is_ready = false;
					global.space_temp_timer = -1;
					global.farmer_total_time = global.farmer_max_time + (global.item_watch * 90);
					global.farmer_date++;
					global.farmer_days_passed++;
					if(global.farmer_date < 1){
						global.farmer_date++;
					}
			
					if(global.item_extrabasket > 0){
						for(var i = 0; i < global.item_extrabasket; i++){
							var basket = instance_create_depth(irandom_range(10, room_width - 10), 190, 10, obj_extracollector);
							basket.image_index = 0;
							basket.image_blend = make_color_rgb(irandom_range(50, 255), irandom_range(50, 255), irandom_range(50, 255));
						}
					}
			
						if(global.item_top > 0){
							for(var i = 0; i < global.item_top; i++){
								var basket = instance_create_depth(irandom_range(20, 280), irandom_range(20, 180), 10, obj_extracollector);
								basket.image_index = 1;
							}
						}
				}
			}
			break;

		case 1:
			scr_pause_menu();
			break;
	
		case 2:
			scr_inventory_menu();
			break;
	
		case 3:
			scr_settings_menu();
			break;
	
	}

}

if(global.game_started == false){
	switch(options_toggle){
		case 0:
			scr_title_menu();
			break;
		
		case 1:
			scr_settings_menu();
			break;
			
		case 2:
			scr_areyousure_menu();
			break;
			
		case 3:
			scr_characterselect_menu();
	}	
}

//Debug
if(keyboard_check_pressed(vk_f1)){
	if(show_debug == false){
		show_debug = true;	
	} else {
		show_debug = false;	
	}
}

if(show_debug == true){
	draw_set_font(fn_debug_text);
	draw_set_color(c_lime);
	
	draw_text(1, 1, "Grav:  " + string(global.player_grav));
	draw_text(1, 13, "Acc:  " + string(global.player_acc));
	draw_text(1, 24, "Spd:  " + string(global.player_spd));
}

if(keyboard_check_pressed(vk_f2)){
	global.farmer_total_time = 0;	
}

if(keyboard_check_pressed(vk_f3)){
	global.farmer_cash += 5000;	
}