/// @description scr_popupmessage(x_offset, y_offset, message)
/// @function scr_popupmessage
/// @param x_offset
/// @param y_offset
/// @param message
function scr_popupmessage(argument0, argument1, argument2){
	draw_set_font(fn_menutext);
	draw_text_ext(argument0 + 16, argument1 + 34, argument2, font_get_size(fn_menutext) * 2, 227);
			
			if(keyboard_check_pressed(vk_space)) && (global.popup_canselect == true){
				global.popup_canselect = false;
				global.shop_pause = false;
				global.space_temp_timer = 2;
				exit;
			}
}