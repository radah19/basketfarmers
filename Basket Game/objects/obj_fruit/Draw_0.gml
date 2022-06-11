draw_self();

if(what_fruit_am_i == fruit_item_index.dice){
	draw_sprite_ext(spr_diceroll, spe_dice_number - 1, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);	
}

if(global.status_timer_illusionshroom > 0){
	draw_sprite_ext(spr_fruit, image_index, x - 30, y, rad_shroom_growth, rad_shroom_growth, image_angle, c_white, image_alpha);
	draw_sprite_ext(spr_fruit, image_index, x + 30, y, rad_shroom_growth, rad_shroom_growth, image_angle, c_white, image_alpha);
}


if(global.status_timer_radshroom > 0){
	draw_sprite_ext(spr_fruit, image_index, x, y, rad_shroom_growth, rad_shroom_growth, image_angle, c_white, image_alpha);	
	rad_shroom_growth += 0.05;
} else {
	rad_shroom_growth = 1;
}

//Off Screen Elements
if(x < -2){
	draw_set_alpha(0.3);
	draw_circle(10, y, 7.5, true);
	draw_sprite(spr_fruit, what_fruit_am_i, 10, y);
	draw_set_alpha(1);
}
	
if(x > room_width + 2){
	draw_set_alpha(0.3);
	draw_circle(room_width - 10, y, 7.5, true);
	draw_sprite(spr_fruit, what_fruit_am_i, room_width - 10, y);
	draw_set_alpha(1);
}




