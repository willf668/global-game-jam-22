/// @description Send room
if layer_exists(layer_get_name("Controller")) layer=layer_get_id("Controller");
if (sendNextRoom) {
	sendPacket([netData.newRoom]);
}
sendNextRoom=true;

//Resize Camera
if(!isServer){
	window_set_size(smallWindowSize, smallWindowSize);
	surface_resize(application_surface, smallWindowSize, smallWindowSize);
	view_visible[0] = false;
	view_visible[1] = true;
}

//Reset room time
global.roomTime=0;