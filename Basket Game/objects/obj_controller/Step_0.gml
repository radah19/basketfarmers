if(global.game_started == true){

if(global.pause == 0){
	
	global.player_grav = global.fruit_gravity + global.star_gravity_bonus + global.star_float_bonus + global.item_heavyton 
							+ (global.item_brickboots * 2) + (global.star_fury_gravity_bonus * 0.5) - global.item_floaty
							+ (global.item_radiated_compost) + (global.item_strange_pill * 2.5);
							
	global.player_acc = global.fruit_acceleration + (global.item_radiated_compost * 0.035);
		
	if(global.farmer_total_time > 0){
		if(cooldown <= 0){
			instance_create_depth(irandom_range(7.5, room_width - 7.5), -7.5, depth, obj_fruit);
			cooldown = irandom_range(min_cooldown, max_cooldown);
		}

		cooldown--;
		
		global.farmer_total_time--;
	}
	
	//Peak Stupidity 
	if(global.status_timer_screenwarpmushroom > 0) and (global.status_timer_confusionmushroom > 0){
		surface_rotation = 180;
		surface_xscale = -1;
		surface_xoffset = 0;
		surface_yoffset = room_height;
	} else {
		if(global.status_timer_screenwarpmushroom > 0){
			surface_rotation = 180;	
			surface_xoffset = room_width;
			surface_yoffset = room_height;
			surface_xscale = 1;
		}

		if(global.status_timer_confusionmushroom > 0){
			surface_xscale = -1;
			surface_xoffset = room_width;
			surface_rotation = 0;
			surface_yoffset = 0;
		}
	}

	if(!global.status_timer_screenwarpmushroom > 0) and (!global.status_timer_confusionmushroom > 0){
		surface_rotation = 0;	
		surface_xoffset = 0;
		surface_yoffset = 0;
		surface_xscale = 1;
	}
	
	if(global.status_timer_redmushroom > 0){
		surface_color = c_red;
	} else {
		surface_color = c_white;	
	}
		
	if(global.item_counter != 0) && (global.farmer_counter >= 3){
		global.farmer_counter = 0;
		global.farmer_cash += 6 * global.item_counter;
		global.farmer_score += 6 * global.item_counter;
	}
	
	if(global.tierlist_create == true){
		var rando_1 = irandom_range(0, 4);
		var rando_2 = irandom_range(0, 4);
		var rando_3 = irandom_range(0, 4);
		
		global.pair1 = scr_popupfruit(rando_1);
		global.pair1b = scr_popupfruit(rando_1 * -1);
		global.pair2 = scr_popupfruit(rando_2);
		global.pair2b = scr_popupfruit(rando_2 * -1);
		global.pair3 = scr_popupfruit(rando_3);
		global.pair3b = scr_popupfruit(rando_3 * -1);
		
		global.shop_item1 = scr_randomize_shopitem_tier();
		global.shop_item2 = scr_randomize_shopitem_tier();
		global.shop_item3 = scr_randomize_shopitem_tier();
		
		global.tierlist_create = false;
		
	}
	
}

if(keyboard_check_pressed(vk_escape)){
	switch(global.pause){
		case 0:
			instance_deactivate_all(true);
			
			if(surface_exists(inventory_surface)){
				surface_free(inventory_surface);	
			}
			
			global.pause = 1;
			break;
			
		case 1:
			instance_activate_all();
			global.pause = 0;
			break;
	}
}

}

if(keyboard_check_pressed(ord("R"))){
	game_restart();
}







