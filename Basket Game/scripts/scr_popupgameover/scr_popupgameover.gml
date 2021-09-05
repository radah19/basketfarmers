// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_popupgameover(argument0, argument1, argument2){
	draw_set_font(fn_menutext);
	draw_text_ext(argument0 + 16, argument1 + 34, argument2, font_get_size(fn_menutext) * 2, 227);
			
			if(keyboard_check_pressed(vk_space)) && (global.popup_canselect == true){
				game_restart();
			}
}