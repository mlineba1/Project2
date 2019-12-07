/// @description Insert description here
// You can write your code in this editor
score += 250;
if(lives > 5){
	score += 500;
}

win = true;
audio_play_sound(snd_dragonRoar_death,1,false);
room_goto(5);