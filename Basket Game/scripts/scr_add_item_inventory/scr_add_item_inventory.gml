/// @description scr_add_item_inventory(item_ID);
/// @function scr_add_item_inventory
/// @param item_ID
/// @param add_items

function scr_add_item_inventory(argument0, argument1){
	var add_items = argument1;
	switch(argument0){
		case shop_item_index.fruit_basket:
			global.item_fruitbasket++;
			break;
			
		case shop_item_index.vegetable_basket:
			global.item_vegetablebasket++;
			break;
			
		case shop_item_index.counter:
			global.item_counter++;
			if(add_items) ds_list_add(global.list, fruit_item_index.golden_coin);
			break;
			
		case shop_item_index.berry_basket:
			global.item_berrybasket++;
			break;
			
		case shop_item_index.starfury:
			global.item_starfury++;
			if(add_items) ds_list_add(global.list, fruit_item_index.starfury);
			break;
			
		case shop_item_index.rotten_basket:
			global.item_rottenbasket++;
			break;
			
		case shop_item_index.fungus_basket:
			global.item_fungusbasket++;
			break;
			
		case shop_item_index.trash_bucket:
			global.item_trashbucket++;
			break;
			
		case shop_item_index.pepper_token:
			global.item_peppertoken++;
			if(add_items) ds_list_add(global.list, fruit_item_index.red_pepper);
			break;
			
		case shop_item_index.strange_vial:
			global.item_strangevial++;
			break;
			
		case shop_item_index.heavy_ton:
			global.item_heavyton++;
			break;
			
		case shop_item_index.speed_boot:
			global.item_speedboot++;
			break;
			
		case shop_item_index.devil_deal:
			global.item_devildeal++;
			if(add_items){
				ds_list_add(global.list, fruit_item_index.knife);
				ds_list_add(global.list, fruit_item_index.knife);
				ds_list_add(global.list, fruit_item_index.knife);
			}
			break;
			
		case shop_item_index.brick_boots:
			global.item_brickboots++;
			break;
			
		case shop_item_index.star_clock:
			global.item_starclock++;
			break;
			
		case shop_item_index.enhanced_taste_buds:
			global.item_enhancedtastebuds++;
			break;
			
		case shop_item_index.eyeball:
			global.item_eyeball++;
			break;
			
		case shop_item_index.fertilizer:
			global.item_fertilizer++;
			break;
			
		case shop_item_index.mystery_box:
			global.item_mysterybox++;
			if(add_items){
				ds_list_add(global.list, irandom_range(1, fruit_item_index.total - 1));
				ds_list_add(global.list, irandom_range(1, fruit_item_index.total - 1));
				ds_list_add(global.list, irandom_range(1, fruit_item_index.total - 1));
			}
			break;
			
		case shop_item_index.orange_token:
			global.item_orangetoken++;
			break;
			
		case shop_item_index.extra_basket:
			global.item_extrabasket++;
			break;
			
		case shop_item_index.top:
			global.item_top++;
			break;
			
		case shop_item_index.strange_pill:
			global.item_strange_pill++;
			break;
		
		case shop_item_index.floaty:
			global.item_floaty++;
			break;
		
		case shop_item_index.radiated_compost:
			global.item_radiated_compost++;
			break;
		
		case shop_item_index.watch:
			global.item_watch++;
			break;
			
		case shop_item_index.fungus_clock:
			global.item_fungus_clock++;
			break;
			
		case shop_item_index.warped_clock:
			global.item_warped_clock++;
			break;
			
		case shop_item_index.magic_scythe:
			global.item_magic_scythe++;
			break;
			
		case shop_item_index.hijo:
			global.item_hijo++;
			break;
		
	}
	
	scr_add_item_to_draw_list(argument0);
	
	exit;
}

