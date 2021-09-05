function scr_popuptextcolor(argument0){
	var selection_color = 0;
	switch(ds_grid_get(global.item_index, argument0, fruit_item_stat.stat_tier)){
		case 0:
			selection_color = make_color_hsv(0, 0, 235);
			break;
			
		case 1:
			selection_color = make_color_rgb(0, 75, 0);
			break;
			
		case 2:
			selection_color = make_color_rgb(0, 135, 0);
			break;
			
		case 3:
			selection_color = make_color_rgb(0, 195, 0);
			break;
			
		case 4:
			selection_color = make_color_rgb(0, 255, 0);
			break;
			
		case -1:
			selection_color = make_color_rgb(75, 0, 0);
			break;
			
		case -2:
			selection_color = make_color_rgb(135, 0, 0);
			break;
			
		case -3:
			selection_color = make_color_rgb(195, 0, 0);
			break;
			
		case -4:
			selection_color = make_color_rgb(255, 0, 0);
			break;
			
		case 100:
			selection_color = c_yellow;
			break;
	}
	
	draw_set_color(selection_color);
}