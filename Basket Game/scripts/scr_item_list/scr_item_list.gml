function scr_item_list(){
	enum fruit_item_index
	{
		none,
		//Fruit
		orange, apple, banana, pear, watermelon, pineapple, lemon, smogenut, buffing_fruit,
		//Berries
		grape_berries, blackberries, raspberries, strawberry, blueberry,
		//Stars / Berries
		speed_star, floating_star, anvil_star, speed_berry, floating_berry, anvil_berry,
		starfury, zealous_star, zealous_berry,
		//Rotten
		rotten_apple, rotten_banana, rotten_pear, rotten_buffing_fruit, rotting_leaf,
		rotten_strawberry, rotten_star, rotten_buffing_vegetable,
		//Vegetables
		carrot, broccoli, eggplant, red_pepper, yellow_pepper, green_pepper, blue_pepper, 
		corn_cob, buffing_vegetable, potato, red_cabbage,
		//Mushroom
		screenwarp_mushroom, red_mushroom, dark_mushroom, confusion_mushroom, glass_mushroom, 
		illusion_mushroom, radiation_shroom, psi_shroom, buffing_shroom, magnet_shroom,
		mushroom,
		//Other
		dice, mystery_ball, knife, bomb, rock, clock, seed, egg, grey_clock, boot,
		golden_coin, leaf, skull, little_man, smiley_face, bullet, party_box, painkiller,
		matryoshka, matryoshka2, matryoshka3, tablet, probiotic, yumyumpill, crystal_skull,
		//Bullet
		watermelon_piece, kernel, rock_piece, egg_shell, shard, emptynaut,
		//Mutant
		merganaut, chaos_shroom, green_juice, actual_pepper, 
		ultra_mega_party_box,
		//Void
		void_sphere,
		
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
	scr_additemindex(fruit_item_index.total,  "Total", "THATS THE TOTAL", "Vegetable", 43589345, 666, 666, false, false, 0, 10000000);
	
	scr_additemindex(fruit_item_index.orange,  "Orange", "Gives 1 Point", "Fruit", 1, B_GRAV, B_ACC, false, false, 0, 0);
	scr_additemindex(fruit_item_index.apple,  "Apple", "Gives 2 Points", "Fruit", 2, B_GRAV, B_ACC, false, false, 0, 1);
	scr_additemindex(fruit_item_index.banana,  "Banana", "Gives 3 Points, Falls Faster", "Fruit", 3, B_GRAV + 1, B_ACC, false, false, 0, 1);
	scr_additemindex(fruit_item_index.pear,  "Pear", "Gives 1 Point, Falls Slower", "Fruit", 1, B_GRAV - 1, 0.025, false, false, 0, 1);
	scr_additemindex(fruit_item_index.watermelon,  "Watermelon", "Gives 4 Points, explodes if it hits the ground", "Fruit", 4, B_GRAV, 0.08, true, false, 0, 3);
	scr_additemindex(fruit_item_index.pineapple,  "Pineapple", "Gives 6 Points, decreases time on pickup (0.3 seconds)", "Fruit", 6, B_GRAV, B_ACC, false, true, 20, 2);
	scr_additemindex(fruit_item_index.lemon,  "Lemon", "Gives amount from -2 to 5", "Fruit", "?", B_GRAV, B_ACC, false, false, 0, 2);
	scr_additemindex(fruit_item_index.smogenut,  "Smoge Nut", "Releases fumes of smoke as ground collision", "Fruit", 1, B_GRAV - 0.5, B_ACC, true, false, 0, -2);
	scr_additemindex(fruit_item_index.buffing_fruit,  "Buffing Fruit", "On pickup gives status that increases value of fruits by 35%", "Fruit", 0, B_GRAV, B_ACC, false, false, 0, 3);
	
	scr_additemindex(fruit_item_index.grape_berries,  "Grapes", "Points given based on Acceleration", "Berry", 1, B_GRAV, B_ACC, false, false, 0, 1);
	scr_additemindex(fruit_item_index.blackberries, "Blackberries", "Points given based on Speed", "Berry", 1, B_GRAV, B_ACC, false, false, 0, 3);
	scr_additemindex(fruit_item_index.raspberries, "Raspberries", "Points given based on Gravity", "Berry", 1, B_GRAV, B_ACC, false, false, 0, 2);
	scr_additemindex(fruit_item_index.strawberry, "Strawberry", "Points given based on size of List", "Berry", 1, B_GRAV, B_ACC, false, false, 0, 4);
	scr_additemindex(fruit_item_index.blueberry, "Blueberry", "Points given based on Speed and Gravity values", "Berry", 1, B_GRAV, B_ACC, false, false, 0, 2);
	
	scr_additemindex(fruit_item_index.speed_star, "Speed Star", "Gives speed bonus on pickup", "Star", 1, B_GRAV + 0.5, B_ACC, false, false, 0, 4);
	scr_additemindex(fruit_item_index.floating_star, "Float Star", "Gives gravity decrease on pickup", "Star", 1, B_GRAV + 0.5, B_ACC, false, false, 0, 4);
	scr_additemindex(fruit_item_index.anvil_star, "Anvil Star", "Gives gravity increase on pickup", "Star", 1, B_GRAV + 0.5, B_ACC, false, false, 0, 2);
	scr_additemindex(fruit_item_index.speed_berry, "Speed Berry", "Gives more points when Speed Star status is active", "Berry", 1, B_GRAV, B_ACC, false, false, 0, 1);
	scr_additemindex(fruit_item_index.floating_berry, "Float Berry", "Gives more points when Float Star status is active", "Berry", 1, B_GRAV, B_ACC, false, false, 0, 1);
	scr_additemindex(fruit_item_index.anvil_berry, "Anvil Berry", "Gives more points when Anvil Star status is active", "Berry", 1, B_GRAV, B_ACC, false, false, 0, 0);
	scr_additemindex(fruit_item_index.starfury, "Starfury", "Gives big gravity and speed increase on pickup", "Star", 4, B_GRAV + 2, B_ACC + 0.05, false, false, 0, 100);
	scr_additemindex(fruit_item_index.zealous_star, "Zealous Star", "Increases value of items by 30% and gravity on pickup", "Star", 1, B_GRAV, B_ACC, false, false, 0, 4);
	scr_additemindex(fruit_item_index.zealous_berry, "Zealous Berry", "Gives more points when Zealous Star status is active", "Berry", 1, B_GRAV, B_ACC, false, false, 0, 1);
		
	scr_additemindex(fruit_item_index.rotten_apple, "Rotten Apple", "Takes 2 Points", "Rotten", -2, B_GRAV, B_ACC, false, false, 0, -1);
	scr_additemindex(fruit_item_index.rotten_banana, "Rotten Banana", "Takes 3 Points, falls faster", "Rotten", -3, B_GRAV + 1, B_ACC, false, false, 0, -1);
	scr_additemindex(fruit_item_index.rotten_pear, "Rotten Pear", "Takes 2 Points, falls slower", "Rotten", -2, B_GRAV - 1, 0.025, false, false, 0, -1);
	scr_additemindex(fruit_item_index.rotten_buffing_fruit, "Rotten Buffing Fruit", "On pickup gives status that decreases value of fruits by 45%", "Rotten", 0, B_GRAV, B_ACC, false, false, 0, -1);
	scr_additemindex(fruit_item_index.rotting_leaf, "Rotting Leaf", "Takes 2 Points, falls very slowly", "Rotten", -2, 0.4, 0.01, false, false, 0, 0);
	scr_additemindex(fruit_item_index.rotten_strawberry, "Mouldy Strawberry", "Points taken based on size of List", "Berry", 1, B_GRAV, B_ACC, false, false, 0, -3);
	scr_additemindex(fruit_item_index.rotten_star, "Rotten Star", "Gives status that decreases value of all items by 50%", "Star", 1, B_GRAV, B_ACC, false, false, 0, -3);
	scr_additemindex(fruit_item_index.rotten_buffing_vegetable, "Rotten Buffing Veggie", "Gives status that decreases value of vegetables by 45%", "Rotten", 0, B_GRAV, B_ACC, false, false, 0, -1);
	
	scr_additemindex(fruit_item_index.carrot, "Carrot", "Gives 1 Point", "Vegetable", 1, B_GRAV, B_ACC, false, false, 0, 0);
	scr_additemindex(fruit_item_index.broccoli, "Broccoli", "Takes 2 Points, increases overall speed by 0.03", "Vegetable", -2, B_GRAV, B_ACC, false, false, 0, 2);
	scr_additemindex(fruit_item_index.eggplant, "Eggplant", "Takes 2 Points, increases time (1 second)", "Vegetable", -2, B_GRAV, B_ACC, false, false, -60, 2);
	scr_additemindex(fruit_item_index.red_pepper, "Red Pepper", "Gives 6 Points, decreases time on pickup (1 second)", "Vegetable", 6, B_GRAV, B_ACC, false, false, 60, 2);
	scr_additemindex(fruit_item_index.yellow_pepper, "Yellow Pepper", "Takes 4 Points, decreases time on pickup (1 second)", "Vegetable", -4, B_GRAV, B_ACC, false, false, 60, -2);
	scr_additemindex(fruit_item_index.green_pepper, "Green Pepper", "Takes 4 Points, increases time on pickup (1 second)", "Vegetable", -4, B_GRAV, B_ACC, false, false, -60, 1);
	scr_additemindex(fruit_item_index.blue_pepper, "Blue Pepper", "Takes 6 Points, increases time on pickup (1.5 seconds)", "Vegetable", -6, B_GRAV + 0.5, B_ACC, false, false, -90, 4);
	scr_additemindex(fruit_item_index.corn_cob, "Corn Cob", "Gives 4 Points, explodes if it hits the ground", "Vegetable", 4, B_GRAV, 0.09, true, false, 0, 3);
	scr_additemindex(fruit_item_index.buffing_vegetable, "Buffing Vegetable", "Gives status that increases value of vegetables by 35%", "Vegetable", 0, B_GRAV, B_ACC, false, false, 0, 3);
	scr_additemindex(fruit_item_index.potato, "Potato", "Adds to time between -0.5 seconds and 1 second", "Vegetable", -3, B_GRAV, B_ACC, false, false, 0, 2);
	scr_additemindex(fruit_item_index.red_cabbage, "Red Cabbage", "Increases time (0.5 seconds), falls faster", "Vegetable", 0, B_GRAV + 1, B_ACC, false, false, -30, 1);
	
	scr_additemindex(fruit_item_index.screenwarp_mushroom, "Warp Shroom", "Flips screens upside down on Pickup", "Fungus", 1, B_GRAV, B_ACC, false, false, 0, -1);
	scr_additemindex(fruit_item_index.red_mushroom, "Red Shroom", "Turns screen Red on Pickup", "Fungus", 1, B_GRAV, B_ACC, false, false, 0, -1);
	scr_additemindex(fruit_item_index.dark_mushroom, "Dark Shroom", "Turns screen dark on Pickup", "Fungus", 1, B_GRAV, B_ACC, false, false, 0, -3);
	scr_additemindex(fruit_item_index.confusion_mushroom, "Confusion Shroom", "Confuses you", "Fungus", 1, B_GRAV, B_ACC, false, false, 0, -1);
	scr_additemindex(fruit_item_index.glass_mushroom, "Glass Shroom", "Makes items less visible on Pickup", "Fungus", 1, B_GRAV, B_ACC, false, false, 0, -2);
	scr_additemindex(fruit_item_index.illusion_mushroom, "Illusion Shroom", "Causes items to have False Copies around it", "Fungus", 1, B_GRAV, B_ACC, false, false, 0, -4);
	scr_additemindex(fruit_item_index.radiation_shroom, "Rad Shroom", "Causes items to seem to grow in size... by a lot", "Fungus", 1, B_GRAV, B_ACC, false, false, 0, -2);
	scr_additemindex(fruit_item_index.psi_shroom, "Psi Shroom", "Causes you to Hallucinate some Clones", "Fungus", 1, B_GRAV, B_ACC, false, false, 0, -4);
	scr_additemindex(fruit_item_index.buffing_shroom, "Buffing Shroom", "On pickup gives status that increases value of mushrooms by 30%", "Fungus", 0, B_GRAV, B_ACC, false, false, 0, 3);
	scr_additemindex(fruit_item_index.magnet_shroom, "Magnet Shroom", "On pickup gives status that attracts nearby items to you", "Fungus", -10, B_GRAV, B_ACC, false, false, 0, 4);
	scr_additemindex(fruit_item_index.mushroom, "Mushroom", "Basic, bland, boring mushroom", "Fungus", -1, B_GRAV, B_ACC, false, false, 0, 0);
	
	scr_additemindex(fruit_item_index.dice, "Dice", "Gives amount from 1 to 6", "Other", "?", B_GRAV, B_ACC, false, false, 0, 4);
	scr_additemindex(fruit_item_index.mystery_ball, "Mystery Ball", "Gives amount from -4 to 6", "Other", "?", B_GRAV, B_ACC, false, false, 0, 2);
	scr_additemindex(fruit_item_index.knife, "Knife", "Shortens time on pickup by 1.5 seconds", "Other", 0, B_GRAV, B_ACC, false, false, 90, -2); 
	scr_additemindex(fruit_item_index.bomb, "Bomb", "Shortens time on pickup by 3.5 seconds", "Other", 0, B_GRAV, B_ACC, false, false, 210, -3);
	scr_additemindex(fruit_item_index.rock, "Rock", "Explodes on collision with ground, pieces take points", "Other", -5, B_GRAV, B_ACC, true, false, 0, -3);
	scr_additemindex(fruit_item_index.clock, "Clock", "Increases time by a second and a half", "Other", 0, B_GRAV, B_ACC, false, false, -90, 3);
	scr_additemindex(fruit_item_index.seed, "Seed", "Collision with ground causes Flower to spawn, slows speed", "Other", 0, B_GRAV, B_ACC, true, false, 0, -2);
	scr_additemindex(fruit_item_index.egg, "Egg", "Collision with ground causes Yolk to spawn, slows speed", "Other", 1, B_GRAV, B_ACC, true, false, 0, -4);
	scr_additemindex(fruit_item_index.grey_clock, "Grey Clock", "Decreases time by a second on pickup", "Other", 0, B_GRAV, B_ACC, false, false, 60, -1);
	scr_additemindex(fruit_item_index.boot, "Boot", "Falls based on Player Speed, not being picked up Subtracts 3 points", "Other", 4, B_GRAV, B_ACC, true, false, 0, -4);
	scr_additemindex(fruit_item_index.golden_coin, "Golden Coin", "Picking up 3 Coins gives 6 points times the amount of counters you hold", "Other", 1, B_GRAV, B_ACC, false, false, 0, 100);
	scr_additemindex(fruit_item_index.leaf, "Leaf", "Gives 1 Point, falls very slowly", "Other", 1, 0.4, 0.01, false, false, 0, 0);
	scr_additemindex(fruit_item_index.skull, "Skull", "Increases overall gravity by 0.05 on pickup", "Other", -1, B_GRAV, B_ACC, false, false, 0, -2);
	scr_additemindex(fruit_item_index.little_man, "Little Man", "Shortens Time by 1 second if not picked up", "Other", 0, B_GRAV, B_ACC, true, false, 0, -3);
	scr_additemindex(fruit_item_index.smiley_face, "Smiley Face", "Bounces C=", "Other", 1, B_GRAV, B_ACC, false, true, 0, 0);
	scr_additemindex(fruit_item_index.bullet, "Bullet", "It's coming right for ya !", "Other", -7, 0.02, 0.01, false, false, 0, -2);
	scr_additemindex(fruit_item_index.party_box, "Party Box", "Bursts into items from your very own inventory! :D", "Other", -10, B_GRAV, B_ACC, true, false, 0, 4);
	scr_additemindex(fruit_item_index.painkiller, "Painkiller", "Gives status that inhibits the ability to gain other status effects", "Other", 0, B_GRAV, B_ACC, false, false, 0, 2);
	scr_additemindex(fruit_item_index.matryoshka, "Matryoshka", "Bursts into a matryoshka worth more points (1 -> 3 -> 5)", "Other", 1, B_GRAV, B_ACC, true, false, 0, 2);
	scr_additemindex(fruit_item_index.matryoshka2, "Matryoshka 2", "Bursts into a matryoshka worth more points (3 -> 5) if not picked up", "Other", 3, -3, B_ACC, true, false, 0, 5);
	scr_additemindex(fruit_item_index.matryoshka3, "Matryoshka 3", "Small :)", "Other", 5, -3, B_ACC, false, false, 0, 5);
	scr_additemindex(fruit_item_index.tablet, "Tablet", "Gives a temporary increase of speed and a decrease after", "Other", 0, B_GRAV, B_ACC, false, false, 0, 3);
	scr_additemindex(fruit_item_index.probiotic, "Probiotic", "Takes 4 points and give a temporary gravity decrease", "Other", -4, B_GRAV, B_ACC, false, false, 0, 3);
	scr_additemindex(fruit_item_index.yumyumpill, "Yum Yum Pill", "Gives a temporary increase in speed", "Other", -2, B_GRAV + 2, B_ACC + 0.02, false, false, 0, 3);
	scr_additemindex(fruit_item_index.crystal_skull, "Crystal Skull", "Explodes on collision with ground, pieces increase gravity by 0.05", "Other", 0, B_GRAV + 0.5, B_ACC, true, false, 0, -4);
	
	scr_additemindex(fruit_item_index.watermelon_piece, "Watermelon Piece", "", "Fruit", 1, -3, B_ACC, false, false, 0, 100);
	scr_additemindex(fruit_item_index.kernel, "Kernel Piece", "", "Vegetable", 1, -3, B_ACC, false, false, 0, 100);
	scr_additemindex(fruit_item_index.rock_piece, "Rock Piece", "", "Other", -1, -3, B_ACC, false, false, 0, 100);
	scr_additemindex(fruit_item_index.egg_shell, "Egg Shell", "", "Other", -1, -3, B_ACC, false, false, 0, 100);
	scr_additemindex(fruit_item_index.emptynaut, "Emptynaut", "Just an empty husk", "Other", 0, -3, B_ACC, false, true, 0, 100);
	scr_additemindex(fruit_item_index.shard, "Shard", "Increase gravity by 0.05 on pickup, unlucky if you rolled this", "Other", 0, -2.5, B_ACC, false, false, 0, 100);
	
	scr_additemindex(fruit_item_index.merganaut, "Merganaut", "Explodes when it hits the ground, potentially replicating itself in the process", "Vegetable", 0, -3, B_ACC, true, false, 0, 5);
	scr_additemindex(fruit_item_index.chaos_shroom, "Chaos Shroom", "On Pickup randomly Increases / Decreases Stats", "Fungus", 4, B_GRAV, B_ACC, false, true, 0, 100);
	scr_additemindex(fruit_item_index.green_juice, "Green Juice", "Yum :)", "Other", 1, B_GRAV - 2, B_ACC, false, false, 0, 100);
	scr_additemindex(fruit_item_index.actual_pepper, "Actual Pepper", "Peppers are fruit", "Fruit", 1, B_GRAV, B_ACC, false, false, 0, 100);
	scr_additemindex(fruit_item_index.ultra_mega_party_box, "ULTRA MEGA PARTY BOX", ":D :D :D :D :D", "Other", -20, B_GRAV - 1, B_ACC, true, false, 0, 5);
	
	scr_additemindex(fruit_item_index.void_sphere, "Void Berry", "Gives status that multiplies the value of items by -1", "Void", 0, B_GRAV, B_ACC, false, false, 0, 100);
	
}