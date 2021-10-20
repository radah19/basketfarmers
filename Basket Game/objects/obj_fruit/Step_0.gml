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
				scr_explode_into_pieces(fruit_item_index.watermelon_piece, 3);
				break;
				
			case "Corn Cob":
				scr_explode_into_pieces(fruit_item_index.kernel, 5);
				break;
				
			case "Rock":
				scr_explode_into_pieces(fruit_item_index.rock_piece, 3);
				break;
				
			case "Seed":
				instance_create_depth(x, 200, 50, obj_flower);
				instance_destroy();
				break;
				
			case "Egg":
				instance_create_depth(x, 200, 50, obj_yolk);
				instance_destroy();
				break;
				
			case "Boot":
				global.farmer_cash -= 3;
				global.farmer_score -= 3;
				instance_destroy();
				break;
				
			case "Little Man":
				if(global.farmer_total_time > 15){
					global.farmer_total_time -= 15;	
				}
				instance_destroy();
				break;
			
			case "Merganaut":
				scr_explode_into_pieces(choose(fruit_item_index.merganaut, fruit_item_index.emptynaut, fruit_item_index.emptynaut, fruit_item_index.emptynaut), 3);
				break;
			}
	}
}

if(y > room_height){
	instance_destroy();	
}

if(global.status_timer_glassmushroom > 0){
	image_alpha = 0.1;
} else {
	image_alpha = 1;	
}