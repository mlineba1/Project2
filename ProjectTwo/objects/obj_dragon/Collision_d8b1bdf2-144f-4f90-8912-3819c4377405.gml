/// @description Insert description here
// You can write your code in this editor
hitCount++;
if(hitCount == 5 || hitCount == 11 || hitCount == 17 || hitCount == 23 || hitCount == 28){
	flipper = true;
	hitCount ++;
}
dLife -=4;
instance_destroy(other);
