
//Move
if(isServer){

	//Move
	x += spd*dir*obj_controller.speedBoost;
	var _bobPer=round(30/(spd)*1.5-obj_controller.speedBoost);
	y+=0.75*sin(((global.roomTime+yStartOffset)%_bobPer)*pi/_bobPer-pi/2)+0.015*spd;
	image_speed = obj_controller.speedBoost;
	
	//Check if we've passed the bound and we're donezo
	if((dir == 1 && x > rightBound) || (dir == -1 && x < leftBound)){
		obj_controller.personExits(id);
		instance_destroy();
	}
	
	//Walking particles
	var _scale=1+(global.roomTime%18==0);
	particle(x-dir*(2+irandom(2)),y-irandom(2)+110,depth+1,sPartDust,0,{spd:4,dir:90+90*dir-dir*irandom_range(0,50),alpha:1.5,fade:0.15,xscale: _scale,yscale: _scale});
}else{
	smoke_image_index+=0.5*obj_controller.speedBoost;
	smoke_image_index%=200;
}

