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
		global.player_speedbonus += 0.02;
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
		global.star_gravity_bonus += 0.02;
	}
	
	//Status Check	
	scr_status_effect_check(argument0, "Buffing Fruit", 1, 90);
	scr_status_effect_check(argument0, "Speed Star", 2, 150);
	scr_status_effect_check(argument0, "Float Star", 3, 150);
	scr_status_effect_check(argument0, "Anvil Star", 4, 150);
	scr_status_effect_check(argument0, "Starfury", 5, 120);
	scr_status_effect_check(argument0, "Rotten Buffing Fruit", 6, 90);
	scr_status_effect_check(argument0, "Warp Shroom", 7, 180);
	scr_status_effect_check(argument0, "Red Shroom", 8, 180);
	scr_status_effect_check(argument0, "Dark Shroom", 9, 180);
	scr_status_effect_check(argument0, "Confusion Shroom", 10, 180);
	scr_status_effect_check(argument0, "Glass Shroom", 11, 180);

	
	//Check Type
	switch(ds_grid_get(global.item_index, argument0, fruit_item_stat.stat_type)){
		case "Fruit":
			var temp_buffingfruit_extra = 0;
			if(global.status_timer_buffingfruit > 0) temp_buffingfruit_extra += 2;
			if(global.status_timer_rottenbuffingfruit > 0) temp_buffingfruit_extra -= 2;
			
			point_check = point_check + (global.item_fruitbasket * 2) + temp_buffingfruit_extra;
			break;	
		case "Vegetable":
			point_check = point_check + (global.item_vegetablebasket * 2);
			break;
		case "Berry":
			point_check = point_check + scr_berry_check(argument0) + (global.item_berrybasket * 2);
			break;
		case "Star":
			point_check = point_check + (global.item_starfury * 2);
			break;
		case "Fungus":
			point_check = point_check + (global.item_fungusbasket * 4);
			
			var rando_fungus_clock_roll = irandom_range(1, 100);
			if((global.item_fungus_clock * 12) >= rando_fungus_clock_roll){
				if(60 + global.farmer_total_time > global.farmer_max_time + (global.item_watch * 90)){
					global.farmer_total_time = global.farmer_max_time + (global.item_watch * 90);
				} else {
					global.farmer_total_time += 60;		
				}
			}
			break;
		case "Rotten":
			point_check = point_check + (global.item_rottenbasket * 3);
			break;
		case "Other":
			point_check = point_check + (global.item_trashbucket * 2);
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
	
	
	//Add Final Score
	global.farmer_score += point_check;
	global.farmer_cash += point_check;
	instance_destroy();
	
}