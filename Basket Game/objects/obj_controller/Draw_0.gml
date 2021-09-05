if(global.game_started == true){

if(global.pause == 0){
draw_set_color(c_white);
draw_set_font(fn_text);

//Draw Scores
draw_sprite_ext(spr_inventory, 0, 0, 200, 1, 1, 0, c_white, 1);
draw_text(151, 210, global.farmer_cash);
draw_text(151, 226, global.farmer_score);
draw_text(237, 210, global.farmer_rent);

//Draw Time
if(global.farmer_total_time mod room_speed > 10){
	draw_text(237, 226, string(global.farmer_total_time div room_speed) + "." + string(global.farmer_total_time mod room_speed));
} else {
	draw_text(237, 226, string(global.farmer_total_time div room_speed) + ".0" + string(global.farmer_total_time mod room_speed));
}

//Draw Status
scr_timers();

//Draw Inventory
scr_inventory();

}

}