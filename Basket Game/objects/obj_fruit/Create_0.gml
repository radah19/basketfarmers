image_speed = 0;
rotate = irandom_range(-20, 20);
rad_shroom_growth = 1;

random_select = irandom_range(0, ds_list_size(global.list) - 1);

what_fruit_am_i = ds_list_find_value(global.list, random_select);
image_index = what_fruit_am_i + 0.1;

//Check for items on
can_bounce = ds_grid_get(global.item_index, what_fruit_am_i, fruit_item_stat.stat_bounces);
ground_effect = ds_grid_get(global.item_index, what_fruit_am_i, fruit_item_stat.stat_groundeffect);

//Stats
grav = ds_grid_get(global.item_index, what_fruit_am_i, fruit_item_stat.stat_grav);
acc = ds_grid_get(global.item_index, what_fruit_am_i, fruit_item_stat.stat_acc);
horizontal_reflect = 0;	

//Special Numbers / Checks
spe_lemon_number = irandom_range(-2, 5);
spe_dice_number = irandom_range(1, 6);
spe_mysteryball_number = irandom_range(-4, 6);

if(ds_grid_get(global.item_index, what_fruit_am_i, fruit_item_stat.name) == "Boot"){
	grav = 	global.player_spd;
}

//Status Checks
if(global.status_timer_glassmushroom > 0){
	image_alpha = 0.05;
}

//Item Checks
if(global.item_peppertoken > 0){
	var pepper_subtract = global.item_peppertoken / 3;
	switch(ds_grid_get(global.item_index, what_fruit_am_i, fruit_item_stat.name)){
		case "Red Pepper":
			grav -= pepper_subtract;
			break;
			
		case "Yellow Pepper":
			grav -= pepper_subtract;
			break;
			
		case "Green Pepper":
			grav -= pepper_subtract;
			break;
			
		case "Blue Pepper":
			grav -= pepper_subtract;
			break;
			
		case "Actual Pepper":
			grav -= pepper_subtract;
			break;
	}
}

image_xscale = 1 + (global.item_strange_pill * 0.5);
image_yscale = 1 + (global.item_strange_pill * 0.5);