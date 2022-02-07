function scr_inventory_menu(){
	draw_sprite_ext(spr_menuscreen, 1, 0, 0, 1, 1, 0, c_white, 1);
	
	draw_set_color(c_white);
	draw_set_font(fn_menutext);
	draw_text(11, 11, " Back ");
	
	var list_max_width = ds_list_size(global.list);
	
	if(!surface_exists(fruit_inventory_surface)){
			fruit_inventory_surface = surface_create(290, 70);
		} else {
			surface_set_target(fruit_inventory_surface);
			draw_clear_alpha(c_white, 0);
			for(var i = 0; i < list_max_width; i++){
				draw_sprite(spr_fruit, ds_list_find_value(global.list, i),((i mod 18) * 15) + 7, 7 + ((i div 18) * 15) - (fruit_inven_y_offset * 15));
			}
			surface_reset_target();
			
			draw_surface_ext(fruit_inventory_surface, 11, 27, 1, 1, 0, c_white, 1);
		}

	var shop_max_width = ds_list_size(global.farmer_inventory);
	
	if(!surface_exists(items_inventory_surface)){
			items_inventory_surface = surface_create(290, 60);
		} else {
			surface_set_target(items_inventory_surface);
			draw_clear_alpha(c_white, 0);
			for(var j = 0; j < shop_max_width; j++){
				draw_sprite(spr_itemlist, ds_list_find_value(global.farmer_inventory, j),((j mod 10) * 28),((j div 10) * 28) - (items_inven_y_offset * 28));
			}
	
			surface_reset_target();
			
			draw_surface_ext(items_inventory_surface, 11, 97, 1, 1, 0, c_white, 1);
		}

	
	if(keyboard_check_pressed(vk_escape)){
		
		if(surface_exists(fruit_inventory_surface)){
			surface_free(fruit_inventory_surface);
		}
		
		if(surface_exists(items_inventory_surface)){
			surface_free(items_inventory_surface);
		}
		
		global.pause = 1;
		selection = 1;
		inventory_current_row = 1;
		inven_x_offset = 0;
		inven_y_offset = 0;
		inven_node_reader = 0;
		
	} 
	
	var up = keyboard_check_pressed(vk_up);
	var down = keyboard_check_pressed(vk_down);
	var right = keyboard_check_pressed(vk_right);
	var left = keyboard_check_pressed(vk_left);
	
	switch(inventory_current_row){
		case 0:
			draw_sprite(spr_pointer, 0, 60, -3);
			
			if(keyboard_check_pressed(vk_space)){
		
				if(surface_exists(fruit_inventory_surface)){
					surface_free(fruit_inventory_surface);
				}
		
				if(surface_exists(items_inventory_surface)){
					surface_free(items_inventory_surface);
				}
		
				global.pause = 1;
				selection = 1;
				inventory_current_row = 1;
				inven_x_offset = 0;
				inven_y_offset = 0;
				inven_node_reader = 0;
		
			} 
			break;
			
		case 1:
			fruit_inven_y_offset = (inven_y_offset div 3) * 3;
			draw_rectangle(11 + (inven_x_offset * 15), 27 + (inven_y_offset * 15) - (fruit_inven_y_offset * 15), 26 + (inven_x_offset * 15), 42 + (inven_y_offset * 15) - (fruit_inven_y_offset * 15), true);
			
			scr_print_inventory_text(ds_list_find_value(global.list, inven_node_reader), 1);
			break;
			
		case 2:
			items_inven_y_offset = (inven_y_offset div 2) * 2;
			draw_rectangle(10 + (inven_x_offset * 28), 97 + (inven_y_offset * 28) - (items_inven_y_offset * 28), 38 + (inven_x_offset * 28), 125 + (inven_y_offset * 28) - (items_inven_y_offset * 28), true);
			
			scr_print_inventory_text(ds_list_find_value(global.farmer_inventory, inven_node_reader), 2);
			break;
	}
	
	if(left){
		switch(inventory_current_row){
			case 0:
				break;
			
			case 1:
				if(inven_node_reader mod 18 != 0){
					inven_x_offset--;
					inven_node_reader--;
				}
				break;
			
			case 2:
				if(inven_node_reader mod 10 != 0){
					inven_x_offset--;
					inven_node_reader--;
				}
				break;	
		}
	}
	
	if(right){
		switch(inventory_current_row){
			case 0:
				break;
			
			case 1:
				if(inven_node_reader mod 18 != 17) and (inven_node_reader + 1 != ds_list_size(global.list)){
					inven_x_offset++;
					inven_node_reader++;
				}
				break;
			
			case 2:
				if(inven_node_reader mod 10 != 9) and (inven_node_reader + 1 != ds_list_size(global.farmer_inventory)){
					inven_x_offset++;
					inven_node_reader++;
				}
				break;	
		}
	}
	
	if(up){
		switch(inventory_current_row){
			case 0:
				break;
			
			case 1:
				if(inven_node_reader > 17){
					inven_y_offset--;
					inven_node_reader -= 18;
				} else {
					inventory_current_row = 0;
					inven_x_offset = 0;
					inven_y_offset = 0;
					inven_node_reader = 0;
				}
				break;
			
			case 2:
				if(inven_node_reader > 9){
					inven_y_offset--;
					inven_node_reader -= 10;
				} else {
					inventory_current_row = 1;
					inven_x_offset = 0;
					inven_y_offset = ds_list_size(global.list) div 18;
					inven_node_reader = (ds_list_size(global.list) div 18) * 18;
				}
				
				break;	
		}
	}
	
	if(down){
		switch(inventory_current_row){
			case 0:
				inventory_current_row = 1;
				inven_x_offset = 0;
				inven_y_offset = 0;
				inven_node_reader = 0;
				break;
			
			case 1:
				if(inven_node_reader div 18 == ds_list_size(global.list) div 18){
					if(ds_list_size(global.farmer_inventory) > 0){
						inventory_current_row = 2;
						inven_x_offset = 0;
						inven_y_offset = 0;
						inven_node_reader = 0;	
					}
				} else if(inven_node_reader div 18 == (ds_list_size(global.list) div 18) - 1) and (inven_node_reader + 18 > ds_list_size(global.list) - 1) {
					inven_node_reader = ds_list_size(global.list) - 1;
					inven_x_offset = (ds_list_size(global.list) mod 18) - 1;
					inven_y_offset = ds_list_size(global.list) div 18;
				} else {
					inven_y_offset++;
					inven_node_reader += 18;
				}
				break;
			
			case 2:
				if(inven_node_reader div 10 != ds_list_size(global.farmer_inventory) div 10){
					if(inven_node_reader div 10 == (ds_list_size(global.farmer_inventory) div 10) - 1) and (inven_node_reader + 10 > ds_list_size(global.farmer_inventory) - 1) {
						inven_node_reader = ds_list_size(global.farmer_inventory) - 1;
						inven_x_offset = (ds_list_size(global.farmer_inventory) mod 10) - 1;
						inven_y_offset = ds_list_size(global.farmer_inventory) div 10;
					} else {
						inven_y_offset++;
						inven_node_reader += 10;
					}
				}
				break;	
		}
	}
}

function scr_print_inventory_text(argument0, argument1){
	draw_set_font(fn_popuptext);
	
	switch(argument1){
		case 1:
			draw_set_font(fn_popuptext);
			scr_popuptextcolor(argument0);
			draw_text_ext(15, 162, string(ds_grid_get(global.item_index, argument0, fruit_item_stat.name)) + " - Tier " + string(ds_grid_get(global.item_index, argument0, fruit_item_stat.stat_tier)), font_get_size(fn_popuptext), 271);
			draw_set_color(c_white);
			var point_string = " Points - ";
			if(ds_grid_get(global.item_index, argument0, fruit_item_stat.stat_point_gain) == 1){
				point_string = " Point - ";
			} else {
				point_string = " Points - ";
			}
			draw_text_ext(15, 162 + 8, string(ds_grid_get(global.item_index, argument0, fruit_item_stat.stat_point_gain)) + point_string + string(ds_grid_get(global.item_index, argument0, fruit_item_stat.stat_type)), font_get_size(fn_popuptext), 271);
			if(scr_show_bonus(argument0) != "") draw_text_ext(15, 162 + 16, string(scr_show_bonus(argument0)) + " Bonus", font_get_size(fn_popuptext), 271);
			else draw_text_ext(15, 162 + 16, "No Bonuses", font_get_size(fn_popuptext), 271);
			draw_text_ext(15, 162 + 24, string(ds_grid_get(global.item_index, argument0, fruit_item_stat.description)), font_get_size(fn_popuptext), 271);
			break;
			
		case 2:
			draw_set_font(fn_popuptext);
			scr_shoptiercolor(argument0);
			draw_text_ext(15, 162, string(ds_grid_get(global.shop_item_index, argument0, shop_item_stat.name)) + " - Tier " + string(ds_grid_get(global.shop_item_index, argument0, shop_item_stat.stat_tier)), font_get_size(fn_popuptext), 271);
			var temp_var = string(scr_inventory_string_num((ds_list_find_value(global.farmer_inventory, inven_node_reader)), 0, 0, 0, 1));
			draw_text_ext(15, 162 + 8, string("Stack : " + temp_var), font_get_size(fn_popuptext), 271);
			draw_set_color(c_white);
			draw_text_ext(15, 162 + 16, string(ds_grid_get(global.shop_item_index, argument0, shop_item_stat.description)), font_get_size(fn_popuptext), 271);
			break;
	}
}