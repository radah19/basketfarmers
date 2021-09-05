/// @description scr_maketierlist(tier)
/// @function scr_maketierlist
/// @param tier
function scr_maketierlist(argument0){
	for(var i = 0; i < fruit_item_index.total; i++){
		if(ds_grid_get(global.item_index, i, fruit_item_stat.stat_tier) == argument0){
			switch(argument0){
				case 0:
					ds_list_add(global.tierlist_0, i);
					break;
					
				case 1:
					ds_list_add(global.tierlist_1, i);
					break;
					
				case 2:
					ds_list_add(global.tierlist_2, i);
					break;
					
				case 3:
					ds_list_add(global.tierlist_3, i);
					break;
					
				case 4:
					ds_list_add(global.tierlist_4, i);
					break;
					
				case -1:
					ds_list_add(global.tierlist_n1, i);
					break;
					
				case -2:
					ds_list_add(global.tierlist_n2, i);
					break;
					
				case -3:
					ds_list_add(global.tierlist_n3, i);
					break;
					
				case -4:
					ds_list_add(global.tierlist_n4, i);
					break;
				
				case 5:
					ds_list_add(global.tierlist_5, i);
					break;
			}
		}
	}
}