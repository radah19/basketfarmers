if(global.game_started == true){

if(global.shop_pause == false){
	var h_input = keyboard_check(vk_right) - keyboard_check(vk_left);
	global.player_spd = round((base_player_spd + global.player_speedbonus + global.star_speed_bonus + global.item_speedboot
								+ (global.item_brickboots * 3) + global.star_fury_gravity_bonus - (global.item_watch * 2)
								+ (global.status_timer_tablet > 0 ? 5 : 0) + (global.status_timer_yumyumpill > 0 ? 4 : 0))
								* slowdown_bonus_egg * slowdown_bonus_flower) - (global.status_timer_negtablet > 0 ? 4 : 0);
	if(global.player_spd < 0){
		global.player_spd = 0;	
	}
	
	var inst_fruit = instance_place(x, y, obj_fruit);
	if(inst_fruit != noone) with(inst_fruit) scr_check_fruit(what_fruit_am_i);
	

	if(place_meeting(x + (h_input * global.player_spd), y, obj_wall)){
		while(!place_meeting(x + sign(h_input * global.player_spd), y, obj_wall)){
			x += h_input;
		}
			x += 0;	
		} else {
			x += h_input * global.player_spd;
	}

	if(place_meeting(x, y, obj_flower)) slowdown_bonus_flower = 0.49;
	else slowdown_bonus_flower = 1;	

	
	if(place_meeting(x, y + 1, obj_yolk)) slowdown_bonus_egg = 0.22;
	else slowdown_bonus_egg = 1;	
	

	if(h_input == 0){
		image_speed = 0;
		image_index = 0;	
	} else {
		image_speed = global.player_spd * 3;	
		if(sprite_flips == true){
			if(h_input == 1){
				image_xscale = -1;	
			} else {
				image_xscale = 1;
			}
		}
	}
}

}