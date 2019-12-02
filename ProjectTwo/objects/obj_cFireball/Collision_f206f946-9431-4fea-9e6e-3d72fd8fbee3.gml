/// @description Insert description here
// You can write your code in this editor

if(startFlip && !roomFlipped){
	//player cant die while room is flipping
} else {
if(powerup2){
	pHealth -=1;
	instance_destroy();
} else {
	pHealth -=3;
	instance_destroy();
}
}