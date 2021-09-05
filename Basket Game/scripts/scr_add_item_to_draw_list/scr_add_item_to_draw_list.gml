function scr_add_item_to_draw_list(argument0){
	for(var i = 0; i < ds_list_size(global.farmer_inventory); i++){
		if(ds_list_find_value(global.farmer_inventory, i) == argument0){
			exit;	
		}
	}
	
	ds_list_add(global.farmer_inventory, argument0);
	exit;
}