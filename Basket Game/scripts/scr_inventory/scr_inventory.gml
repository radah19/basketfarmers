function scr_inventory(){
	if(ds_list_size(global.farmer_inventory) > 5){
		if(!surface_exists(inventory_surface)){
			inventory_surface = surface_create(140, 28);
		} else {
			surface_set_target(inventory_surface);
			draw_clear_alpha(c_white,0);
			for(var i = 0; i < ds_list_size(global.farmer_inventory) * 2; i++){
				draw_sprite_ext(spr_itemlist, ds_list_find_value(global.farmer_inventory, i mod ds_list_size(global.farmer_inventory)), i * 28 + global.x_offset, 0, 1, 1, 0, c_white, 1);
				
				draw_set_color(c_white);
				scr_inventory_string_num(ds_list_find_value(global.farmer_inventory, i mod ds_list_size(global.farmer_inventory)), i, 0, 0, 0);
				
			}
	
			surface_reset_target();
			
			draw_surface_ext(inventory_surface, 7, 206, 1, 1, 0, c_white, 1);
		}

		global.x_offset -= 0.25;

		if(global.x_offset <= ds_list_size(global.farmer_inventory) * 28 * -1){
			global.x_offset = 0;
		}
	} else {
		for(var i = 0; i < ds_list_size(global.farmer_inventory); i++){
				draw_sprite_ext(spr_itemlist, ds_list_find_value(global.farmer_inventory, i mod ds_list_size(global.farmer_inventory)), (i * 28) + 7, 206, 1, 1, 0, c_white, 1);
				scr_inventory_string_num(ds_list_find_value(global.farmer_inventory, i), i, 7, 206, 0);
		}
	}
}

function scr_inventory_string_num(argument0, argument1, argument2, argument3, argument4){
	var temp = undefined;
	switch(argument0){
		case shop_item_index.fruit_basket:
			temp = global.item_fruitbasket;
			break;
			
		case shop_item_index.vegetable_basket:
			temp = global.item_vegetablebasket;
			break;
			
		case shop_item_index.counter:
			temp = global.item_counter;
			break;
			
		case shop_item_index.berry_basket:
			temp =  global.item_berrybasket;
			break;
			
		case shop_item_index.starfury:
			temp = global.item_starfury;
			break;
			
		case shop_item_index.rotten_basket:
			temp = global.item_rottenbasket;
			break;
			
		case shop_item_index.fungus_basket:
			temp = global.item_fungusbasket;
			break;
			
		case shop_item_index.trash_bucket:
			temp = global.item_trashbucket;
			break;
			
		case shop_item_index.pepper_token:
			temp = global.item_peppertoken;
			break;	
			
		case shop_item_index.strange_vial:
			temp = global.item_strangevial;
			break;
			
		case shop_item_index.heavy_ton:
			temp = global.item_heavyton;
			break;
			
		case shop_item_index.speed_boot:
			temp = global.item_speedboot;
			break;
			
		case shop_item_index.devil_deal:
			temp = global.item_devildeal;
			break;
			
		case shop_item_index.brick_boots:
			temp = global.item_brickboots;
			break;
			
		case shop_item_index.star_clock:
			temp = global.item_starclock;
			break;
			
		case shop_item_index.enhanced_taste_buds:
			temp = global.item_enhancedtastebuds;
			break;
			
		case shop_item_index.eyeball:
			temp = global.item_eyeball;
			break;
			
		case shop_item_index.fertilizer:
			temp = global.item_fertilizer;
			break;
			
		case shop_item_index.mystery_box:
			temp = global.item_mysterybox;
			break;
			
		case shop_item_index.orange_token:
			temp = global.item_orangetoken;
			break;
			
		case shop_item_index.extra_basket:
			temp = global.item_extrabasket;
			break;
			
		case shop_item_index.top:
			temp = global.item_top;
			break;
	}
	
	if(argument4 == 0){
		if(temp >= 2){
			return draw_text(argument1 * 28 + global.x_offset + argument2, 0 + argument3, temp);
		}
	} else {
		return temp;
	}

}