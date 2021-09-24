if(global.status_timer_psishroom <= 0){
	instance_destroy();	
}

if(global.shop_pause == false){
	var h_input = dir;

	if(place_meeting(x + (h_input * global.player_spd), y, obj_wall)){
		while(!place_meeting(x + sign(h_input * global.player_spd), y, obj_wall)){
			x += h_input;
		}
			dir *= -1;
		} else {
			x += h_input * global.player_spd;
	}

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
