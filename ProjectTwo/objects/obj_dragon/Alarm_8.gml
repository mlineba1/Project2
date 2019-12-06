/// @description room flip

if(roomFlipped){
	turnRoom(1,0);
	roomFlipped = false;
} else {
	turnRoom(-1, -180);
	roomFlipped = true;
}