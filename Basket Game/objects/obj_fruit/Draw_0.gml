draw_self();

if(what_fruit_am_i == fruit_item_index.dice){
	draw_sprite_ext(spr_diceroll, spe_dice_number - 1, x, y, 1, 1, image_angle, c_white, image_alpha);	
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





