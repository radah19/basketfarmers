function scr_item_list(){
	enum fruit_item_index
	{
		none,
		//Fruit
		orange, apple, banana, pear, watermelon, pineapple, lemon, buffing_fruit,
		//Berries
		grape_berries, blackberries, raspberries,
		//Stars / Berries
		speed_star, floating_star, anvil_star, speed_berry, floating_berry, anvil_berry,
		starfury,
		//Rotten
		rotten_apple, rotten_banana, rotten_pear, rotten_buffing_fruit, rotting_leaf,
		//Vegetables
		carrot, broccoli, eggplant, red_pepper, yellow_pepper, green_pepper, blue_pepper, corn_cob,
		//Mushroom
		screenwarp_mushroom, red_mushroom, dark_mushroom, confusion_mushroom, glass_mushroom, illusion_mushroom,
		radiation_shroom, psi_shroom, buffing_shroom,
		//Other
		dice, mystery_ball, knife, bomb, rock, clock, seed, egg, grey_clock, boot,
		golden_coin, leaf, skull, little_man, smiley_face,
		//Bullet
		watermelon_piece, kernel, rock_piece, emptynaut,
		//Mutant
		merganaut, chaos_shroom,
		
		total
	}
	
	enum fruit_item_stat
	{
		name = 0,
		description = 1,
		stat_type = 2,
		stat_point_gain = 3,
		stat_grav = 4,
		stat_acc = 5,
		stat_groundeffect = 6,
		stat_bounces = 7,
		stat_timechange = 8,
		stat_tier = 9,
		total
	}
	
	global.item_index = ds_grid_create(fruit_item_index.total, fruit_item_stat.total);
	ds_grid_clear(global.item_index, 0);
	
	scr_additemindex(fruit_item_index.none,  "None", "Gives NOTHING", "Other", 43589345, 666, 666, false, false, 0, 10000000);
	scr_additemindex(fruit_item_index.total,  "Total", "DAS THE TOTAL", "Vegetable", 43589345, 666, 666, false, false, 0, 10000000);
	
	scr_additemindex(fruit_item_index.orange,  "Orange", "Gives 1 Point", "Fruit", 1, B_GRAV, B_ACC, false, false, 0, 0);
	scr_additemindex(fruit_item_index.apple,  "Apple", "Gives 2 Points", "Fruit", 2, B_GRAV, B_ACC, false, false, 0, 1);
	scr_additemindex(fruit_item_index.banana,  "Banana", "Gives 3 Points, Falls Faster", "Fruit", 3, B_GRAV + 1, B_ACC, false, false, 0, 1);
	scr_additemindex(fruit_item_index.pear,  "Pear", "Gives 1 Point, Falls Slower", "Fruit", 1, B_GRAV - 1, 0.025, false, false, 0, 1);
	scr_additemindex(fruit_item_index.watermelon,  "Watermelon", "Gives 4 Points, explodes if it hits the ground", "Fruit", 4, B_GRAV, 0.08, true, false, 0, 3);
	scr_additemindex(fruit_item_index.pineapple,  "Pineapple", "Gives 6 Points, decreases time on pickup (0.3 seconds)", "Fruit", 6, B_GRAV, B_ACC, false, true, 20, 1);
	scr_additemindex(fruit_item_index.lemon,  "Lemon", "Gives amount from -2 to 5", "Fruit", "-2 - 5", B_GRAV, B_ACC, false, false, 0, 2);
	scr_additemindex(fruit_item_index.buffing_fruit,  "Buffing Fruit", "On pickup gives status that increases value of fruits by 35%", "Fruit", 0, B_GRAV, B_ACC, false, false, 0, 3);
	
	scr_additemindex(fruit_item_index.grape_berries,  "Grapes", "Points given based on Acceleration", "Berry", 1, B_GRAV, B_ACC, false, false, 0, 0);
	scr_additemindex(fruit_item_index.blackberries, "Blackberries", "Points given based on Speed", "Berry", 1, B_GRAV, B_ACC, false, false, 0, 1);
	scr_additemindex(fruit_item_index.raspberries, "Raspberries", "Points given based on Gravity", "Berry", 1, B_GRAV, B_ACC, false, false, 0, 0);
	
	scr_additemindex(fruit_item_index.speed_star, "Speed Star", "Gives speed bonus on pickup", "Star", 1, B_GRAV + 0.5, B_ACC, false, false, 0, 4);
	scr_additemindex(fruit_item_index.floating_star, "Float Star", "Gives gravity decrease on pickup", "Star", 1, B_GRAV + 0.5, B_ACC, false, false, 0, 4);
	scr_additemindex(fruit_item_index.anvil_star, "Anvil Star", "Gives gravity increase on pickup", "Star", 1, B_GRAV + 0.5, B_ACC, false, false, 0, 2);
	scr_additemindex(fruit_item_index.speed_berry, "Speed Berry", "Gives more points when Speed Star status is active", "Berry", 1, B_GRAV, B_ACC, false, false, 0, 1);
	scr_additemindex(fruit_item_index.floating_berry, "Float Berry", "Gives more points when Float Star status is active", "Berry", 1, B_GRAV, B_ACC, false, false, 0, 1);
	scr_additemindex(fruit_item_index.anvil_berry, "Anvil Berry", "Gives more points when Anvil Star status is active", "Berry", 2, B_GRAV, B_ACC, false, false, 0, 1);
	scr_additemindex(fruit_item_index.starfury, "Starfury", "Gives big gravity and speed increase on pickup", "Star", 4, B_GRAV + 2, B_ACC + 0.05, false, false, 0, 100);
	
	scr_additemindex(fruit_item_index.rotten_apple, "Rotten Apple", "Takes 2 Points", "Rotten", -2, B_GRAV, B_ACC, false, false, 0, -1);
	scr_additemindex(fruit_item_index.rotten_banana, "Rotten Banana", "Takes 3 Points, falls faster", "Rotten", -3, B_GRAV + 1, B_ACC, false, false, 0, -1);
	scr_additemindex(fruit_item_index.rotten_pear, "Rotten Pear", "Takes 2 Points, falls slower", "Rotten", -2, B_GRAV - 1, 0.025, false, false, 0, -1);
	scr_additemindex(fruit_item_index.rotten_buffing_fruit, "Rotten Buffing Fruit", "On pickup gives status that decreases value of fruits by 35%", "Rotten", 0, B_GRAV, B_ACC, false, false, 0, -1);
	scr_additemindex(fruit_item_index.rotting_leaf, "Rotting Leaf", "Takes 2 Points, falls very slowly", "Rotten", -2, 0.4, 0.01, false, false, 0, 0);
	
	scr_additemindex(fruit_item_index.carrot, "Carrot", "Gives 1 Point", "Vegetable", 1, B_GRAV, B_ACC, false, false, 0, 0);
	scr_additemindex(fruit_item_index.broccoli, "Broccoli", "Takes 1 Point, increases overall speed by 0.02", "Vegetable", -1, B_GRAV, B_ACC, false, false, 0, 2);
	scr_additemindex(fruit_item_index.eggplant, "Eggplant", "Takes 2 Points, increases time (0.5 seconds)", "Vegetable", -2, B_GRAV, B_ACC, false, false, -30, 2);
	scr_additemindex(fruit_item_index.red_pepper, "Red Pepper", "Gives 10 Points, decreases time on pickup (1 second)", "Vegetable", 10, B_GRAV, B_ACC, false, false, 60, 1);
	scr_additemindex(fruit_item_index.yellow_pepper, "Yellow Pepper", "Takes 5 Points, decreases time on pickup (0.5 seconds)", "Vegetable", -5, B_GRAV, B_ACC, false, false, 30, -1);
	scr_additemindex(fruit_item_index.green_pepper, "Green Pepper", "Takes 5 Points, increases time on pickup (0.5 seconds)", "Vegetable", -5, B_GRAV, B_ACC, false, false, -30, 2);
	scr_additemindex(fruit_item_index.blue_pepper, "Blue Pepper", "Takes 6 Points, increases time on pickup (1.5 seconds)", "Vegetable", -6, B_GRAV + 0.5, B_ACC, false, false, -90, 4);
	scr_additemindex(fruit_item_index.corn_cob, "Corn Cob", "Gives 4 Points, explodes if it hits the ground", "Vegetable", 4, B_GRAV, 0.09, true, false, 0, 3);
	
	scr_additemindex(fruit_item_index.screenwarp_mushroom, "Warp Shroom", "Flips screens upside down on Pickup", "Fungus", 2, B_GRAV, B_ACC, false, false, 0, -1);
	scr_additemindex(fruit_item_index.red_mushroom, "Red Shroom", "Turns screen Red on Pickup", "Fungus", 2, B_GRAV, B_ACC, false, false, 0, -2);
	scr_additemindex(fruit_item_index.dark_mushroom, "Dark Shroom", "Turns screen dark on Pickup", "Fungus", 2, B_GRAV, B_ACC, false, false, 0, -3);
	scr_additemindex(fruit_item_index.confusion_mushroom, "Confusion Shroom", "Confuses you", "Fungus", 2, B_GRAV, B_ACC, false, false, 0, -1);
	scr_additemindex(fruit_item_index.glass_mushroom, "Glass Shroom", "Makes items less visible on Pickup", "Fungus", 2, B_GRAV, B_ACC, false, false, 0, -2);
	scr_additemindex(fruit_item_index.illusion_mushroom, "Illusion Shroom", "Causes items to have False Copies around it", "Fungus", 2, B_GRAV, B_ACC, false, false, 0, -4);
	scr_additemindex(fruit_item_index.radiation_shroom, "Rad Shroom", "Causes items to seem to grow in size... by a lot", "Fungus", 2, B_GRAV, B_ACC, false, false, 0, -3);
	scr_additemindex(fruit_item_index.psi_shroom, "Psi Shroom", "Causes you to Hallucinate some Clones", "Fungus", 2, B_GRAV, B_ACC, false, false, 0, -4);
	scr_additemindex(fruit_item_index.buffing_shroom, "Buffing Shroom", "On pickup gives status that increases value of mushrooms by 30%", "Fungus", 0, B_GRAV, B_ACC, false, false, 0, 3);
	
	scr_additemindex(fruit_item_index.dice, "Dice", "Gives amount from 1 to 6", "Other", "1 - 6", B_GRAV, B_ACC, false, false, 0, 3);
	scr_additemindex(fruit_item_index.mystery_ball, "Mystery Ball", "Gives amount from -4 to 6", "Other", "-4 - 6", B_GRAV, B_ACC, false, false, 0, 2);
	scr_additemindex(fruit_item_index.knife, "Knife", "Shortens time on pickup by 1.5 seconds", "Other", 0, B_GRAV, B_ACC, false, false, 90, -2); 
	scr_additemindex(fruit_item_index.bomb, "Bomb", "Shortens time on pickup by 2.5 seconds", "Other", 3, B_GRAV, B_ACC, false, false, 150, -3);
	scr_additemindex(fruit_item_index.rock, "Rock", "Gives -5, Explodes on collision with ground, pieces hurt too", "Other", -5, B_GRAV, B_ACC, true, false, 0, -3);
	scr_additemindex(fruit_item_index.clock, "Clock", "Takes 3 Points, Increases time by a second", "Other", -3, B_GRAV, B_ACC, false, false, -60, 3);
	scr_additemindex(fruit_item_index.seed, "Seed", "Gives 4, falling on ground causes Flower to spawn", "Other", 4, B_GRAV, B_ACC, true, false, 0, -2);
	scr_additemindex(fruit_item_index.egg, "Egg", "Gives 4, falling on ground causes Yolk to spawn", "Other", 4, B_GRAV, B_ACC, true, false, 0, -4);
	scr_additemindex(fruit_item_index.grey_clock, "Grey Clock", "Decreases time by a second on pickup", "Other", 3, B_GRAV, B_ACC, false, false, 60, -1);
	scr_additemindex(fruit_item_index.boot, "Boot", "Falls based on Player Speed, not being picked up Subtracts 2 points", "Other", 2, B_GRAV, B_ACC, true, false, 0, -4);
	scr_additemindex(fruit_item_index.golden_coin, "Golden Coin", "Picking up 3 Coins gives 10 free Points!", "Other", 3, B_GRAV, B_ACC, false, false, 0, 100);
	scr_additemindex(fruit_item_index.leaf, "Leaf", "Gives 1 Point, falls very slowly", "Other", 1, 0.4, 0.01, false, false, 0, 0);
	scr_additemindex(fruit_item_index.skull, "Skull", "Gives -1, increases overall gravity by 0.02", "Other", -1, B_GRAV, B_ACC, false, false, 0, -2);
	scr_additemindex(fruit_item_index.little_man, "Little Man", "Shortens Time by 0.25 seconds if not picked up", "Other", 3, B_GRAV, B_ACC, true, false, 0, -3);
	scr_additemindex(fruit_item_index.smiley_face, "Smiley Face", "Bounces C=", "Other", 1, B_GRAV, B_ACC, false, true, 0, 0);
	
	scr_additemindex(fruit_item_index.watermelon_piece, "Watermelon Piece", "", "Fruit", 1, -3, B_ACC, false, false, 0, 100);
	scr_additemindex(fruit_item_index.kernel, "Kernel Piece", "", "Vegetable", 1, -3, B_ACC, false, false, 0, 100);
	scr_additemindex(fruit_item_index.rock_piece, "Rock Piece", "", "Other", -1, -3, B_ACC, false, false, 0, 100);
	scr_additemindex(fruit_item_index.emptynaut, "Emptynaut", "Just an empty husk", "Other", 0, -3, B_ACC, false, true, 0, 100);
	
	scr_additemindex(fruit_item_index.merganaut, "Merganaut", "Explodes when it hits the ground, potentially replicating itself in the process", "Vegetable", 0, -3, B_ACC, true, false, 0, 5);
	scr_additemindex(fruit_item_index.chaos_shroom, "Chaos Shroom", "On Pickup randomly Increases / Decreases Stats", "Fungus", 10, B_GRAV, B_ACC, false, true, 0, 5);

}