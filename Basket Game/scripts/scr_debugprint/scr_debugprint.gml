function scr_debugprint(argument0, argument1){
	for (var i = 0; i < argument0; i++){
			show_debug_message(string(ds_list_find_value(argument1, i)));
		}
}