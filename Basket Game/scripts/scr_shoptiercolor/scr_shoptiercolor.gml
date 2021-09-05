function scr_shoptiercolor(argument0){
	var selection_color = 0;
	switch(ds_grid_get(global.shop_item_index, argument0, shop_item_stat.stat_tier)){
		case 1:
			selection_color = c_white;
			break;
			
		case 2:
			selection_color = c_blue;
			break;
			
		case 3:
			selection_color = c_yellow;
			break;
			
		case 4:
			selection_color = c_purple;
			break;
	}
	
	draw_set_color(selection_color);
}