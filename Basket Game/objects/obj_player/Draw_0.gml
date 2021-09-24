draw_self();

if(global.status_timer_psishroom > 0){
	draw_sprite_ext(sprite_index, image_index, x + temp1, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);
	draw_sprite_ext(sprite_index, image_index, x + temp2, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);	
	draw_sprite_ext(sprite_index, image_index, x + temp3, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);	
}