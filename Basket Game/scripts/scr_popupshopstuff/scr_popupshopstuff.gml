/// @description scr_popupshopstuff(x_offset, y_offset, message)
/// @function scr_popupshopstuff
/// @param x_offset
/// @param y_offset
/// @param message

function scr_popupshopstuff(argument0, argument1, argument2){ 
	 if(global.shop_temp_timer == 0){
		draw_set_font(fn_menutext);
		draw_text_ext(argument0 + 16, argument1 + 34, argument2, font_get_size(fn_menutext) * 2, 227);
			
			if(keyboard_check_pressed(vk_space)) && (global.popup_canselect == true){
				global.popup_canselect = false;
				global.popup_y_offset = 240;
				global.shop_temp_timer++;
			}
	 }
	 
	 if(global.shop_temp_timer == 1){
			draw_sprite_ext(spr_fruit, global.pair1, argument0 + 19 + B_SPRITE_SIZE, argument1 + 41 + B_SPRITE_SIZE, 2, 2, 0, c_white, 1);
			draw_sprite_ext(spr_fruit, global.pair1b, argument0 + 19 + 32 + B_SPRITE_SIZE,  argument1 + 41 + B_SPRITE_SIZE, 2, 2, 0, c_white, 1);
			draw_sprite_ext(spr_fruit, global.pair2, argument0 + 99 + B_SPRITE_SIZE,  argument1 + 41 + B_SPRITE_SIZE, 2, 2, 0, c_white, 1);
			draw_sprite_ext(spr_fruit, global.pair2b, argument0 + 99 + 32 + B_SPRITE_SIZE,  argument1 + 41 + B_SPRITE_SIZE, 2, 2, 0, c_white, 1);
			draw_sprite_ext(spr_fruit, global.pair3, argument0 + 179 + B_SPRITE_SIZE,  argument1 + 41 + B_SPRITE_SIZE, 2, 2, 0, c_white, 1);
			draw_sprite_ext(spr_fruit, global.pair3b, argument0 + 179 + 32 + B_SPRITE_SIZE,  argument1 + 41 + B_SPRITE_SIZE, 2, 2, 0, c_white, 1);
			
			draw_set_font(fn_popuptext);
			scr_popuptextcolor(global.pair1);
			draw_text_ext(argument0 + 16, argument1 + 79, ds_grid_get(global.item_index, global.pair1, fruit_item_stat.name) +" - "+  ds_grid_get(global.item_index, global.pair1, fruit_item_stat.stat_type) +":  "+ ds_grid_get(global.item_index, global.pair1, fruit_item_stat.description), font_get_size(fn_popuptext) + 2, 67);
			scr_popuptextcolor(global.pair2);
			draw_text_ext(argument0 + 96, argument1 + 79, ds_grid_get(global.item_index, global.pair2, fruit_item_stat.name) +" - "+  ds_grid_get(global.item_index, global.pair2, fruit_item_stat.stat_type) +":  "+ ds_grid_get(global.item_index, global.pair2, fruit_item_stat.description), font_get_size(fn_popuptext) + 2, 67);
			scr_popuptextcolor(global.pair3);
			draw_text_ext(argument0 + 176, argument1 + 79, ds_grid_get(global.item_index, global.pair3, fruit_item_stat.name) +" - "+  ds_grid_get(global.item_index, global.pair3, fruit_item_stat.stat_type) +":  "+ ds_grid_get(global.item_index, global.pair3, fruit_item_stat.description), font_get_size(fn_popuptext) + 2, 67);
			scr_popuptextcolor(global.pair1b);
			draw_text_ext(argument0 + 16, argument1 + 124, ds_grid_get(global.item_index, global.pair1b, fruit_item_stat.name) +" - "+  ds_grid_get(global.item_index, global.pair1b, fruit_item_stat.stat_type) +":  "+ ds_grid_get(global.item_index, global.pair1b, fruit_item_stat.description), font_get_size(fn_popuptext) + 2, 67);
			scr_popuptextcolor(global.pair2b);
			draw_text_ext(argument0 + 96, argument1 + 124, ds_grid_get(global.item_index, global.pair2b, fruit_item_stat.name) +" - "+  ds_grid_get(global.item_index, global.pair2b, fruit_item_stat.stat_type) +":  "+ ds_grid_get(global.item_index, global.pair2b, fruit_item_stat.description), font_get_size(fn_popuptext) + 2, 67);
			scr_popuptextcolor(global.pair3b);
			draw_text_ext(argument0 + 176, argument1 + 124, ds_grid_get(global.item_index, global.pair3b, fruit_item_stat.name) +" - "+  ds_grid_get(global.item_index, global.pair3b, fruit_item_stat.stat_type) +":  "+ ds_grid_get(global.item_index, global.pair3b, fruit_item_stat.description), font_get_size(fn_popuptext) + 2, 67);
			
			draw_set_color(c_white);
			
			//Show Point Values
			draw_text_ext(argument0 + 19, argument1 + 41, 
			string(ds_grid_get(global.item_index, global.pair1, fruit_item_stat.stat_point_gain))
			+ string(scr_show_bonus(global.pair1)) , 
			67, 67);
			draw_text_ext(argument0 + 19 + 32, argument1 + 41, 
			string(ds_grid_get(global.item_index, global.pair1b, fruit_item_stat.stat_point_gain))
			+ string(scr_show_bonus(global.pair1b)) 
			, 67, 67);
			draw_text_ext(argument0 + 99, argument1 + 41, 
			string(ds_grid_get(global.item_index, global.pair2, fruit_item_stat.stat_point_gain))
			+ string(scr_show_bonus(global.pair2)) 
			, 67, 67);
			draw_text_ext(argument0 + 99 + 32, argument1 + 41, 
			string(ds_grid_get(global.item_index, global.pair2b, fruit_item_stat.stat_point_gain))
			+ string(scr_show_bonus(global.pair2b)) 
			, 67, 67);
			draw_text_ext(argument0 + 179, argument1 + 41, 
			string(ds_grid_get(global.item_index, global.pair3, fruit_item_stat.stat_point_gain))
			+ string(scr_show_bonus(global.pair3)) 
			, 67, 67);
			draw_text_ext(argument0 + 179 + 32, argument1 + 41, 
			string(ds_grid_get(global.item_index, global.pair3b, fruit_item_stat.stat_point_gain))
			+ string(scr_show_bonus(global.pair3b)) 
			, 67, 67);
			
			if(keyboard_check_pressed(vk_right)) && (global.selection_box_y != 1){
				if(global.selection_box_x >= 2){
					global.selection_box_x = 0;
				} else {
					global.selection_box_x++;	
				}
			}
			
			if(keyboard_check_pressed(vk_left)) && (global.selection_box_y != 1){
				if(global.selection_box_x <= 0){
					global.selection_box_x = 2;
				} else {
					global.selection_box_x--;	
				}
			}
			
			if(keyboard_check_pressed(vk_down)) && (global.selection_box_y != 1){
				global.selection_box_y = 1;
				global.selection_box_x = 1;
			}
			
			if(keyboard_check_pressed(vk_up)) && (global.selection_box_y != 0){
				global.selection_box_y = 0;
				global.selection_box_x = 1;
			}
			
			draw_sprite_ext(spr_selectionbox, global.selection_box_y, (global.selection_box_x * 80) + 12 + argument0, argument1 + 30, 1, 1, 0, c_white, 1);
			
			if(keyboard_check_pressed(vk_space)) && (global.popup_canselect == true){
				if(global.selection_box_y == 1){
					if(global.var_ohgodno == true){
							ds_list_add(global.list, global.pair1);
							ds_list_add(global.list, global.pair1b);
							ds_list_add(global.list, global.pair2);
							ds_list_add(global.list, global.pair2b);
							ds_list_add(global.list, global.pair3);
							ds_list_add(global.list, global.pair3b);
					}
					//Do Nothing
				} else {
					switch(global.var_ohgodno){
						case false:
							switch(global.selection_box_x){
								case 0:
									ds_list_add(global.list, global.pair1);
									ds_list_add(global.list, global.pair1b);
									break;
							
								case 1:
									ds_list_add(global.list, global.pair2);
									ds_list_add(global.list, global.pair2b);
									break;
							
								case 2:
									ds_list_add(global.list, global.pair3);
									ds_list_add(global.list, global.pair3b);
									break;
							}
							break;
							
						case true:
							ds_list_add(global.list, global.pair1);
							ds_list_add(global.list, global.pair1b);
							ds_list_add(global.list, global.pair2);
							ds_list_add(global.list, global.pair2b);
							ds_list_add(global.list, global.pair3);
							ds_list_add(global.list, global.pair3b);
							break;
					}
				}
				
				global.popup_canselect = false;
				global.popup_y_offset = 240;
				global.selection_box_y = 0;
				global.selection_box_x = 0;
				global.shop_temp_timer++;
			}			
	 }
	 
	  if(global.shop_temp_timer == 2){
		  draw_sprite_ext(spr_itemlist, global.shop_item1, argument0 + 35, argument1 + 43, 1, 1, 0, c_white, 1);
		  draw_sprite_ext(spr_itemlist, global.shop_item2, argument0 + 115, argument1 + 43, 1, 1, 0, c_white, 1);
		  draw_sprite_ext(spr_itemlist, global.shop_item3, argument0 + 195, argument1 + 43, 1, 1, 0, c_white, 1);
		  
			draw_set_font(fn_popuptext);
			scr_shoptiercolor(global.shop_item1);
			draw_text_ext(argument0 + 16, argument1 + 79, ds_grid_get(global.shop_item_index, global.shop_item1, shop_item_stat.name) + ":  "+ ds_grid_get(global.shop_item_index, global.shop_item1, shop_item_stat.description), font_get_size(fn_popuptext) + 2, 67);
			scr_shoptiercolor(global.shop_item2);
			draw_text_ext(argument0 + 96, argument1 + 79, ds_grid_get(global.shop_item_index, global.shop_item2, shop_item_stat.name) + ":  "+ ds_grid_get(global.shop_item_index, global.shop_item2, shop_item_stat.description), font_get_size(fn_popuptext) + 2, 67);
			scr_shoptiercolor(global.shop_item3);
			draw_text_ext(argument0 + 176, argument1 + 79, ds_grid_get(global.shop_item_index, global.shop_item3, shop_item_stat.name) + ":  "+ ds_grid_get(global.shop_item_index, global.shop_item3, shop_item_stat.description), font_get_size(fn_popuptext) + 2, 67);
			
			if(keyboard_check_pressed(vk_right)) && (global.selection_box_y != 1){
				if(global.selection_box_x >= 2){
					global.selection_box_x = 0;
				} else {
					global.selection_box_x++;	
				}
			}
			
			if(keyboard_check_pressed(vk_left)) && (global.selection_box_y != 1){
				if(global.selection_box_x <= 0){
					global.selection_box_x = 2;
				} else {
					global.selection_box_x--;	
				}
			}
			
			if(keyboard_check_pressed(vk_down)) && (global.selection_box_y != 1){
				global.selection_box_y = 1;
				global.selection_box_x = 1;
			}
			
			if(keyboard_check_pressed(vk_up)) && (global.selection_box_y != 0){
				global.selection_box_y = 0;
				global.selection_box_x = 1;
			}
			
			draw_sprite_ext(spr_selectionbox, global.selection_box_y, (global.selection_box_x * 80) + 12 + argument0, argument1 + 30, 1, 1, 0, c_white, 1);
			
			if(keyboard_check_pressed(vk_space)) && (global.popup_canselect == true){
				if(global.selection_box_y == 1){
					//Do Nothing
				} else {
					switch(global.var_ohgodno){
						case false:
							switch(global.selection_box_x){
								case 0:
									scr_add_item_inventory(global.shop_item1);
									break;
							
								case 1:
									scr_add_item_inventory(global.shop_item2);
									break;
							
								case 2:
									scr_add_item_inventory(global.shop_item3);
									break;
							}
							break;
							
						case true:
							scr_add_item_inventory(global.shop_item1);
							scr_add_item_inventory(global.shop_item2);
							scr_add_item_inventory(global.shop_item3);
							break;
					}
				}
				global.selection_box_y = 0;
				global.selection_box_x = 0;
				global.shop_temp_timer++;
				global.popup_canselect = false;
				global.shop_pause = false;		
				global.space_temp_timer = 2;
				exit;
	  }
}
}