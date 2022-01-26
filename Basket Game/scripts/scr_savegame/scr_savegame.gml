function scr_savegame(){
	ini_open("data.sav");
	ini_write_real("Player Stats", "Farmer Speed", global.player_speedbonus);
	
}

function scr_loadgame(){

}