if(flower_timer_1 < 11){
	flower_timer_1++;
	draw_sprite_ext(spr_flowerwall, flower_timer_1, x, y, 1, 1, 0, c_white, 1);
}

var flower_max = 60 - (global.item_fertilizer * 15);

if(flower_timer_1 == 11) && (flower_timer_2 < flower_max){
	sprite_index = spr_flowerwall;
	image_index = 11;
	draw_self();
	if(flower_timer_2 < flower_max){
		flower_timer_2++;	
	}
} 

if(flower_timer_1 == 11) && (flower_max < 0){
	instance_destroy();	
}

if(flower_timer_2 == flower_max){
	draw_self();
	image_speed = 1;	
}

if(image_index == 19){
	instance_destroy();	
}