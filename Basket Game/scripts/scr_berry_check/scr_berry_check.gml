// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_berry_check(argument0){
	var temp_berry_check = 0;
	
	if(argument0 >= 9) or (argument0 <= 11){
		var temp_base_acc = ds_grid_get(global.item_index, argument0, fruit_item_stat.stat_acc);
		var temp_base_grav = ds_grid_get(global.item_index, argument0, fruit_item_stat.stat_grav);
	
		switch(argument0){
			case fruit_item_index.grape_berries: //Grapes - ACC
				temp_berry_check = ceil((global.player_acc + temp_base_acc) * 25);
				break;
			
			case fruit_item_index.blackberries: //Blackberries - SPD
				temp_berry_check = global.player_spd;
				break;
			
			case fruit_item_index.raspberries: //Raspberries - GRAV
				temp_berry_check = ceil(global.player_grav) + 2;
				break;
		}
	}
	
	if(argument0 >= 15) or (argument0 <= 17){
		switch(argument0){
			case fruit_item_index.speed_berry:
				if(global.status_timer_speedstar > 0){
					temp_berry_check = 10;
				}
				break;
				
			case fruit_item_index.floating_berry:
				if(global.status_timer_floatstar > 0){
					temp_berry_check = 8;
				}
				break; 
			case fruit_item_index.anvil_berry:
				if(global.status_timer_anvilstar > 0){
					temp_berry_check = 13;
				}
				break;
		}
	}
	
	return temp_berry_check;
}