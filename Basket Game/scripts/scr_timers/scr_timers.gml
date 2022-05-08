function scr_timers(){
if(ds_list_size(global.status_drawinglist) > 0){
	for(var i = 0; i < ds_list_size(global.status_drawinglist); i++){
		var y_offset = (i * 20);
		draw_sprite_ext(spr_statuseffect, ds_list_find_value(global.status_drawinglist, i), 0, y_offset, 1, 1, 0, c_white, 0.5);
	}
}

//Buffing Fruit
if(global.status_timer_buffingfruit >= 0){
	global.status_timer_buffingfruit--;
}

if(global.status_timer_buffingfruit == 0){
	scr_delete_status_effect(1);
}

//Rotten Buffing Fruit
if(global.status_timer_rottenbuffingfruit >= 0){
	global.status_timer_rottenbuffingfruit--;
}

if(global.status_timer_rottenbuffingfruit == 0){
	scr_delete_status_effect(6);
}

//Speed Star
if(global.status_timer_speedstar >= 0){
	global.status_timer_speedstar--;
}

if(global.status_timer_speedstar == 0){
	global.star_speed_bonus = 0;
	scr_delete_status_effect(2);
}

if(global.status_timer_speedstar > 0){
	global.star_speed_bonus = 5;
}

//Float Star
if(global.status_timer_floatstar >= 0){
	global.status_timer_floatstar--;
}


if(global.status_timer_floatstar == 0){
	global.star_gravity_bonus = 0;
	scr_delete_status_effect(3);
}

if(global.status_timer_floatstar > 0){
	global.star_float_bonus = -2;
}

//Anvil Star
if(global.status_timer_anvilstar >= 0){
	global.status_timer_anvilstar--;
}

if(global.status_timer_anvilstar == 0){
	global.star_gravity_bonus = 0;
	scr_delete_status_effect(4);
}

if(global.status_timer_anvilstar > 0){
	global.star_gravity_bonus = 2;
}

//Starfury
if(global.status_timer_starfury >= 0) global.status_timer_starfury--;


if(global.status_timer_starfury == 0){
	global.star_speed_bonus = 0;
	scr_delete_status_effect(5);
}

if(global.status_timer_starfury > 0) global.star_fury_gravity_bonus = 8;


//Zealous Star
if(global.status_timer_buffingstar >= 0) global.status_timer_buffingstar--;


if(global.status_timer_buffingstar == 0){
	scr_delete_status_effect(19);
	global.star_zealous_bonus = 0;
}

if(global.status_timer_buffingstar > 0) global.star_zealous_bonus = 3;

//Star Interactions
if(global.status_timer_anvilstar <= 0){
	global.star_gravity_bonus = 0;
}

if(global.status_timer_floatstar <= 0){
	global.star_float_bonus = 0;
}

if(global.status_timer_speedstar <= 0){
	global.star_speed_bonus = 0;
}

if(global.status_timer_starfury < 0){
	global.star_fury_gravity_bonus = 0;
}



//Screenwarp Mushroom
if(global.status_timer_screenwarpmushroom >= 0){
	global.status_timer_screenwarpmushroom--;
}

if(global.status_timer_screenwarpmushroom == 0){
	scr_delete_status_effect(7);
}

//Red Mushroom
if(global.status_timer_redmushroom >= 0){
	global.status_timer_redmushroom--;
}

if(global.status_timer_redmushroom == 0){
	scr_delete_status_effect(8);
}

//Dark Mushroom
if(global.status_timer_darkmushroom >= 0){
	global.status_timer_darkmushroom--;
}

if(global.status_timer_darkmushroom == 0){
	scr_delete_status_effect(9);
}

//Confusion Mushroom
if(global.status_timer_confusionmushroom >= 0){
	global.status_timer_confusionmushroom--;
}

if(global.status_timer_confusionmushroom == 0){
	scr_delete_status_effect(10);
}

//Glass Mushroom
if(global.status_timer_glassmushroom >= 0){
	global.status_timer_glassmushroom--;
}

if(global.status_timer_glassmushroom == 0){
	scr_delete_status_effect(11);
}

//Illusion Mushroom
if(global.status_timer_illusionshroom >= 0){
	global.status_timer_illusionshroom--;
}

if(global.status_timer_illusionshroom == 0){
	scr_delete_status_effect(12);
}

//Radiation Mushroom
if(global.status_timer_radshroom >= 0){
	global.status_timer_radshroom--;
}

if(global.status_timer_radshroom == 0){
	scr_delete_status_effect(13);
}

//Psi Mushroom
if(global.status_timer_psishroom >= 0){
	global.status_timer_psishroom--;
}

if(global.status_timer_psishroom == 0){
	scr_delete_status_effect(14);
}

//Buffing Mushroom
if(global.status_timer_buffshroom >= 0){
	global.status_timer_buffshroom--;
}

if(global.status_timer_buffshroom == 0){
	scr_delete_status_effect(15);
}

//Green Juice
if(global.status_timer_greenjuice >= 0){
	global.status_timer_greenjuice--;
}

if(global.status_timer_greenjuice == 0){
	scr_delete_status_effect(16);
}

//Buffing Vegetable
if(global.status_timer_buffveg >= 0){
	global.status_timer_buffveg--;
}

if(global.status_timer_buffveg == 0){
	scr_delete_status_effect(17);
}

//Magnet Shroom
if(global.status_timer_magnetshroom >= 0){
	global.status_timer_magnetshroom--;
}

if(global.status_timer_magnetshroom == 0){
	scr_delete_status_effect(18);
}

//Rotten Star
if(global.status_timer_rottingstar >= 0){
	global.status_timer_rottingstar--;
}

if(global.status_timer_rottingstar == 0){
	scr_delete_status_effect(20);
}

//Rotten Buff Veg
if(global.status_timer_rottingbuffingveg >= 0){
	global.status_timer_rottingbuffingveg--;
}

if(global.status_timer_rottingbuffingveg == 0){
	scr_delete_status_effect(21);
}

//Painkiller
if(global.status_timer_painkiller >= 0){
	global.status_timer_painkiller--;
}

if(global.status_timer_painkiller == 0){
	scr_delete_status_effect(22);
}

//Void Sphere
if(global.status_timer_voidsphere >= 0){
	global.status_timer_voidsphere--;
}

if(global.status_timer_voidsphere == 0){
	scr_delete_status_effect(23);
}

//Tablet
if(global.status_timer_tablet >= 0){
	global.status_timer_tablet--;
}

if(global.status_timer_tablet == 0){
	scr_delete_status_effect(24);
}

//Probiotic
if(global.status_timer_probiotic >= 0){
	global.status_timer_probiotic--;
}

if(global.status_timer_probiotic == 0){
	scr_delete_status_effect(25);
}

//Yum yum Pill
if(global.status_timer_yumyumpill >= 0){
	global.status_timer_yumyumpill--;
}

if(global.status_timer_yumyumpill == 0){
	scr_delete_status_effect(26);
}

}



function scr_delete_status_effect(argument0){
	for(var i = 0; i < ds_list_size(global.status_drawinglist); i++){
		if(ds_list_find_value(global.status_drawinglist, i) == argument0){
			ds_list_delete(global.status_drawinglist, i);
			break;
		}
	}	
}