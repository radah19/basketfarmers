y += grav + global.player_grav;
var var_acc = acc + global.player_acc;
if(var_acc < 0){
	var_acc = 0.01;	
}
grav += var_acc

image_xscale += (global.item_radiated_compost * 0.01);
image_yscale += (global.item_radiated_compost * 0.01);

image_angle += rotate;

x += horizontal_reflect;
var y_min = 200 - abs(ds_grid_get(global.item_index, what_fruit_am_i, fruit_item_stat.stat_grav) * 3);
var y_max = 200 + abs(ds_grid_get(global.item_index, what_fruit_am_i, fruit_item_stat.stat_grav) * 3);

if(can_bounce == true) && (ground_effect != true){
	if(y > y_min) && (y < y_max){
		grav = -1.6;
		acc = 0.3;
		horizontal_reflect = irandom_range(-1, 1);
		can_bounce = false;
	}
}

if(ground_effect == true){
	if(y > y_min) && (y < y_max){
		switch(ds_grid_get(global.item_index, what_fruit_am_i, fruit_item_stat.name)){
			case "Watermelon":
				scr_explode_into_pieces(fruit_item_index.watermelon_piece, 3, 0);
				break;
				
			case "Corn Cob":
				scr_explode_into_pieces(fruit_item_index.kernel, 5, 0);
				break;
				
			case "Rock":
				scr_explode_into_pieces(fruit_item_index.rock_piece, 3, 0);
				break;
				
			case "Seed":
				instance_create_depth(x, 200, 50, obj_flower);
				instance_destroy();
				break;
				
			case "Egg":
				instance_create_depth(x, 200, 50, obj_yolk);
				scr_explode_into_pieces(fruit_item_index.egg_shell, 2, 0);
				instance_destroy();
				break;
				
			case "Boot":
				global.farmer_cash -= 3;
				global.farmer_score -= 3;
				instance_destroy();
				break;
				
			case "Little Man":
				if(global.farmer_total_time > 60){
					global.farmer_total_time -= 60;	
				}
				instance_destroy();
				break;
			
			case "Merganaut":
				scr_explode_into_pieces(choose(fruit_item_index.merganaut, fruit_item_index.emptynaut, fruit_item_index.emptynaut, fruit_item_index.emptynaut), 3, 0);
				break;
				
			case "Smoge Nut":
				var smokey = instance_create_depth(x, y, depth, obj_smoke);
				smokey.state = "Spawner";
				break;
			
			case "Party Box":
					for(var i = 0; i < 5; i++){
						var temp = ds_list_find_value(global.list, irandom_range(0, ds_list_size(global.list) - 1));
						while(ds_grid_get(global.item_index, temp, fruit_item_stat.name) == "Party Box"){
							var temp = ds_list_find_value(global.list, irandom_range(0, ds_list_size(global.list) - 1));
						}
						while(ds_grid_get(global.item_index, temp, fruit_item_stat.name) == "ULTRA MEGA PARTY BOX"){
							var temp = irandom_range(1, fruit_item_index.total - 1);
						}
						var fruit_piece = instance_create_depth(x, y, depth, obj_fruit);	
						fruit_piece.what_fruit_am_i = temp;
						fruit_piece.image_index = temp;

						fruit_piece.can_bounce = ds_grid_get(global.item_index, temp, fruit_item_stat.stat_bounces);
						fruit_piece.ground_effect = ds_grid_get(global.item_index, temp, fruit_item_stat.stat_groundeffect);
		
						fruit_piece.grav = random_range(ds_grid_get(global.item_index, temp, fruit_item_stat.stat_grav) - 0.5 - 5, ds_grid_get(global.item_index, temp, fruit_item_stat.stat_grav) + 0.5 - 5);
						fruit_piece.acc = ds_grid_get(global.item_index, temp, fruit_item_stat.stat_acc);
						fruit_piece.horizontal_reflect = random_range(-1, 1);
					}

				break;
			
			case "ULTRA MEGA PARTY BOX":
					for(var i = 0; i < 5; i++){
						var temp = irandom_range(1, fruit_item_index.total - 1);
						while(ds_grid_get(global.item_index, temp, fruit_item_stat.name) == "ULTRA MEGA PARTY BOX"){
							var temp = irandom_range(1, fruit_item_index.total - 1);
						}
						while(ds_grid_get(global.item_index, temp, fruit_item_stat.name) == "Party Box"){
							var temp = ds_list_find_value(global.list, irandom_range(0, ds_list_size(global.list) - 1));
						}
						var fruit_piece = instance_create_depth(x, y, depth, obj_fruit);	
						fruit_piece.what_fruit_am_i = temp;
						fruit_piece.image_index = temp;

						fruit_piece.can_bounce = ds_grid_get(global.item_index, temp, fruit_item_stat.stat_bounces);
						fruit_piece.ground_effect = ds_grid_get(global.item_index, temp, fruit_item_stat.stat_groundeffect);
		
						fruit_piece.grav = random_range(ds_grid_get(global.item_index, temp, fruit_item_stat.stat_grav) - 0.5 - 5, ds_grid_get(global.item_index, temp, fruit_item_stat.stat_grav) + 0.5 - 5);
						fruit_piece.acc = ds_grid_get(global.item_index, temp, fruit_item_stat.stat_acc);
						fruit_piece.horizontal_reflect = random_range(-1, 1);
					}
					instance_destroy();
				break;
				
			case "Matryoshka":
				scr_explode_into_pieces(fruit_item_index.matryoshka2, 1, 0);
				break;
				
			case "Matryoshka 2":
				if(grav > 0) scr_explode_into_pieces(fruit_item_index.matryoshka3, 1, 0);
				break;
				
			}
	}
}

if(y > room_height) || (y < -900){
	instance_destroy();	
}

if(global.status_timer_glassmushroom > 0){
	image_alpha = 0.1;
} else {
	image_alpha = 1;	
}

if(global.status_timer_magnetshroom > 0) && (distance_to_object(obj_player) <= 35){
	horizontal_reflect = 1 * sign(obj_player.x - x);
}