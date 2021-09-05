/// @description scr_status_effect_check(item_ID, item_NAME, globalstat, status_ID, time)
/// @function scr_status_effect_check
/// @param item_ID
/// @param item_NAME
/// @param globalstat
/// @param status_ID
/// @param time
function scr_status_effect_check(argument0, argument1, argument2, argument3){
	if(ds_grid_get(global.item_index, argument0, fruit_item_stat.name) == argument1){
		switch(argument2){
			case 1:
				if(global.status_timer_buffingfruit >= 0){
					global.status_timer_buffingfruit = argument3 + (global.item_enhancedtastebuds * 180);
				} else {
					global.status_timer_buffingfruit = argument3 + (global.item_enhancedtastebuds * 180);
					ds_list_add(global.status_drawinglist, argument2);
				}
				break;
			
			case 2:
				if(global.status_timer_speedstar >= 0){
					global.status_timer_speedstar = argument3 + (global.item_starclock * 30) + (global.item_enhancedtastebuds * 180);
				} else {
					global.status_timer_speedstar = argument3 + (global.item_starclock * 30) + (global.item_enhancedtastebuds * 180);
					ds_list_add(global.status_drawinglist, argument2);
				}
				break;
				
			case 3:
				if(global.status_timer_floatstar >= 0){
					global.status_timer_floatstar = argument3 + (global.item_starclock * 30) + (global.item_enhancedtastebuds * 180);
				} else {
					global.status_timer_floatstar = argument3 + (global.item_starclock * 30) + (global.item_enhancedtastebuds * 180);
					ds_list_add(global.status_drawinglist, argument2);
				}
				break;
				
			case 4:
				if(global.status_timer_anvilstar >= 0){
					global.status_timer_anvilstar = argument3 + (global.item_starclock * 30) + (global.item_enhancedtastebuds * 180);
				} else {
					global.status_timer_anvilstar = argument3 + (global.item_starclock * 30) + (global.item_enhancedtastebuds * 180);
					ds_list_add(global.status_drawinglist, argument2);
				}
				break;
			
			case 5:
				if(global.status_timer_starfury >= 0){
					global.status_timer_starfury = argument3 + (global.item_starclock * 30) + (global.item_enhancedtastebuds * 180);
				} else {
					global.status_timer_starfury = argument3 + (global.item_starclock * 30) + (global.item_enhancedtastebuds * 180);
					ds_list_add(global.status_drawinglist, argument2);
				}
				break;
				
			case 6:
				if(global.status_timer_rottenbuffingfruit >= 0){
					global.status_timer_rottenbuffingfruit = argument3 + (global.item_enhancedtastebuds * 180);
				} else {
					global.status_timer_rottenbuffingfruit = argument3 + (global.item_enhancedtastebuds * 180);
					ds_list_add(global.status_drawinglist, argument2);
				}
				break;
				
			case 7:
				if(global.status_timer_screenwarpmushroom >= 0){
					global.status_timer_screenwarpmushroom = argument3 - (global.item_strangevial * 20) + (global.item_enhancedtastebuds * 180);
				} else {
					global.status_timer_screenwarpmushroom = argument3 - (global.item_strangevial * 20) + (global.item_enhancedtastebuds * 180);
					ds_list_add(global.status_drawinglist, argument2);
				}
				break;
				
			case 8:
				if(global.status_timer_redmushroom >= 0){
					global.status_timer_redmushroom = argument3 - (global.item_strangevial * 20) + (global.item_enhancedtastebuds * 180);
				} else {
					global.status_timer_redmushroom = argument3 - (global.item_strangevial * 20) + (global.item_enhancedtastebuds * 180);
					ds_list_add(global.status_drawinglist, argument2);
				}
				break;
				
			case 9:
				if(global.status_timer_darkmushroom >= 0){
					global.status_timer_darkmushroom = argument3 - (global.item_strangevial * 20) + (global.item_enhancedtastebuds * 180);
				} else {
					global.status_timer_darkmushroom = argument3 - (global.item_strangevial * 20) + (global.item_enhancedtastebuds * 180);
					ds_list_add(global.status_drawinglist, argument2);
				}
				break;
				
			case 10:
				if(global.status_timer_confusionmushroom >= 0){
					global.status_timer_confusionmushroom = argument3 - (global.item_strangevial * 20) + (global.item_enhancedtastebuds * 180);
				} else {
					global.status_timer_confusionmushroom = argument3 - (global.item_strangevial * 20) + (global.item_enhancedtastebuds * 180);
					ds_list_add(global.status_drawinglist, argument2);
				}
				break;
				
			case 11:
				if(global.status_timer_glassmushroom >= 0){
					global.status_timer_glassmushroom = argument3 - (global.item_strangevial * 20) + (global.item_enhancedtastebuds * 180);
				} else {
					global.status_timer_glassmushroom = argument3 - (global.item_strangevial * 20) + (global.item_enhancedtastebuds * 180);
					ds_list_add(global.status_drawinglist, argument2);
				}
				break;
		}
	} else {
		return false;	
	}
}
