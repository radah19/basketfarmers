/// @description scr_popupbox(function, image_index, potential_message)
/// @function scr_popupbox
/// @param function
/// @param image_index
/// @param potential_message

function scr_popupbox(argument0, argument1, argument2){
	var x_offset = 20;
	var y_offset = global.popup_y_offset;
	
	draw_sprite_ext(spr_popupbox, argument1, x_offset, y_offset, 1, 1, 0, c_white, 1);
	
	if(global.popup_y_offset != 0){
		global.popup_y_offset -= 10;	
	} 
	
	if(global.popup_y_offset == 0){
		global.popup_canselect = true;
	}
	
	draw_set_font(fn_menutext);
	draw_set_color(c_white);
			
	switch(argument0){
		case "Show Message":
			scr_popupmessage(x_offset, y_offset, argument2);
			break;
			
		case "Show List Pairs":	
			scr_popuplistpairs(x_offset, y_offset);
			break;
			
		case "Show Rent and Shop":
			scr_popupshopstuff(x_offset, y_offset, argument2);
			break;
			
		case "Show Game Over":
			scr_popupgameover(x_offset, y_offset, argument2);
			break;
			
	}
}