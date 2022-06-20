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
				
			case 12:
				if(global.status_timer_illusionshroom >= 0){
					global.status_timer_illusionshroom = argument3 - (global.item_strangevial * 20) + (global.item_enhancedtastebuds * 180);
				} else {
					global.status_timer_illusionshroom = argument3 - (global.item_strangevial * 20) + (global.item_enhancedtastebuds * 180);
					ds_list_add(global.status_drawinglist, argument2);
				}
				break;
				
			case 13:
				if(global.status_timer_radshroom >= 0){
					global.status_timer_radshroom = argument3 - (global.item_strangevial * 20) + (global.item_enhancedtastebuds * 180);
				} else {
					global.status_timer_radshroom = argument3 - (global.item_strangevial * 20) + (global.item_enhancedtastebuds * 180);
					ds_list_add(global.status_drawinglist, argument2);
				}
				break;
				
			case 14:
				if(global.status_timer_psishroom >= 0){
					global.status_timer_psishroom = argument3 - (global.item_strangevial * 20) + (global.item_enhancedtastebuds * 180);
				} else {
					global.status_timer_psishroom = argument3 - (global.item_strangevial * 20) + (global.item_enhancedtastebuds * 180);
					ds_list_add(global.status_drawinglist, argument2);
					
					obj_player.temp1 = choose(-48, -24, 24, 48);
					obj_player.temp2 = choose(-48, -24, 24, 48);
					obj_player.temp3 = choose(-48, -24, 24, 48);
					
					for(var i = 0; i < 8; i++) instance_create_depth(irandom_range(0, room_width - sprite_width), 180, 0, obj_wanderingclone);
				}
				break;
				
			case 15:
				if(global.status_timer_buffshroom >= 0){
					global.status_timer_buffshroom = argument3 - (global.item_strangevial * 20) + (global.item_enhancedtastebuds * 180);
				} else {
					global.status_timer_buffshroom = argument3 - (global.item_strangevial * 20) + (global.item_enhancedtastebuds * 180);
					ds_list_add(global.status_drawinglist, argument2);
				}
				break;
			
			case 16:
				if(global.status_timer_greenjuice >= 0){
					global.status_timer_greenjuice = argument3 + (global.item_enhancedtastebuds * 180);
				} else {
					global.status_timer_greenjuice = argument3 + (global.item_enhancedtastebuds * 180);
					ds_list_add(global.status_drawinglist, argument2);
				}
				break;
			
			case 17:
				if(global.status_timer_buffveg >= 0){
					global.status_timer_buffveg = argument3 + (global.item_enhancedtastebuds * 180);
				} else {
					global.status_timer_buffveg = argument3 + (global.item_enhancedtastebuds * 180);
					ds_list_add(global.status_drawinglist, argument2);
				}
				break;
				
			case 18:
				if(global.status_timer_magnetshroom >= 0){
					global.status_timer_magnetshroom = argument3 - (global.item_strangevial * 20) + (global.item_enhancedtastebuds * 180);
				} else {
					global.status_timer_magnetshroom = argument3 - (global.item_strangevial * 20) + (global.item_enhancedtastebuds * 180);
					ds_list_add(global.status_drawinglist, argument2);
				}
				break;
				
			case 19:
				if(global.status_timer_buffingstar >= 0){
					global.status_timer_buffingstar = argument3 + (global.item_starclock * 30) + (global.item_enhancedtastebuds * 180);
				} else {
					global.status_timer_buffingstar = argument3 + (global.item_starclock * 30) + (global.item_enhancedtastebuds * 180);
					ds_list_add(global.status_drawinglist, argument2);
				}
				break;
				
			case 20:
				if(global.status_timer_rottingstar >= 0){
					global.status_timer_rottingstar = argument3 + (global.item_starclock * 30) + (global.item_enhancedtastebuds * 180);
				} else {
					global.status_timer_rottingstar = argument3 + (global.item_starclock * 30) + (global.item_enhancedtastebuds * 180);
					ds_list_add(global.status_drawinglist, argument2);
				}
				break;
				
			case 21:
				if(global.status_timer_rottingbuffingveg >= 0){
					global.status_timer_rottingbuffingveg = argument3 + (global.item_enhancedtastebuds * 180);
				} else {
					global.status_timer_rottingbuffingveg = argument3 + (global.item_enhancedtastebuds * 180);
					ds_list_add(global.status_drawinglist, argument2);
				}
				break;
				
			case 22:
				if(global.status_timer_painkiller >= 0){
					global.status_timer_painkiller = argument3 + (global.item_enhancedtastebuds * 180);
				} else {
					global.status_timer_painkiller = argument3 + (global.item_enhancedtastebuds * 180);
					ds_list_add(global.status_drawinglist, argument2);
				}
				break;
				
			case 23:
				if(global.status_timer_voidsphere >= 0){
					global.status_timer_voidsphere = argument3 + (global.item_enhancedtastebuds * 180);
				} else {
					global.status_timer_voidsphere = argument3 + (global.item_enhancedtastebuds * 180);
					ds_list_add(global.status_drawinglist, argument2);
				}
				break;
				
			case 24:
				if(global.status_timer_tablet >= 0){
					global.status_timer_tablet = argument3 + (global.item_enhancedtastebuds * 180);
				} else {
					global.status_timer_tablet = argument3 + (global.item_enhancedtastebuds * 180);
					ds_list_add(global.status_drawinglist, argument2);
				}
				break;	
				
			case 25:
				if(global.status_timer_probiotic >= 0){
					global.status_timer_probiotic = argument3 + (global.item_enhancedtastebuds * 180);
				} else {
					global.status_timer_probiotic = argument3 + (global.item_enhancedtastebuds * 180);
					ds_list_add(global.status_drawinglist, argument2);
				}
				break;	
				
			case 26:
				if(global.status_timer_yumyumpill >= 0){
					global.status_timer_yumyumpill = argument3 + (global.item_enhancedtastebuds * 180);
				} else {
					global.status_timer_yumyumpill = argument3 + (global.item_enhancedtastebuds * 180);
					ds_list_add(global.status_drawinglist, argument2);
				}
				break;	
				
			case 27:
				if(global.status_timer_negtablet >= 0){
					global.status_timer_negtablet = argument3 + (global.item_enhancedtastebuds * 180);
				} else {
					global.status_timer_negtablet = argument3 + (global.item_enhancedtastebuds * 180);
					ds_list_add(global.status_drawinglist, argument2);
				}
				break;	
			
		}
	} else {
		return false;	
	}
}

