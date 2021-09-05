/// @description scr_additemindex(item_ID, name, description, type, point_gain, gravity, acceleration, grnd_effect, bounces, time_change);
/// @function scr_additemindex
/// @param item_ID
/// @param name
/// @param description
/// @param type
/// @param point_gain
/// @param gravity
/// @param acceleration
/// @param grnd_effect
/// @param bounces
/// @param time_change
/// @param tier
function scr_additemindex(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10){
	var iid = argument0;
	global.item_index[# iid, fruit_item_stat.name] = argument1;
	global.item_index[# iid, fruit_item_stat.description] = argument2;
	global.item_index[# iid, fruit_item_stat.stat_type] = argument3;
	global.item_index[# iid, fruit_item_stat.stat_point_gain] = argument4;
	global.item_index[# iid, fruit_item_stat.stat_grav] = argument5;
	global.item_index[# iid, fruit_item_stat.stat_acc] = argument6;
	global.item_index[# iid, fruit_item_stat.stat_groundeffect] = argument7;
	global.item_index[# iid, fruit_item_stat.stat_bounces] = argument8;
	global.item_index[# iid, fruit_item_stat.stat_timechange] = argument9;
	global.item_index[# iid, fruit_item_stat.stat_tier] = argument10;
}