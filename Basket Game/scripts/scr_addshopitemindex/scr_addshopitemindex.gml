/// @description scr_addshopitemindex(item_ID, name, description, tier);
/// @function scr_addshopitemindex
/// @param item_ID
/// @param name
/// @param description
/// @param tier
function scr_addshopitemindex(argument0, argument1, argument2, argument3){
	var iid = argument0;
	global.shop_item_index[# iid, shop_item_stat.name] = argument1;
	global.shop_item_index[# iid, shop_item_stat.description] = argument2;
	global.shop_item_index[# iid, shop_item_stat.stat_tier] = argument3;

}