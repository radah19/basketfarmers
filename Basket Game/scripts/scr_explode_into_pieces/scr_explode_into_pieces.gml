/// @description scr_explode_into_pieces(item_ID, amn_pieces);
/// @function scr_explode_into_pieces
/// @param item_ID
/// @param amn_pieces
function scr_explode_into_pieces(argument0, argument1, argument2){
	for(var i = 0; i < argument1 + global.item_magic_scythe; i++){
		var fruit_piece = instance_create_depth(x, y, depth, obj_fruit);	
		fruit_piece.what_fruit_am_i = argument0;
		fruit_piece.image_index = argument0;

		fruit_piece.can_bounce = ds_grid_get(global.item_index, argument0, fruit_item_stat.stat_bounces);
		fruit_piece.ground_effect = ds_grid_get(global.item_index, argument0, fruit_item_stat.stat_groundeffect);
		
		fruit_piece.grav = random_range(ds_grid_get(global.item_index, argument0, fruit_item_stat.stat_grav) - 0.5 - argument2, ds_grid_get(global.item_index, argument0, fruit_item_stat.stat_grav) + 0.5 - argument2);
		fruit_piece.acc = ds_grid_get(global.item_index, argument0, fruit_item_stat.stat_acc);
		fruit_piece.horizontal_reflect = random_range(-1, 1);
	}
	instance_destroy();
}
