randomize();

global.game_started = false;

min_cooldown = 3;
max_cooldown = 6;
cooldown = 30;
surface_rotation = 0;
surface_xoffset = 0;
surface_yoffset = 0;
surface_xscale = 0;
surface_color = c_white;
selection = 0;
options_toggle = false;
show_debug = false;

// 0 - Unpause, 1 - Pause, 2 - Inventory, 3 - Settings
global.pause = 0;

global.sound_master = 1;
global.sound_sounds = 1;
global.sound_music = 1;
global.toggle_fullscreen = false;

global.shop_pause = false;
global.player_is_ready = false;
global.space_temp_timer = -1;
global.update_shop_items = false;
global.shop_temp_timer = 3;

//Scores
global.farmer_score = 0;
global.farmer_cash = 0;
global.farmer_rent = 100;
global.farmer_max_time = 10 * room_speed;
global.farmer_total_time = 0;
global.farmer_date = -1;

//Stats
global.fruit_gravity = 0;
global.fruit_acceleration = 0;
global.player_speedbonus = 0;
global.star_gravity_bonus = 0;
global.star_float_bonus = 0;
global.star_speed_bonus = 0;
global.star_fury_gravity_bonus = 0;
global.player_spd = 0;
global.player_acc = 0;
global.player_grav = 0;

//Item Spawn List
scr_item_list();
global.list = ds_list_create();
ds_list_clear(global.list);

//Items
scr_shopitem_list();

global.farmer_inventory = ds_list_create();
ds_list_clear(global.farmer_inventory);

global.x_offset = 0;
inventory_surface = surface_create(140, 28);

inventory_current_row = 1; //0 - Back; 1 - List; 2 - Shop Items
inven_x_offset = 0;
inven_y_offset = 0;
inven_node_reader = 0;

fruit_inventory_surface = surface_create(11, 97);
items_inventory_surface = surface_create(11, 157);
items_inventory_surface = surface_create(11, 157);

fruit_inven_y_offset = 0;
items_inven_y_offset = 0;

surface_free(inventory_surface);
surface_free(fruit_inventory_surface);
surface_free(items_inventory_surface);

//Status Effects
global.status_drawinglist = ds_list_create();
ds_list_clear(global.status_drawinglist);

global.status_timer_buffingfruit = -1;
global.status_timer_speedstar = -1;
global.status_timer_floatstar = -1;
global.status_timer_anvilstar = -1;
global.status_timer_starfury = -1;
global.status_timer_rottenbuffingfruit = -1;
global.status_timer_screenwarpmushroom = -1;
global.status_timer_redmushroom = -1;
global.status_timer_darkmushroom = -1;
global.status_timer_confusionmushroom = -1;
global.status_timer_glassmushroom = -1;

//Drawing Popups
global.popup_y_offset = 0;
global.popup_canselect = false;
global.selection_box_x = 0;
global.selection_box_y = 0;

//Tier Lists
global.tierlist_create = false;

	global.tierlist_0 = ds_list_create();
	ds_list_clear(global.tierlist_0);

	global.tierlist_1 = ds_list_create();
	ds_list_clear(global.tierlist_1);

	global.tierlist_2 = ds_list_create();
	ds_list_clear(global.tierlist_2);

	global.tierlist_3 = ds_list_create();
	ds_list_clear(global.tierlist_3);

	global.tierlist_4 = ds_list_create();
	ds_list_clear(global.tierlist_4);

	global.tierlist_n1 = ds_list_create();
	ds_list_clear(global.tierlist_n1);

	global.tierlist_n2 = ds_list_create();
	ds_list_clear(global.tierlist_n2);

	global.tierlist_n3 = ds_list_create();
	ds_list_clear(global.tierlist_n3);

	global.tierlist_n4 = ds_list_create();
	ds_list_clear(global.tierlist_n4);
	
	global.tierlist_5 = ds_list_create();
	ds_list_clear(global.tierlist_5);

scr_maketierlist(-4);
scr_maketierlist(-3);
scr_maketierlist(-2);
scr_maketierlist(-1);
scr_maketierlist(0);
scr_maketierlist(1);
scr_maketierlist(2);
scr_maketierlist(3);
scr_maketierlist(4);
scr_maketierlist(5);


//Pair List Items
global.pair1 = 0;
global.pair1b = 0;
global.pair2 = 0;
global.pair2b = 0;
global.pair3 = 0;
global.pair3b = 0;

//Shop Items
global.shop_item1 = 0;
global.shop_item2 = 0;
global.shop_item3 = 0;

	global.shoptierlist_1 = ds_list_create();
	ds_list_clear(global.shoptierlist_1);
	global.shoptierlist_2 = ds_list_create();
	ds_list_clear(global.shoptierlist_2);
	global.shoptierlist_3 = ds_list_create();
	ds_list_clear(global.shoptierlist_3);
	global.shoptierlist_4 = ds_list_create();
	ds_list_clear(global.shoptierlist_4);
	
scr_makeshoptierlist(1);
scr_makeshoptierlist(2);
scr_makeshoptierlist(3);
scr_makeshoptierlist(4);

//Characters
scr_characterindex();

global.var_ohgodno = false;










