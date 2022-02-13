/// @description scr_check_fruit(item_ID)
/// @function scr_check_fruit
/// @param item_ID
function scr_check_fruit(argument0){
	randomize();
	
	//Initial Score
	var point_check = ds_grid_get(global.item_index, argument0, fruit_item_stat.stat_point_gain);
	
	//Special Check
	
	//Lemon
	if(ds_grid_get(global.item_index, argument0, fruit_item_stat.name) == "Lemon"){
		point_check = spe_lemon_number;
	}
	
	//Broccoli
	if(ds_grid_get(global.item_index, argument0, fruit_item_stat.name) == "Broccoli"){
		global.player_speedbonus += 0.03;
	}
	
	//Dice
	if(ds_grid_get(global.item_index, argument0, fruit_item_stat.name) == "Dice"){
		point_check = spe_dice_number;
	}
	
	//Mystery Ball
	if(ds_grid_get(global.item_index, argument0, fruit_item_stat.name) == "Mystery Ball"){
		point_check = spe_mysteryball_number;
	}
	
	//Golden Coin
	if(ds_grid_get(global.item_index, argument0, fruit_item_stat.name) == "Golden Coin"){
		global.farmer_counter++;
	}
	
	//Skull
	if(ds_grid_get(global.item_index, argument0, fruit_item_stat.name) == "Skull"){
		global.fruit_gravity += 0.05;
	}
	
	//Chaos Shroom
	if(ds_grid_get(global.item_index, argument0, fruit_item_stat.name) == "Chaos Shroom"){
		global.fruit_gravity += irandom_range(-2, 2);
		global.fruit_acceleration += random_range(-0.04, 0.04);
		global.player_speedbonus += irandom_range(-2, 2);
		
		if(global.fruit_gravity < -5) global.fruit_gravity = -5;
		if(global.fruit_acceleration < 0) global.fruit_acceleration = 0;
		if(global.player_speedbonus < 0) global.player_speedbonus = 0;
	}
	
	//Potato
	if(ds_grid_get(global.item_index, argument0, fruit_item_stat.name) == "Potato") && (global.farmer_total_time > 0){
		
		var time_removal_p = irandom_range(-60, 30);
		
		if(time_removal_p > 0){
			if(time_removal_p > global.farmer_total_time){
				global.farmer_total_time = 0;
			} else {
				global.farmer_total_time -= time_removal_p;		
			}
		} else if(time_removal_p < 0) {
			if((time_removal_p * -1) + global.farmer_total_time > global.farmer_max_time + (global.item_watch * 90)){
				global.farmer_total_time = global.farmer_max_time + (global.item_watch * 90);
			} else {
				global.farmer_total_time -= time_removal_p;		
			}
		} else {
			//Do nothing
		}
			
	}
	
	//Status Check	
	if(!global.status_timer_painkiller > 0){
		scr_status_effect_check(argument0, "Buffing Fruit", 1, 120);
		scr_status_effect_check(argument0, "Speed Star", 2, 150);
		scr_status_effect_check(argument0, "Float Star", 3, 150);
		scr_status_effect_check(argument0, "Anvil Star", 4, 150);
		scr_status_effect_check(argument0, "Starfury", 5, 120);
		scr_status_effect_check(argument0, "Rotten Buffing Fruit", 6, 120);
		scr_status_effect_check(argument0, "Warp Shroom", 7, 180);
		scr_status_effect_check(argument0, "Red Shroom", 8, 180);
		scr_status_effect_check(argument0, "Dark Shroom", 9, 180);
		scr_status_effect_check(argument0, "Confusion Shroom", 10, 180);
		scr_status_effect_check(argument0, "Glass Shroom", 11, 180);
		scr_status_effect_check(argument0, "Illusion Shroom", 12, 180);
		scr_status_effect_check(argument0, "Rad Shroom", 13, 180);
		scr_status_effect_check(argument0, "Psi Shroom", 14, 180);
		scr_status_effect_check(argument0, "Buffing Shroom", 15, 120);
		scr_status_effect_check(argument0, "Green Juice", 16, 7200);
		scr_status_effect_check(argument0, "Buffing Vegetable", 17, 120);
		scr_status_effect_check(argument0, "Magnet Shroom", 18, 120);
		scr_status_effect_check(argument0, "Zealous Star", 19, 120);
		scr_status_effect_check(argument0, "Rotten Star", 20, 150);
		scr_status_effect_check(argument0, "Rotten Buffing Veggie", 21, 120);
		scr_status_effect_check(argument0, "Painkiller", 22, 120);
		scr_status_effect_check(argument0, "Void Berry", 23, 120);
	}

	
	//Check Type
	switch(ds_grid_get(global.item_index, argument0, fruit_item_stat.stat_type)){
		
		//Fruits
		case "Fruit":
			var temp_buffingfruit_extra = 1;
			var temp_rottenbuffingfruit_extra = 1;
			if(global.status_timer_buffingfruit > 0) temp_buffingfruit_extra = 1.35;
			if(global.status_timer_rottenbuffingfruit > 0) temp_rottenbuffingfruit_extra = 0.65;
			
			point_check = round( (point_check + (global.item_fruitbasket * 2)) * temp_buffingfruit_extra * temp_rottenbuffingfruit_extra );
			break;	
			
		//Vegetables
		case "Vegetable":
			var temp_buffveg_extra = 1;
			var temp_rottenbuffingveg_extra = 1;
			if(global.status_timer_buffveg > 0) temp_buffveg_extra = 1.35;
			if(global.status_timer_rottingbuffingveg > 0) temp_rottenbuffingveg_extra = 0.65;
			
			point_check = round( (point_check + (global.item_vegetablebasket * 2)) * temp_buffveg_extra * temp_rottenbuffingveg_extra);
			break;
			
		//Berries
		case "Berry":
			point_check = point_check + scr_berry_check(argument0) + (global.item_berrybasket * 2);
			break;
			
		//Stars
		case "Star":
			point_check = point_check + (global.item_starfury * 2);
			break;
			
		//Fungus
		case "Fungus":
			var temp_buffingshroom_extra = 1;
			if(global.status_timer_buffshroom > 0) temp_buffingshroom_extra = 1.3;
		
			point_check = round((point_check + (global.item_fungusbasket * 4)) * temp_buffingshroom_extra);
			
			var rando_fungus_clock_roll = irandom_range(1, 100);
			if((global.item_fungus_clock * 16) >= rando_fungus_clock_roll){ //16% per item
				if(60 + global.farmer_total_time > global.farmer_max_time + (global.item_watch * 90)){
					global.farmer_total_time = global.farmer_max_time + (global.item_watch * 90);
				} else {
					global.farmer_total_time += 60;		
				}
			}
			break;
			
		//Rotten
		case "Rotten":
			point_check = point_check + (global.item_rottenbasket * 3);
			break;
			
		//Other
		case "Other":
			point_check = point_check + (global.item_trashbucket * 2);
			break;
			
		//None
		default:
			break;
	}
	
	//Add Time Removal
	if(ds_grid_get(global.item_index, argument0, fruit_item_stat.stat_timechange) > 0) && (global.farmer_total_time > 0){
			var time_removal = ds_grid_get(global.item_index, argument0, fruit_item_stat.stat_timechange);
			
			if(time_removal > global.farmer_total_time){
				global.farmer_total_time = 0;
			} else {
				global.farmer_total_time -= time_removal;		
			}
		}
		
	if(ds_grid_get(global.item_index, argument0, fruit_item_stat.stat_timechange) < 0) && (global.farmer_total_time > 0){
			var time_removal = ds_grid_get(global.item_index, argument0, fruit_item_stat.stat_timechange);
			
			if((time_removal * -1) + global.farmer_total_time > global.farmer_max_time + (global.item_watch * 90)){
				global.farmer_total_time = global.farmer_max_time + (global.item_watch * 90);
			} else {
				global.farmer_total_time -= time_removal;		
			}
		}
		
	//Items
	if(global.item_orangetoken > 0){
		if(argument0 == fruit_item_index.orange) ||	(argument0 == fruit_item_index.carrot){
			point_check *= (global.item_orangetoken + 1)
		}
	}
	
	//Specialist Item Checks
	if(global.status_timer_buffingstar > 0){
		point_check = round(point_check * 1.3);	
	}
	
	if(global.status_timer_rottingstar > 0){
		point_check = round(point_check * 0.5);	
	}
	
	if(global.status_timer_voidsphere > 0){
		point_check *= -1;	
	}
	
	//Add Final Score
	global.farmer_score += point_check;
	global.farmer_cash += point_check;
	instance_destroy();
	
}




function scr_show_bonus(argument0){
	var point_check = 0;
	
	//Check Type
	switch(ds_grid_get(global.item_index, argument0, fruit_item_stat.stat_type)){
		
		//Fruits
		case "Fruit":
			point_check = round( (point_check + (global.item_fruitbasket * 2)));
			break;	
			
		//Vegetables
		case "Vegetable":
			point_check = round( (point_check + (global.item_vegetablebasket * 2)));
			break;
			
		//Berries
		case "Berry":
			point_check = point_check + scr_berry_check(argument0) + (global.item_berrybasket * 2);
			break;
			
		//Stars
		case "Star":
			point_check = point_check + (global.item_starfury * 2);
			break;
			
		//Fungus
		case "Fungus":
			point_check = round((point_check + (global.item_fungusbasket * 3)));
			break;
			
		//Rotten
		case "Rotten":
			point_check = point_check + (global.item_rottenbasket * 3);
			break;
			
		//Other
		case "Other":
			point_check = point_check + (global.item_trashbucket * 2);
			break;
			
		//None
		default:
			break;
	}	
	
	if(point_check != 0){
		if(point_check < 0) return "" + string(point_check);
		else return "+" + string(point_check);
	} else {
		return "";	
	}
}