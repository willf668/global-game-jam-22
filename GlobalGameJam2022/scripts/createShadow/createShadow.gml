function checkShadow(alpha=0.1,xOff=10,yOff=4){
	if !ds_map_exists(global.shadowMap,object_index){
		var _i=instance_create_depth(0,0,depth,obj_shadowManager);
		_i.obj=object_index;
		_i.image_alpha=alpha;
		_i.xOff=xOff;
		_i.yOff=yOff;
	}
}