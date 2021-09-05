var h_input = keyboard_check(vk_right) - keyboard_check(vk_left);

if(place_meeting(x, y - 1, obj_player)) && (h_input != 0){
	image_alpha -= 0.02;
}

if(image_alpha <= 0) || (global.shop_pause == true){
	instance_destroy();
}