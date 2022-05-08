function scr_shopitem_list(){
	enum shop_item_index
	{
		none,
		fruit_basket, vegetable_basket, counter, berry_basket, starfury, rotten_basket, fungus_basket,
		trash_bucket, pepper_token, strange_vial, heavy_ton, speed_boot, devil_deal, brick_boots, 
		star_clock, enhanced_taste_buds, eyeball, fertilizer, mystery_box, orange_token, extra_basket,
		top, strange_pill, floaty, radiated_compost, watch, fungus_clock,
		total
	}
	
		enum shop_item_stat
	{
		name = 0,
		description = 1,
		stat_tier = 2,
		total
	}
	
	global.shop_item_index = ds_grid_create(shop_item_index.total, shop_item_stat.total);
	ds_grid_clear(global.shop_item_index, 0);
	
	
	
	scr_addshopitemindex(shop_item_index.fruit_basket, "Fruit Basket", "Increases value of Fruits by 2", 1);
	global.item_fruitbasket = 0;
	
	scr_addshopitemindex(shop_item_index.vegetable_basket, "Vegetable Basket", "Increases value of Vegetables by 2 (A lot of the vegetables added in this game are actually fruit, whoops)", 1);
	global.item_vegetablebasket = 0;
	
	scr_addshopitemindex(shop_item_index.counter, "Counter", "Increases counter value by 1, Adds Gold Coin to List" + " - " + string(ds_grid_get(global.item_index, fruit_item_index.golden_coin, fruit_item_stat.description)), 2);
	global.item_counter = 0;
	global.farmer_counter = 0;
	
	scr_addshopitemindex(shop_item_index.berry_basket, "Berry Basket", "Increases value of Berries by 2", 1);
	global.item_berrybasket = 0;
	
	scr_addshopitemindex(shop_item_index.starfury, "Starfury", "Increases value of Stars by 2, also adds Starfury to List -" + " - " + string(ds_grid_get(global.item_index, fruit_item_index.starfury, fruit_item_stat.description)), 3);
	global.item_starfury = 0;
	
	scr_addshopitemindex(shop_item_index.rotten_basket, "Rotten Basket", "Increases value of Rotten Fruits by 3", 1);
	global.item_rottenbasket = 0;
	
	scr_addshopitemindex(shop_item_index.fungus_basket, "Fungus Basket", "Increases value of Fungus by 3", 2);
	global.item_fungusbasket = 0;
	
	scr_addshopitemindex(shop_item_index.trash_bucket, "Trash Bucket", "Increases value of Pickups labelled 'Other' by 2", 2);
	global.item_trashbucket = 0;
	
	scr_addshopitemindex(shop_item_index.pepper_token, "Pepper Token", "Decreases Gravity on Peppers, also adds Red Pepper to List" + " - " + string(ds_grid_get(global.item_index, fruit_item_index.red_pepper, fruit_item_stat.description)), 2);
	global.item_peppertoken = 0;
	
	scr_addshopitemindex(shop_item_index.strange_vial, "Strange Vial", "Decreases Time of Fungus Effects", 3);
	global.item_strangevial = 0;
	
	scr_addshopitemindex(shop_item_index.heavy_ton, "Heavy Ton", "Increases Gravity by 1 and Acceleration by 0.025", 1);
	global.item_heavyton = 0;
	
	scr_addshopitemindex(shop_item_index.speed_boot, "Speed Boot", "Increases Speed by 1", 2);
	global.item_speedboot = 0;
	
	scr_addshopitemindex(shop_item_index.devil_deal, "Devil Deal", "Get 50 Points after every round (Stacks), Add 3 Knives to the List", 2);
	global.item_devildeal = 0;
	
	scr_addshopitemindex(shop_item_index.brick_boots, "Brick Boots", "Increases Speed by 3 and Gravity by 2", 2);
	global.item_brickboots = 0;
	
	scr_addshopitemindex(shop_item_index.star_clock, "Star Clock", "Increases Duration of Star Effects by 1.5 Seconds", 3);
	global.item_starclock = 0;
	
	scr_addshopitemindex(shop_item_index.enhanced_taste_buds, "Enhanced Taste Buds", "Increases All Status Timers by 3 Seconds", 4);
	global.item_enhancedtastebuds = 0;
	
	scr_addshopitemindex(shop_item_index.eyeball, "Eyeball", "Get 20 Points after every round (Stacks)", 2);
	global.item_eyeball = 0;
	
	scr_addshopitemindex(shop_item_index.fertilizer, "Fertilizer", "Decreases Time that Flowers last", 1);
	global.item_fertilizer = 0;
	
	scr_addshopitemindex(shop_item_index.mystery_box, "Mystery Box", "Adds Random Items to the List", 1);
	global.item_mysterybox = 0;
	
	scr_addshopitemindex(shop_item_index.orange_token, "Orange Token", "Doubles Value of Carrots and Oranges", 2);
	global.item_orangetoken = 0;
	
	scr_addshopitemindex(shop_item_index.extra_basket, "Extra Basket", "Adds a basket to collect pickups for you", 4);
	global.item_extrabasket = 0;
	
	scr_addshopitemindex(shop_item_index.top, "Top", "Bounces around the room, Collecting Pickups for you", 4);
	global.item_top = 0;
	
	scr_addshopitemindex(shop_item_index.strange_pill, "Strange Pill", "Increases Size of all Pickups by 50%, increases overall Gravity", 3);
	global.item_strange_pill = 0;
	
	scr_addshopitemindex(shop_item_index.floaty, "Floaty", "Decreases Gravity by 1", 2);
	global.item_floaty = 0;
	
	scr_addshopitemindex(shop_item_index.radiated_compost, "Radiated Compost", "Increases overall Gravity and Acceleration, also makes pickups increase in size as they fall", 4);
	global.item_radiated_compost = 0;
	
	scr_addshopitemindex(shop_item_index.watch, "Watch", "Increases max time you have by 1.5 Seconds but decreases Speed by 2", 4);
	global.item_watch = 0;
	
	scr_addshopitemindex(shop_item_index.fungus_clock, "Fungus Clock", "Picking up Fungus has a chance to Increase Time", 3);
	global.item_fungus_clock = 0;
	
}

