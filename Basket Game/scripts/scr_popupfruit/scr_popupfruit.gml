/// @description scr_popupfruit(tier)
/// @function scr_popupfruit
/// @param tier

function scr_popupfruit(argument0){
	 var rando = 0;
	 var rando_1 = 0;
	switch(argument0){
		case 0:
			rando = irandom_range(1, ds_list_size(global.tierlist_0)) - 1;
			rando_1 = ds_list_find_value(global.tierlist_0, rando);
			break;
			
		case 1:
			 rando = irandom_range(1, ds_list_size(global.tierlist_1)) - 1;
			 rando_1 = ds_list_find_value(global.tierlist_1, rando);
			break;
			
		case 2:
			 rando = irandom_range(1, ds_list_size(global.tierlist_2)) - 1;
			 rando_1 = ds_list_find_value(global.tierlist_2, rando);
			break;
			
		case 3:
			 rando = irandom_range(1, ds_list_size(global.tierlist_3)) - 1;
			 rando_1 = ds_list_find_value(global.tierlist_3, rando);
			break;
			
		case 4:
			 rando = irandom_range(1, ds_list_size(global.tierlist_4)) - 1;
			 rando_1 = ds_list_find_value(global.tierlist_4, rando);
			break;
			
		case -1:
			 rando = irandom_range(1, ds_list_size(global.tierlist_n1)) - 1;
			 rando_1 = ds_list_find_value(global.tierlist_n1, rando);
			break;
			
		case -2:
			 rando = irandom_range(1, ds_list_size(global.tierlist_n2)) - 1;
			 rando_1 = ds_list_find_value(global.tierlist_n2, rando);
			break;
			
		case -3:
			 rando = irandom_range(1, ds_list_size(global.tierlist_n3)) - 1;
			 rando_1 = ds_list_find_value(global.tierlist_n3, rando);
			break;
			
		case -4:
			 rando = irandom_range(1, ds_list_size(global.tierlist_n4)) - 1;
			 rando_1 = ds_list_find_value(global.tierlist_n4, rando);
			break;
	}
	return rando_1;
}

