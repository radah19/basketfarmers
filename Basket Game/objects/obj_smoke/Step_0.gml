if(state == "Smoke"){
	grav += 0.02;
	y -= grav;	
	
	if(y < 0) instance_destroy();
	
	x += lerp(0, offset, 0.5);
	
	if(offset > 0) offset -= 0.085;
	if(offset < 0) offset += 0.085;
}

if(state == "Spawner"){
	grav++;
	
	if(grav mod 3 == 0){
		instance_create_depth(x, y, -50, obj_smoke);
	}
	
	if(grav >= 150){
		instance_destroy();	
	}
}