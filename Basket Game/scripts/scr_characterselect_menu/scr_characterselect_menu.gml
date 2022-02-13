function scr_characterselect_menu(){
	draw_sprite_ext(spr_menuscreen, 0, 0, 0, 1, 1, 0, c_white, 1);
	draw_sprite_ext(spr_title, 0, 0, 0, 1, 1, 0, c_white, 1);
	
	draw_set_font(fn_menutext);
	
	draw_text(50, 140, "Start");
	draw_text(50, 160, "Continue Run");
	draw_text(50, 180, "Options");
	draw_text(50, 200, "Exit");
	
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(0, 0, window_get_width(), window_get_height(), false);
	
	draw_set_alpha(1);
	draw_set_color(c_white);
	
	draw_sprite_ext(spr_menuscreen, 0, 60, 48, 0.6, 0.6, 0, c_white, 1);
	
	for(var i = 0; i < ds_grid_width(global.character_index); i++){
		draw_sprite(ds_grid_get(global.character_index, i, character_stat.stat_sprite), 0, 95 + (21 * i), 58);
	}
	
	if(keyboard_check_pressed(vk_right)){
		if(selection == 5){
			selection = 5;	
		} else {
			selection++;	
		}
	}
	
	if(keyboard_check_pressed(vk_left)){
		if(selection == 0){
			selection = 0;	
		} else {
			selection--;	
		}
	}
	
	draw_rectangle(85 + (21 * selection), 58, 105 + (21 * selection), 78, true);
	
	draw_set_font(fn_popuptext);
	draw_set_color(c_yellow);
	draw_text(73, 100,ds_grid_get(global.character_index, selection, character_stat.name));
	draw_set_color(c_white);
	draw_text_ext(73, 110,ds_grid_get(global.character_index, selection, character_stat.description), font_get_size(fn_popuptext), 170);
	
	if(keyboard_check_pressed(vk_space)){
		global.fruit_acceleration = ds_grid_get(global.character_index, selection, character_stat.stat_acc);
		global.fruit_gravity = ds_grid_get(global.character_index, selection, character_stat.stat_grav);
		global.player_speedbonus = ds_grid_get(global.character_index, selection, character_stat.stat_spd);
		
		ds_list_add(global.list, ds_grid_get(global.character_index, selection, character_stat.stat_starting_fruit_1));
		ds_list_add(global.list, ds_grid_get(global.character_index, selection, character_stat.stat_starting_fruit_2));
		
		with(obj_player){
			sprite_index = ds_grid_get(global.character_index, obj_controller.selection, character_stat.stat_sprite);	
			sprite_flips = ds_grid_get(global.character_index, obj_controller.selection, character_stat.stat_sprite_flip);
		}
		
		switch(selection){
			case character_index.f_skeleton:
				scr_add_item_inventory(irandom_range(1, ds_grid_width(global.shop_item_index) - 1));
				break;
				
			case character_index.f_ohgodno:
				global.var_ohgodno = true;
				break;
				
			case character_index.f_lemon:
				for(var i; i < 97; i++){
					ds_list_add(global.list, fruit_item_index.lemon);	
				}
				break;
		}
		
		selection = 0;
		global.game_started = true;
	}
}

function scr_characterindex(){
	enum character_index
	{
		f_basic, f_glasscannon, f_tank, f_skeleton, f_ohgodno, f_lemon, total
	}
	
	enum character_stat
	{
		name = 0,
		description = 1,
		stat_grav = 2,
		stat_acc = 3,
		stat_spd = 4,
		stat_starting_fruit_1 = 5,
		stat_starting_fruit_2 = 6,
		stat_sprite = 7,
		stat_sprite_flip = 8,
		total
	}
	
	global.character_index = ds_grid_create(character_index.total, character_stat.total);
	ds_grid_clear(global.character_index, 0);
	
	scr_addcharacterindex(character_index.f_basic, "Jack", "Basic Character, no Negatives or Positives", 0, 0, 0, fruit_item_index.orange, fruit_item_index.carrot, spr_farmer1, false);
	scr_addcharacterindex(character_index.f_glasscannon, "Engineer", "Starts with more Speed, Gravity, and Accleration", 1, 0.05, 2, fruit_item_index.orange, fruit_item_index.carrot, spr_farmer2, true);
	scr_addcharacterindex(character_index.f_tank, "Tank", "Starts with less Speed and Less Gravity", -2, 0, -1, fruit_item_index.orange, fruit_item_index.carrot, spr_farmer3, true);
	scr_addcharacterindex(character_index.f_skeleton, "Skeleton", "Starts with a Random Stuff and some more Speed", 0, 0, 1, irandom_range(1, ds_grid_width(global.item_index) - 1), irandom_range(1, ds_grid_width(global.item_index) - 1), spr_farmer4, true);
	scr_addcharacterindex(character_index.f_ohgodno, "Ogodno", "Takes Everything :(, gets some more Speed", 0, 0, 1, fruit_item_index.party_box, fruit_item_index.orange, spr_farmer5, false);
	scr_addcharacterindex(character_index.f_lemon, "Lemon", "Lemon", 2, 0.1, 0, fruit_item_index.lemon, fruit_item_index.lemon, spr_farmer6, false);
}

function scr_addcharacterindex(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9){
	var iid = argument0;
	global.character_index[# iid, character_stat.name] = argument1;
	global.character_index[# iid, character_stat.description] = argument2;
	global.character_index[# iid, character_stat.stat_grav] = argument3;
	global.character_index[# iid, character_stat.stat_acc] = argument4;
	global.character_index[# iid, character_stat.stat_spd] = argument5;
	global.character_index[# iid, character_stat.stat_starting_fruit_1] = argument6;
	global.character_index[# iid, character_stat.stat_starting_fruit_2] = argument7;
	global.character_index[# iid, character_stat.stat_sprite] = argument8;
	global.character_index[# iid, character_stat.stat_sprite_flip] = argument9;
}