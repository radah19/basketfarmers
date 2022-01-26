if(state == "Smoke"){
	draw_set_color(c_gray);
	draw_set_alpha(0.35);
	draw_circle(x, y, 14 + jitter, false);
	
	jitter -= 0.05;
	
	if(jitter < -4){
		jitter = 4;	
	}
	
	draw_set_alpha(1);
}

if(state == "Spawner"){
	draw_set_color(c_black);
	draw_set_alpha(0.35);	
	draw_circle(x, y, 3 + jitter, false);
	
	jitter -= 0.05;
	
	if(jitter < -2){
		jitter = 2;	
	}
	
	draw_set_alpha(1);
}