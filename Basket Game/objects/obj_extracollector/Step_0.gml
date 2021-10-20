if(image_index == 1){
	dir = point_direction(0, 0, dir_x, dir_y);
	h_move = lengthdir_x(2, dir);
	v_move = lengthdir_y(2, dir);	
	
	x += h_move;
	y += v_move;
	
	if(x + dir_x >= room_width) or (x + dir_x <= 0){
		dir_x *= -1;
	}
	
	if(y + dir_y >= 200) or (y + dir_y <= 0){
		dir_y *= -1;
	}
	
	image_angle += rot;
}

var inst_fruit = instance_place(x, y, obj_fruit);
if(inst_fruit != noone){
	with(inst_fruit) scr_check_fruit(what_fruit_am_i);
}

if(global.shop_pause == true){
	instance_destroy();
}