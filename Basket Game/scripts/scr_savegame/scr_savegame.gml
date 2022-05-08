function scr_savegame(){
	ini_open("data.sav");
	ini_write_string("Hi :)", "Change every stack value to 999 to win :)", ":)))))))");
	ini_write_real("Player Stats", "Character", obj_controller.character_being_played);
	ini_write_real("Player Stats", "ItemList Size", ds_list_size(global.list));
	ini_write_real("Player Stats", "ShopItemList Size", ds_list_size(global.farmer_inventory));
	ini_write_real("Player Stats", "Date", global.farmer_date);
	ini_write_real("Player Stats", "Days", global.farmer_days_passed);
	ini_write_real("Player Stats", "Cash", global.farmer_cash);
	ini_write_real("Player Stats", "Score", global.farmer_score);
	ini_write_real("Player Stats", "Rent", global.farmer_rent);
	ini_write_real("Player Stats", "RentCounter", obj_controller.rent_counter);
	
	for(var i = 0; i < ds_list_size(global.list); i++){
		ini_write_real("Item List", "ItemList" + string(i), ds_list_find_value(global.list, i));	
	}
	
	for(var i = 0; i < ds_list_size(global.farmer_inventory); i++){
		ini_write_real("Shop List", "ShopItemList" + string(i), ds_list_find_value(global.farmer_inventory, i));	
		ini_write_real("Shop List Stacks", "ShopItemList" + string(i), scr_inventory_string_num(ds_list_find_value(global.farmer_inventory, i), -1, -1, -1, -1));
	}
	
	ini_close();
}

function scr_loadgame(){
	ini_open("data.sav");
	obj_controller.character_being_played = ini_read_real("Player Stats", "Character", 0);
	scr_loadcharacter(obj_controller.character_being_played);
	global.farmer_date = ini_read_real("Player Stats", "Date", -1);
	global.farmer_days_passed = ini_read_real("Player Stats", "Days", 0);
	global.farmer_cash = ini_read_real("Player Stats", "Cash", 0);
	global.farmer_score = ini_read_real("Player Stats", "Score", 0);
	global.farmer_rent =  ini_read_real("Player Stats", "Rent", 0);
	obj_controller.rent_counter = ini_read_real("Player Stats", "RentCounter", 0);
	
	for(var i = 0; i < ini_read_real("Player Stats", "ItemList Size", 0); i++){
		ds_list_add(global.list, ini_read_real("Item List", "ItemList" + string(i), 0));
	}
	
	for(var i = 0; i < ini_read_real("Player Stats", "ShopItemList Size", 0); i++){
		for(var j = 0; j < ini_read_real("Shop List Stacks", "ShopItemList" + string(i), 0); j++){
			scr_add_item_inventory(ini_read_real("Shop List", "ShopItemList" + string(i), 0), false);
		}
	}
	
	global.shop_pause = false;
	global.space_temp_timer = 2;
	global.player_is_ready = true;
	ini_close();
	
	file_delete("data.sav");
}

function scr_loadcharacter(argument0){
		global.fruit_acceleration = ds_grid_get(global.character_index, argument0, character_stat.stat_acc);
		global.fruit_gravity = ds_grid_get(global.character_index, argument0, character_stat.stat_grav);
		global.player_speedbonus = ds_grid_get(global.character_index, argument0, character_stat.stat_spd);
		with(obj_player){
			sprite_index = ds_grid_get(global.character_index, argument0, character_stat.stat_sprite);	
			sprite_flips = ds_grid_get(global.character_index, argument0, character_stat.stat_sprite_flip);
		}
}