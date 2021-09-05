// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_makeshoptierlist(argument0){
	for(var i = 0; i < fruit_item_index.total; i++){
		if(ds_grid_get(global.shop_item_index, i, shop_item_stat.stat_tier) == argument0){
			switch(argument0){	
				case 1:
					ds_list_add(global.shoptierlist_1, i);
					break;
					
				case 2:
					ds_list_add(global.shoptierlist_2, i);
					break;
					
				case 3:
					ds_list_add(global.shoptierlist_3, i);
					break;
					
				case 4:
					ds_list_add(global.shoptierlist_4, i);
					break;

			}
		}
	}
}