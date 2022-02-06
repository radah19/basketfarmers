function scr_berry_check(argument0){
	var temp_berry_check = 0;
	var temp_base_acc = ds_grid_get(global.item_index, argument0, fruit_item_stat.stat_acc);
	
		switch(argument0){
			case fruit_item_index.grape_berries: //Grapes - ACC
				temp_berry_check = ceil((global.player_acc + temp_base_acc) * 6.25);
				break;
			
			case fruit_item_index.blackberries: //Blackberries - SPD
				temp_berry_check = global.player_spd - 3;
				break;
			
			case fruit_item_index.raspberries: //Raspberries - GRAV
				temp_berry_check = ceil(global.player_grav);
				break;
			
			case fruit_item_index.strawberry: //Strawberry - List Size
				temp_berry_check = round(ds_list_size(global.list) / 4);
				break;
			
			case fruit_item_index.blueberry: //Blueberry - SPD and GRAV
				temp_berry_check = round( (global.player_grav + (global.player_spd - 4))/4 );
				break;

			case fruit_item_index.speed_berry:
				if(global.status_timer_speedstar > 0){
					temp_berry_check = 6;
				}
				break;
				
			case fruit_item_index.floating_berry:
				if(global.status_timer_floatstar > 0){
					temp_berry_check = 6;
				}
				break; 
				
			case fruit_item_index.anvil_berry:
				if(global.status_timer_anvilstar > 0){
					temp_berry_check = 6;
				}
				break;
			
			case fruit_item_index.rotten_strawberry: 
				temp_berry_check = round(ds_list_size(global.list) / 5) * -1;
				break;
		}
	
	return temp_berry_check;
}