// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_randomize_shopitem_tier(){
	var temp_var = irandom_range(0, 100);
	var temp_var2 = 0;
	var temp_var3 = 0;
	var rando = 0;
	
	
	if(temp_var <= 55){
		temp_var2 = 1;	
	} else if(temp_var <= 80){
		temp_var2 = 2;
	} else if(temp_var <= 95){
		temp_var2 = 3;
	} else if(temp_var > 95){
		temp_var2 = 4;
	}
	
	switch(temp_var2){
		case 1:
			rando = irandom_range(1, ds_list_size(global.shoptierlist_1)) - 1;
			temp_var3 = ds_list_find_value(global.shoptierlist_1, rando);
			break;
			
		case 2:
			rando = irandom_range(1, ds_list_size(global.shoptierlist_2)) - 1;
			temp_var3 = ds_list_find_value(global.shoptierlist_2, rando);
			break;
			
		case 3:
			rando = irandom_range(1, ds_list_size(global.shoptierlist_3)) - 1;
			temp_var3 = ds_list_find_value(global.shoptierlist_3, rando);
			break;
			
		case 4:
			rando = irandom_range(1, ds_list_size(global.shoptierlist_4)) - 1;
			temp_var3 = ds_list_find_value(global.shoptierlist_4, rando);
			break;
			
		
	}

	return temp_var3;
}